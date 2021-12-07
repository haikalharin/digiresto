import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:digiresto/domain/entity/map/param/get_geocode_param.dart';
import 'package:injectable/injectable.dart';

import 'map_api.dart';

@injectable
class MapRepository {
  final MapApi _mapApi;

  MapRepository(this._mapApi);
  Future<Either<Exception, Geocode>> geocode(GetGeoCodeParam? param) async {
    return await _mapApi.geocode(param).then((value) {
      return value;
    }).catchError((error) => throw error);
  }
}
