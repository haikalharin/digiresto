import 'dart:convert';

import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:boilerplate/models/order/detail_outlet_model.dart';
import 'package:boilerplate/models/order/hot_promo_model.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/models/order/promo_outlet_model.dart';
import 'package:boilerplate/models/order/static_banner_model.dart';
import 'package:boilerplate/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

part 'order_store.g.dart';

class OrderStore = _OrderStore with _$OrderStore;

abstract class _OrderStore with Store {
  // repository instance
  Repository _repository;

  // store for handling errors
  final ErrorStore errorStore = ErrorStore();

  // constructor:---------------------------------------------------------------
  //_OrderStore(Repository repository) : this._repository = repository;
  _OrderStore(Repository repository) : this._repository = repository {

    // setting up disposers
    _setupDisposers();


    _repository.orderOutletName.then((value) => {
      this.orderOutletName = value!= "" ? value : ""}
    );

    _repository.orderSalesTypes.then((value) => {
      this.orderSalesTypes = value!= "" ? value : ""}
    );

    _repository.orderSalesTypesCode.then((value) => {
      this.orderSalesTypesCode = value!= "" ? value : ""}
    );

    _repository.orderOutletDetailName.then((value) => {
      this.orderOutletDetailName = value!= "" ? value : ""}
    );

    _repository.orderMerchantName.then((value) => {
      this.orderMerchantName = value!= "" ? value : ""}
    );


    _repository.orderProduct.then((value) => {
      this.orderProduct = value!= null ? jsonDecode(value) : ""}
    );
  }

  // disposers:-----------------------------------------------------------------
  List<ReactionDisposer> _disposers;

  void _setupDisposers() {
    _disposers = [
      reaction((_) => success, (_) => success = false, delay: 200),
    ];
  }
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

  @observable
  DetailOutlet detailOutlet;

  @action
  Future<DetailOutlet>  getDetailOutlet(Map<String,dynamic> object) async {
    return await _repository.getDetailOutlet(object).then((res) {
      this.detailOutlet = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @observable
  String orderOutletName;
  String orderOutletDetailName;
  String orderSalesTypes;
  String orderSalesTypesCode;
  String orderMerchantName;
  List<dynamic> orderProduct=[];

  @action
  void setOrderParameter(Map<String,dynamic> object){

    //sales type mapping
    if (object["orderSalesTypes"]=="dineIn") {
      this.orderSalesTypesCode="DI";
    }else if(object["orderSalesTypes"]=="takeAway"){
      this.orderSalesTypesCode="TA";
    }else if (orderSalesTypesCode=="GoFood"){
      this.orderSalesTypesCode="GoF";
    }else if (orderSalesTypesCode=="GrabFood"){
      this.orderSalesTypesCode="GrF";
    }else if (orderSalesTypesCode=="onlineDriver"){
      this.orderSalesTypesCode="OD";
    }else if (orderSalesTypesCode=="driveThru"){
      this.orderSalesTypesCode="DT";
    }
    _repository.saveOrderOutletName({
        "orderOutletName": object["orderOutletName"],
        "orderSalesTypes": object["orderSalesTypes"],
        "orderSalesTypesCode":this.orderSalesTypesCode,
        "orderMerchantName": object["orderMerchantName"],
        "orderOutletDetailName": object["orderOutletDetailName"],
    }).then((res) {
      this.orderOutletName = object["orderOutletName"];
      this.orderSalesTypes = object["orderSalesTypes"];
      this.orderMerchantName= object["orderMerchantName"];
      this.orderOutletDetailName=object["orderOutletDetailName"];
    }).catchError((err) {
      print("error: "+ err);
    });


    if (object["orderOutletName"]!=this.orderOutletName){
      this.orderProduct=[];
    }

    //save to local storage

  }

  @action
  void setProduct(int productId,int qty,int price,Map<String,dynamic> detailProduct){
    this.orderProduct.removeWhere((item) => item["id"] == productId);
    if (qty>0) {
      this.orderProduct.add(
          {"id": productId, "qty": qty, "price": price, "total": qty * price,"detail":detailProduct});
    }
    _repository.saveOrderProduct(jsonEncode(this.orderProduct));
    this.orderProduct.sort((a, b) => a["id"].compareTo(b["id"]));
  }

  @action
  void removeProduct(int productId){
    this.orderProduct.removeWhere((item) => item["id"] == productId);
  }

}
