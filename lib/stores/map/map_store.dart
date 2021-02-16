import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:boilerplate/stores/error/error_store.dart';
import 'package:boilerplate/utils/dio/dio_error_util.dart';
import 'package:mobx/mobx.dart';

part 'map_store.g.dart';

class MapStore = _MapStore with _$MapStore;

abstract class _MapStore with Store {
  // repository instance
  Repository _repository;

  // store for handling errors
  final ErrorStore errorStore = ErrorStore();

  // constructor:---------------------------------------------------------------
  _MapStore(Repository repository) : this._repository = repository;

  // store variables:-----------------------------------------------------------
  static ObservableFuture<Geocode> emptyGeocodeResponse =
  ObservableFuture.value(null);

  @observable
  ObservableFuture<Geocode> fetchGeocodeFuture =
  ObservableFuture<Geocode>(emptyGeocodeResponse);

  @observable
  Geocode geocode;

  @observable
  bool success = false;

  @computed
  bool get loading => fetchGeocodeFuture.status == FutureStatus.pending;

  // actions:-------------------------------------------------------------------
  @action
  Future<Geocode> getGeocode(String token,Map<String,dynamic> object) async {
    final future = _repository.geocode(token, object);
    fetchGeocodeFuture = ObservableFuture(future);

    return future.then((geocode) {
      return geocode;
    }).catchError((error) {
      errorStore.errorMessage = DioErrorUtil.handleError(error);
    });
  }
}
