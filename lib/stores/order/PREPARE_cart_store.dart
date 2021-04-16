import 'dart:convert';

import 'package:boilerplate/data/repository.dart';
import 'package:boilerplate/models/order/cart_session_model.dart';
import 'package:boilerplate/models/order/checkout_response.dart';
import 'package:boilerplate/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

part 'PREPARE_cart_store.g.dart';

class CartStore = _CartStore with _$CartStore;

abstract class _CartStore with Store {
  // repository instance
  Repository _repository;

  // store for handling errors
  final ErrorStore errorStore = ErrorStore();

  // constructor:---------------------------------------------------------------
  _CartStore(Repository repository) : this._repository = repository {
    // setting up disposers
    _setupDisposers();

    // init store data from shared pref
    // _repository.orderOutletName.then((value) => {
    //   this.orderOutletName = value!= "" ? value : ""}
    // );
  }

  // disposers:-----------------------------------------------------------------
  List<ReactionDisposer> _disposers;
  void _setupDisposers() {
    _disposers = [
      reaction((_) => success, (_) => success = false, delay: 200),
    ];
  }

  // store variables:-----------------------------------------------------------
  @observable
  bool success;

  String outletName;
  String customerName;
  String customerPhone;

  String customerCarColor;
  String customerCarNumber;
  String customerCarType;
  bool customerSmoking;

  String customerNote;
  String customerPax;
  String eta;

  String salesType;
  String salesTypeCode;

  List<dynamic> items = [];

  String paymentType;

  List<dynamic> promos;
  List<dynamic> promosDetail;

  Map<String, dynamic> delivery;

  String sessionId;
  CartSession countedTransaction;

  // actions:-------------------------------------------------------------------
  @action
  void setOrderParam(Map<String, dynamic> param) {
    this.clearCart();

    this.outletName = param['outletName'];
    this.salesType = param['salesType'];

    final Map salesTypeCodeMapping = {
      'onlineDriver': 'GoF',
      'dineIn': 'DI',
      'takeAway': 'TA',
      'driveThru': 'TA',
    };

    if (salesTypeCodeMapping.containsKey(salesType)) {
      this.salesTypeCode = salesTypeCodeMapping[this.salesType];
    }
    this.syncCartSession();
  }

  @action
  void addProduct(int productId, List<dynamic> modifiers, String note, int qty, Map<String, dynamic> details) {
    final onCartIndex = this.items.indexWhere((item) {
      final isSameProductId = item['productId'] == productId;
      final isSameNote = item['note'] == note;
      final isModifierLengthSame = item['modifiers'].length == modifiers.length;
      final isModifierSame = modifiers.every((item) {
        return item['modifiers'].where((x) {
          return (x['modifierId'] == item['modifierId']) && (x['qty'] == item['qty']);
        }).isNotEmpty;
      });
      return isSameProductId && isSameNote && isModifierLengthSame && isModifierSame;
    });

    // print('DEBUG >> itemsLength: ${this.items.length}');
    // print('DEBUG >> onCartIndex: $onCartIndex');

    if (onCartIndex >= 0) {
      // product grouping is exist in cart
      this.items[onCartIndex]['qty'] += qty;
    } else {
      // product is not exist in cart
      this.items.add({
        'productId': productId,
        'modifiers': modifiers,
        'note': note,
        'qty': qty,
        'detail': details,
      });
      this.items.sort((a, b) => a['productId'].compareTo(b['productId']));
    }
    print('DEBUG >> items ${this.items}');
    print('DEBUG >> transaction data ${this.transactionData}');
    this.syncCartSession();
  }

  @action
  void incrementProductQty(int index) {
    this.items[index].qty += 1;
    this.syncCartSession();
  }

  @action
  void decrementProductQty(int index) {
    this.items[index].qty -= 1;
    this.syncCartSession();
  }

  @action
  void removeProduct(int index) {
    this.items.removeAt(index);
    this.syncCartSession();
  }

  @action
  void setPaymentMethod(String paymentType) {
    this.paymentType = paymentType;
    this.syncCartSession();
  }

  @action
  void setVoucherCode(String voucherCode) {
    if (!this.promos.contains(voucherCode)) {
      this.promos.add(voucherCode);
    }
    this.syncCartSession();
  }

  @action
  void clearCart() {
    this.outletName = null;
    this.customerName = null;
    this.customerPhone = null;
    this.customerCarColor = null;
    this.customerCarNumber = null;
    this.customerCarType = null;
    this.customerSmoking = null;
    this.customerNote = null;
    this.customerPax = null;
    this.eta = null;
    this.salesType = null;
    this.salesTypeCode = null;
    this.items = [];
    this.paymentType = null;
    this.promos = null;
    this.promosDetail = null;
    this.delivery = null;
  }

  @action
  Future<CartSession> syncCartSession() async {
    if (this.sessionId != null && this.sessionId.isNotEmpty) {
      return await this.updateCartSession();
    } else {
      return await this.createCartSession();
    }
  }

  @action
  Future<CartSession> createCartSession() async {
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
  Map<String, dynamic> get transactionData {
    return {
      'outletName': this.outletName,
      'customerName': this.customerName,
      'customerPhone': this.customerPhone,
      'customerCarColor': this.customerCarColor,
      'customerCarNumber': this.customerCarNumber,
      'customerCarType': this.customerCarType,
      'customerSmoking': this.customerSmoking,
      'customerNote': this.customerNote,
      'customerPax': this.customerPax,
      'eta': this.eta,
      'salesType': this.salesType,
      'salesTypeCode': this.salesTypeCode,
      'items': this.items,
      'paymentType': this.paymentType,
      'promos': this.promos,
      'promosDetail': this.promosDetail,
      'delivery': this.delivery,
    };
  }

  @computed
  int get totalItems {
    var total = 0;
    for (var i = 0; i < this.items.length; i++) {
      total += this.items[i]['qty'];
    }
    return total;
  }
}
