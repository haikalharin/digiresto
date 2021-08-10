import 'package:digiresto/domain/entity/map/geocode.dart';
import 'package:injectable/injectable.dart';

import 'map_api.dart';

@injectable
class MapRepository {
  final MapApi _mapApi;

  MapRepository(this._mapApi);
  Future<Geocode> geocode(Map<String, dynamic> object) async {
    return await _mapApi.geocode(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }
}
