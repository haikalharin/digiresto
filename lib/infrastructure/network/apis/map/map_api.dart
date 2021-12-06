import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/exceptions/location_exception.dart';
import 'package:digiresto/domain/core/interfaces/i_location_service.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:digiresto/domain/entity/map/param/get_geocode_param.dart';
import 'package:digiresto/presentation/core/widgets/base_dialog_error.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';

@Injectable()
class MapApi {
  final INetworkService _networkService;
  final ILocationService _locationService;
  final Logger logger;

  MapApi(
    this._networkService,
    this._locationService,
    this.logger,
  );

  Future<Either<Exception, Geocode>> geocode(GetGeoCodeParam? param) async {
    try {
      final apiUrl = Endpoints.urlForward;
      final queryParameter = Endpoints.urlGetGeocode;
      late String latitude;
      late String longitude;
      if (param == null) {
        final _currentLocation = await _locationService.determinePosition();
        latitude = _currentLocation.latitude.toString();
        longitude = _currentLocation.longitude.toString();
      } else {
        latitude = param.latitude;
        longitude = param.longitude;
      }

      final apiResult = await _networkService.postHttp(
        path: apiUrl,
        content: {
          "query_string": {
            "lat": latitude,
            "lng": longitude,
          },
          "body": {}
        },
        queryParameter: queryParameter,
      );
      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      userData["latitude"] = latitude;
      userData["longitude"] = longitude;
      return right(Geocode.createGeocode(userData));
    } on LocationPermissionDenied catch (e) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(e);
    } on LocationServiceDisabled catch (e) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(e);
    } on LocationPermissionDeniedForever catch (e) {
      ErrorDialog().showLocationError(onClose: askPermission);
      return left(e);
    } on FailureException catch (e) {
      ErrorDialog().showError(error: e.message!);
      return left(e);
    } on AuthException catch (e) {
      ErrorDialog().showAuthError();
      return left(e);
    } on ServerException catch (e) {
      ErrorDialog().showServerError();
      return left(e);
    } on TimeOutException catch (e) {
      ErrorDialog().showServerError();
      return left(e);
    } on NoInternetException catch (e) {
      ErrorDialog().showNoInternetError();
      return left(e);
    } catch (e, stactrace) {
      logger.d(stactrace);
      return left(NetworkException());
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
