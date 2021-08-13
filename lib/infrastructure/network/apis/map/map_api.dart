import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/i_network_service.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:injectable/injectable.dart';

@injectable
class MapApi {
  // dio instance
  final INetworkService _dioClient;
  MapApi(
    this._dioClient,
  );

  // injecting dio instance
  //MapApi(this._dioClient);
  @factoryMethod
  MapApi.from(this._dioClient);

  Future<Either<Exception, Geocode>> geocode(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetGeocode;
      final apiResult = await _dioClient.postHttp(path: apiUrl, content: {
        "query_string": {
          "lat": object["latitude"].toString(),
          "lng": object["longitude"].toString(),
        },
        "body": {}
      });
      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      userData["latitude"] = object["latitude"].toString();
      userData["longitude"] = object["longitude"].toString();
      return right(Geocode.createGeocode(userData));
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }
}
