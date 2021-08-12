import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:digiresto/infrastructure/network/dio_client.dart';
import 'package:digiresto/infrastructure/network/rest_client.dart';
import 'package:injectable/injectable.dart';

@injectable
class MapApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  MapApi(this._dioClient, this._restClient);

  Future<Either<Exception, Geocode>> geocode(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetGeocode;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {
          "lat": object["latitude"].toString(),
          "lng": object["longitude"].toString(),
        },
        "body": {}
      });
      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      return right(Geocode.createGeocode(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }
}
