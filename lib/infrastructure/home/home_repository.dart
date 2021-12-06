import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/constants/network/env.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/exceptions/location_exception.dart';
import 'package:digiresto/domain/core/interfaces/i_location_service.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/home/entity/static_banner.dart';
import 'package:digiresto/domain/home/home_failure.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/home/i_home_repository.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  final INetworkService _networkService;
  final Logger logger;
  final IStorage _storage;
  final ILocationService _locationService;
  final Env _env;

  HomeRepository(
    this.logger,
    this._networkService,
    this._storage,
    this._locationService,
    this._env,
  );
  @override
  Future<Either<HomeFailure, IList<MenuCategory>>> getMenuCategory() async {
    try {
      final apiUrl = Endpoints.urlMenuCategory;
      final apiResult = await _networkService.getHttp(
        useAuth: true,
        path: apiUrl,
      );

      final listUserData = List.from(
          (apiResult as Map<String, dynamic>)['data']['menuCategory']);

      final listMenuCategory =
          listUserData.map((e) => MenuCategory.fromJson(e)).toIList();
      return right(listMenuCategory);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(HomeFailure.generalError(e.message));
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(HomeFailure.sessionExpired());
    } on ServerException catch (_) {
      ErrorDialog().showServerError();
      return left(HomeFailure.serverError());
    } on TimeOutException catch (_) {
      ErrorDialog().showServerError();
      return left(HomeFailure.unableToUpdate());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(HomeFailure.noInternet());
    } catch (e, stactrace) {
      logger.d(stactrace);
      return left(HomeFailure.unexpected());
    }
  }

  @override
  Future<Either<HomeFailure, IList<StaticBanner>>> getStaticBanner() async {
    try {
      final apiUrl = Endpoints.urlForward;
      final queryParameter = Endpoints.urlGetStaticBanner;
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        queryParameter: queryParameter,
        useAuth: false,
        content: {
          "query_string": {},
          "body": {},
        },
      );

      final listUserData =
          List.from((apiResult as Map<String, dynamic>)['data']);

      final listStaticBanner =
          listUserData.map((e) => StaticBanner.fromJson(e)).toIList();
      return right(listStaticBanner);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(HomeFailure.generalError(e.message));
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(HomeFailure.sessionExpired());
    } on ServerException catch (_) {
      ErrorDialog().showServerError();
      return left(HomeFailure.serverError());
    } on TimeOutException catch (_) {
      ErrorDialog().showServerError();
      return left(HomeFailure.unableToUpdate());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(HomeFailure.noInternet());
    } catch (e, stactrace) {
      logger.d(stactrace);
      return left(HomeFailure.unexpected());
    }
  }

  @override
  Future<Either<HomeFailure, UserAddress>> getUserAddress() async {
    try {
      final _box = await _storage.openBox(StorageConstants.address);
      final data = await _storage.getJson(_box, key: "address");
      await _storage.close(_box);

      if (data == null || data.isEmpty) {
        final _boxUser = await _storage.openBox(StorageConstants.user);
        final _userInStorage = await _storage.getData(
          _boxUser,
        );
        final _userAuth = UserAuth.fromJson(_userInStorage);
        await _storage.close(_boxUser);

        String apiUrl = Endpoints.urlForward;
        final queryParameters = Endpoints.urlGetAllAddress;
        final apiResult = await _networkService.postHttp(
          path: apiUrl,
          content: {
            "query_string": {},
            "body": {"wa_id": _userAuth.mobilePhone},
          },
          queryParameter: queryParameters,
        );

        List<dynamic> listUserData = (apiResult as Map<String, dynamic>)[
            'data']; //mengambil data data didalam jsonObject
        List<UserAddress> address = [];
        for (int i = 0; i < listUserData.length; i++) {
          address.add(UserAddress.createAddress(listUserData[i]));
        }

        if (address.any((element) => element.isDefault ?? false)) {
          return right(
              address.firstWhere((element) => element.isDefault ?? false));
        } else {
          final _currentLocation = await _locationService.determinePosition();
          final apiUrl = Endpoints.urlForward;
          final queryParameter = Endpoints.urlGetGeocode;
          final apiResult = await _networkService.postHttp(
            path: apiUrl,
            content: {
              "query_string": {
                "lat": _currentLocation.latitude.toString(),
                "lng": _currentLocation.longitude.toString(),
              },
              "body": {}
            },
            queryParameter: queryParameter,
          );
          final formattedAddress = (apiResult as Map<String, dynamic>)['data']
              ['formatted_address'] as String;
          final userAddress = UserAddress(
            address: formattedAddress,
            latitude: _currentLocation.latitude.toString(),
            longitude: _currentLocation.longitude.toString(),
          );
          final _box = await _storage.openBox(StorageConstants.address);
          print("Create Active Address");
          await _storage.setJson(_box,
              key: "address", object: userAddress.toJson());
          await _storage.close(_box);
          return right(userAddress);
        }
      }
      final model = UserAddress.fromJson(data);
      print('object');
      return right(model);
    } on LocationPermissionDenied catch (_) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(HomeFailure.locationError());
    } on LocationServiceDisabled catch (_) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(HomeFailure.locationError());
    } on LocationPermissionDeniedForever catch (_) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(HomeFailure.locationError());
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(HomeFailure.generalError(e.message));
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(HomeFailure.sessionExpired());
    } on ServerException catch (_) {
      ErrorDialog().showServerError();
      return left(HomeFailure.serverError());
    } on TimeOutException catch (_) {
      ErrorDialog().showServerError();
      return left(HomeFailure.unableToUpdate());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(HomeFailure.noInternet());
    } catch (e, stactrace) {
      logger.d(stactrace);
      return left(HomeFailure.unexpected());
    }
  }

  @override
  Future<Either<HomeFailure, IList<OutletCategoryDataResponse>>> getOutlets({
    required MenuCategory menuCategory,
    required int page,
    required String location,
    String? search,
  }) async {
    try {
      final userAddress = await getUserAddress();
      userAddress.getOrElse(() => UserAddress());
      final apiUrl = Endpoints.urlForward;
      final endpoint = '/${menuCategory.endpoint}';
      final baseUrl = await _env.getBaseUrl;
      final fullUrl = '$baseUrl$endpoint';
      final queryParameter = Uri.parse(fullUrl).queryParameters;
      // final apiUrl = Endpoints.urlForward;
      // final queryParameter =
      //     Uri.splitQueryString(Uri.decodeQueryComponent());
      // logger.d(queryParameter);
      final queryString = {
        "page": page.toString(),
        "filter": search ?? "",
        "location": location,
        "excludeMerchantIds": [],
        "isHideOpen": false,
        ...menuCategory.param
      };
      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        queryParameter: queryParameter,
        content: {
          "query_string": queryString,
          "body": {},
        },
      );
      return right(OutletCategoryResponse.fromJson(apiResult).data.toIList());
    } on LocationPermissionDenied catch (_) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(HomeFailure.locationError());
    } on LocationServiceDisabled catch (_) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(HomeFailure.locationError());
    } on LocationPermissionDeniedForever catch (_) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(HomeFailure.locationError());
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(HomeFailure.generalError(e.message));
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(HomeFailure.sessionExpired());
    } on ServerException catch (_) {
      ErrorDialog().showServerError();
      return left(HomeFailure.serverError());
    } on TimeOutException catch (_) {
      ErrorDialog().showServerError();
      return left(HomeFailure.unableToUpdate());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(HomeFailure.noInternet());
    } catch (e, stactrace) {
      logger.d(stactrace);
      return left(HomeFailure.unexpected());
    }
  }

  void askPermission() async {
    if (await Permission.location.isPermanentlyDenied) {
      openAppSettings();
    } else {
      Permission.location.request();
    }
  }
}
