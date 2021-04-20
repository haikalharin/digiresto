import 'dart:convert';

import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:boilerplate/models/order/detail_outlet_model.dart';
import 'package:boilerplate/models/order/hot_promo_model.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/models/order/payment_method.dart';
import 'package:boilerplate/models/order/cart_session_model.dart';
import 'package:boilerplate/models/order/checkout_response.dart';
import 'package:boilerplate/models/order/promo_outlet_model.dart';
import 'package:boilerplate/models/order/static_banner_model.dart';
import 'package:boilerplate/models/user/user_profile_model.dart';
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

    this.calculatePrice();
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
      print("error response: "+ err.toString());
      return throw err;
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
      print("error response: "+ err.toString());
      return throw err;
    });
  }

  @observable
  List<HotPromo> listHotPromo;

  @action
  Future<List<HotPromo>>  getHotPromo(Map<String,dynamic> object) async {
    return await _repository.getHotPromo(object).then((res) {
      if (object["page"].toString()=="1") {
        this.listHotPromo = res;
      }
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      return throw err;
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
      print("error response: "+ err.toString());
      return throw err;
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
      print("error response: "+ err.toString());
      return throw err;
    });
  }

  @observable String sessionId;
  @observable String orderOutletName;
  @observable String orderOutletDetailName;
  @observable String orderSalesTypes;
  @observable String orderSalesTypesCode;
  @observable String orderMerchantName;
  @observable UserProfile userProfile;
  @observable List<dynamic> orderProduct=[];
  @observable int orderPriceTotal;
  @observable List<PaymentMethod> paymentMethod = [];
  @observable String orderPaymentType;
  @observable String orderPaymentTypeText;
  @observable Map<String, dynamic> delivery;
  @observable Map<String, dynamic> transactionData;

  @observable CartSession countedTransaction;

  @action
  void setOrderParameter(Map<String,dynamic> object){
    print('DEBUG >> $object');

    this.userProfile = object['userProfile'];

    final Map salesTypeCodeMapping = {
      'onlineDriver': 'GoF',
      'dineIn': 'DI',
      'takeAway': 'TA',
      'driveThru': 'TA',
    };

    if (salesTypeCodeMapping.containsKey(object["orderSalesTypes"])) {
      this.orderSalesTypesCode = salesTypeCodeMapping[object["orderSalesTypes"]];
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
      print(err);
      return throw err;
    });


    if (object["orderOutletName"]!=this.orderOutletName){
      this.orderProduct=[];
    }

    //save to local storage

    this.createCartSession();
    print('DEBUG >> transactionData ${this.transactionData}');
  }

  @action
  void setPaymentMethod(PaymentMethod method) {
    this.orderPaymentType = method.id;
    this.orderPaymentTypeText = method.title.replaceAll('%1\$s', Strings.appName);
    updateTransactionData();
    print('DEBUG >> payment id ${method.id}');
    print('DEBUG >> transactionData ${this.transactionData}');
    this.updateCartSession();
  }

  void calculatePrice(){
    this.orderPriceTotal = 0;
    for (int i = 0; this.orderProduct.length > i; i++){
      orderPriceTotal+=this.orderProduct[i]["total"];
    }
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
    calculatePrice();

    this.updateCartSession();
    print('DEBUG >> transactionData ${this.transactionData}');
  }

  @action
  void removeProduct(int productId){
    this.orderProduct.removeWhere((item) => item["id"] == productId);
    this.updateCartSession();
  }

  @action
  Future<List<PaymentMethod>> getPaymentMethod() async {
    return await _repository.getPaymentMethod({
      'outlet': this.detailOutlet.outlet['name'],
      'salesType': this.orderSalesTypes,
    }).then((value) {
      this.paymentMethod = value;
      return value;
    }).catchError((err) {
      print("error response: "+ err.toString());
    });
  }

  @action
  Future<CartSession> createCartSession() async {
    this.updateTransactionData();

    return await _repository.createCartSession(this.transactionData).then((value) {
      this.countedTransaction = value['transactionData'];
      this.sessionId = value['sessionId'];
      print('DEBUG >> sessionId on createCartSession ${this.sessionId}');
      print('DEBUG >> countedTransaction on createCartSession ${this.countedTransaction}');
      return value['transactionData'];
    }).catchError((err) {
      print("error response: "+ err.toString());
    });
  }

  @action
  Future<CartSession> updateCartSession() async {
    this.updateTransactionData();

    return await _repository.updateCartSession(this.transactionData, this.sessionId).then((value) {
      this.countedTransaction = value['transactionData'];
      this.sessionId = value['sessionId'];
      print('DEBUG >> sessionId on createCartSession ${this.sessionId}');
      print('DEBUG >> countedTransaction on createCartSession ${this.countedTransaction}');
      return value['transactionData'];
    }).catchError((err) {
      print("error response: "+ err.toString());
    });
  }

  @action
  Future<CheckoutResponse> checkout() async {
    return await _repository.checkout(this.sessionId).then((value) {
      print('DEBUG >> checkoutrespons on checkout ${value}');
      return value;
    }).catchError((err) {
      print("error response: "+ err.toString());
    });
  }

  // store getters:-------------------------------------------------------------
  @computed
  List<dynamic> get transactionItems {
    return List<dynamic>.from(this.orderProduct.map((item) {
      return {
        'productId': item['id'],
        'modifiers': [],
        'note': '',
        'qty': item['qty'],
      };
    }));
  }

  @action
  Map<String, dynamic> updateTransactionData() {
    this.transactionData = {
      'outletName': this.orderOutletName,
      'customerName': this.userProfile.name,
      'customerPhone': this.userProfile.mobilePhone,
      'customerCarColor': '',
      'customerCarNumber': '',
      'customerCarType': '',
      'customerSmoking': false,
      'customerNote': '',
      'customerPax': 1,
      'eta': 'now',
      'salesType': this.orderSalesTypes,
      'salesTypeCode': this.orderSalesTypesCode,
      'items': this.transactionItems,
      'paymentType': this.orderPaymentType,
      'promos': [],
      'delivery': this.delivery,
    };
  }
}
