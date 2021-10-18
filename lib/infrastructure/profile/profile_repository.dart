import 'package:dartz/dartz.dart' hide IList;
import 'package:digiresto/domain/auth/auth_failure.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/auth/value_objects.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/profile/i_profile_repository.dart';
import 'package:digiresto/domain/profile/order_history.dart';
import 'package:digiresto/domain/profile/order_history_details.dart';
import 'package:digiresto/domain/profile/user_profile.dart';
import 'package:digiresto/domain/profile/profile_failure.dart';
import 'package:digiresto/domain/profile/order_pending.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final IStorage _storage;
  final INetworkService _networkService;
  final Logger logger;
  const ProfileRepository(this._networkService, this._storage, this.logger)
      : super();
  @override
  Future<Either<AuthFailure, UserProfile>> getProfile() async {
    try {
      final apiResult = await _networkService.getHttp(
        path: Endpoints.urlProfile,
        useAuth: true,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final userData = Map<String, dynamic>.from(data);
      logger.d(data);
      return right(UserProfile.fromJson(userData));
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(AuthFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(AuthFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(AuthFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(AuthFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(AuthFailure.unknownError());
    }
  }

  @override
  Future<Either<ProfileFailure, IList<OrderHistory>>> getOrderOnProcess({
    required int page,
  }) async {
    final _apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlGetTransactionHistory;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "outletName": "",
            "page": page,
            "limit": 10,
            "status": "waiting,process,ready,delivered",
          },
          "body": {}
        },
        queryParameter: queryParameter,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final list = List.from(data);
      if (list.isEmpty) {
        logger.d('kosong boss');
        return left(ProfileFailure.noData());
      }
      final orderPendingList = list
          .map((item) => OrderHistory.fromJson(Map<String, dynamic>.from(item)))
          .toIList();
      return right(orderPendingList);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d(stactrace);
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, int>> getOrderOnProcessCount() async {
    final _apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlGetOrderProcessCount;
    try {
      await _storage.openBox(StorageConstants.user);

      final _userInStorage = await _storage.getData();
      await _storage.close();

      final user = UserAuth.fromJson(_userInStorage);
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "outletName": "",
            "customerPhone": user.mobilePhone,
            "status": "waiting,process,ready,delivered"
          },
          "body": {}
        },
        queryParameter: queryParameter,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'] as int;

      return right(data);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d(stactrace);
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, IList<OrderPending>>> getOrderPending() async {
    final _apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlGetTransactionPending;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {"outletName": ""},
          "body": {}
        },
        queryParameter: queryParameter,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final list = List.from(data);
      if (list.isEmpty) {
        logger.d('kosong boss');
        return left(ProfileFailure.noData());
      }
      final orderPendingList = list
          .map((item) => OrderPending.fromJson(Map<String, dynamic>.from(item)))
          .toIList();
      return right(orderPendingList);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> editProfile({
    required FullName fullName,
    required EmailAddress emailAddress,
  }) async {
    final _apiUrl = Endpoints.urlUpdateProfile;
    final _fullName = fullName.getOrCrash();
    final _emailAddress = emailAddress.getOrCrash();
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "name": _fullName,
          "email": _emailAddress,
        },
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['response']['code'];
      if (data as String != '00') {
        return left(ProfileFailure.unableToUpdate());
      }
      return right(unit);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, IList<OrderHistory>>> getOrderCompleted({
    required int page,
  }) async {
    final _apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlGetTransactionHistory;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "outletName": "",
            "page": page,
            "limit": 10,
            "status":
                "cancelled,reject,auto_reject,done,auto_done,failed,refund"
          },
          "body": {}
        },
        queryParameter: queryParameter,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final list = List.from(data);
      if (list.isEmpty) {
        logger.d('kosong boss');
        return left(ProfileFailure.noData());
      }
      final orderPendingList = list
          .map((item) => OrderHistory.fromJson(Map<String, dynamic>.from(item)))
          .toIList();
      return right(orderPendingList);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, OrderHistoryDetails>> getOrderHistoryDetails({
    required String receiptCode,
  }) async {
    final _apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlGetTransaction;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "receiptCode": receiptCode,
          },
          "body": {}
        },
        queryParameter: queryParameter,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'];
      final orderHistoryDetails =
          OrderHistoryDetails.fromJson(Map<String, dynamic>.from(data));
      return right(orderHistoryDetails);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, IList<String>>> getCancelReasons(
      String lang) async {
    try {
      final apiResult = await _networkService.getHttp(
        path: Endpoints.urlGetCancelReasons + lang,
        useAuth: true,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data']['cancelReason'];
      final list = List<String>.from(data).toIList();
      return right(list);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> cancelTransaction(
      {required String receiptCode, required String reason}) async {
    final _apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlCancelTransaction;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "receiptCode": receiptCode,
          },
          "body": {
            "reason": reason,
          }
        },
        queryParameter: queryParameter,
      );
      logger.d(apiResult);
      final data =
          (apiResult as Map<String, dynamic>)['response']['code'] as String;
      if (data != '00') {
        return left(ProfileFailure.serverError());
      }
      return right(unit);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> postRating({
    required String receiptCode,
    required int rating,
    required String review,
  }) async {
    final _apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlTransactionRating;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "receiptCode": receiptCode,
          },
          "body": {
            "rating": rating,
            "review": review,
          }
        },
        queryParameter: queryParameter,
      );
      logger.d(apiResult);
      final data =
          (apiResult as Map<String, dynamic>)['response']['code'] as String;
      if (data != '00') {
        return left(ProfileFailure.serverError());
      }
      return right(unit);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }

  @override
  Future<Either<ProfileFailure, Unit>> doneTransaction(
      {required String receiptCode}) async {
    final _apiUrl = Endpoints.urlForward;
    final queryParameter = Endpoints.urlAcceptTransaction;
    try {
      final apiResult = await _networkService.postHttp(
        path: _apiUrl,
        useAuth: true,
        content: {
          "query_string": {
            "receiptCode": receiptCode,
          },
          "body": {}
        },
        queryParameter: queryParameter,
      );
      logger.d(apiResult);
      final data = (apiResult as Map<String, dynamic>)['data'] as Map;
      if (data.isEmpty) {
        return left(ProfileFailure.noData());
      }
      return right(unit);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(ProfileFailure.generalError());
    } on AuthException catch (_) {
      ErrorDialog().showAuthError();
      return left(ProfileFailure.sessionExpired());
    } on ServerException catch (_) {
      return left(ProfileFailure.serverError());
    } on NoInternetException catch (_) {
      ErrorDialog().showNoInternetError();
      return left(ProfileFailure.noInternet());
    } catch (e, stactrace) {
      logger.d('coba ' + stactrace.toString());
      return left(ProfileFailure.unexpected());
    }
  }
}
