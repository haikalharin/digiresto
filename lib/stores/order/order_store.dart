import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:boilerplate/models/order/hot_promo_model.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/models/order/promo_outlet_model.dart';
import 'package:boilerplate/models/order/static_banner_model.dart';
import 'package:boilerplate/stores/error/error_store.dart';
import 'package:boilerplate/utils/dio/dio_error_util.dart';
import 'package:mobx/mobx.dart';

part 'order_store.g.dart';

class OrderStore = _OrderStore with _$OrderStore;

abstract class _OrderStore with Store {
  // repository instance
  Repository _repository;

  // store for handling errors
  final ErrorStore errorStore = ErrorStore();

  // constructor:---------------------------------------------------------------
  _OrderStore(Repository repository) : this._repository = repository;

  // store variables:-----------------------------------------------------------
  static ObservableFuture<Geocode> emptyOutletByLocationResponse =
  ObservableFuture.value(null);

  @observable
  ObservableFuture<Geocode> fetchOutletByLocationFuture =
  ObservableFuture<Geocode>(emptyOutletByLocationResponse);

  @observable
  OutletList outletList;

  @observable
  bool success = false;

  @computed
  bool get loading => fetchOutletByLocationFuture.status == FutureStatus.pending;

  // actions:-------------------------------------------------------------------
  @observable
  List<OutletList> listOutletByLocation;

  @action
  Future<List<OutletList>>  getOutletByLocation(Map<String,dynamic> object) async {
    return await _repository.getOutletByLocation(object).then((res) {
      this.listOutletByLocation = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @observable
  List<PromoOutlet> listPromoOutlet;

  @action
  Future<List<PromoOutlet>>  getPromoOutlet(Map<String,dynamic> object) async {
    return await _repository.getPromoOutlet(object).then((res) {
      this.listPromoOutlet = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @observable
  List<HotPromo> listHotPromo;

  @action
  Future<List<HotPromo>>  getHotPromo(Map<String,dynamic> object) async {
    return await _repository.getHotPromo(object).then((res) {
      this.listHotPromo = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @observable
  List<StaticBanner> listStaticBanner;

  @action
  Future<List<StaticBanner>>  getStaticBanner(Map<String,dynamic> object) async {
    return await _repository.getStaticBanner(object).then((res) {
      this.listStaticBanner = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }
}
