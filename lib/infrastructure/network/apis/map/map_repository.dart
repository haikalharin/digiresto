import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:injectable/injectable.dart';

import 'map_api.dart';

@injectable
class MapRepository {
  final MapApi _mapApi;

  MapRepository(this._mapApi);
  Future<Either<Exception, Geocode>> geocode() async {
    return await _mapApi.geocode().then((value) {
      return value;
    }).catchError((error) => throw error);
  }
}
