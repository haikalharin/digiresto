import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/entity/order/delivery_method_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/payment_method_response.dart';
import 'package:digiresto/domain/order/order_cart_dine_in_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class OrderLocal {
  final IStorage _storage;
  final String _sessionIdKey = "sessionId";
  final String _salesTypeIdKey = "salesTypeId";
  final String _paymentMethodKey = "paymentMethod";
  final String _deliveryMethodKey = "deliveryMethodKey";
  final String _voucherMethodKey = "voucherMethodKey";
  final String _dineInIdKey = "_dineInIdKey";
  OrderLocal(this._storage);

  Future<PaymentMethodDataResponse?> setPaymentMethod(
      PaymentMethodDataResponse data) async {
    try {
      await _storage.openBox(StorageConstants.cart);
      await _storage.setJson(key: _paymentMethodKey, object: data.toJson());
      final object = _storage.getJson(key: _paymentMethodKey);
      final model = PaymentMethodDataResponse.fromJson(object);
      await _storage.close();
      return model;
    } catch (e) {
      return null;
    }
  }

  Future<PaymentMethodDataResponse?> getPaymentMethod() async {
    try {
      await _storage.openBox(StorageConstants.cart);
      final object = _storage.getJson(key: _paymentMethodKey);
      final model = PaymentMethodDataResponse.fromJson(object);
      await _storage.close();
      return model;
    } catch (e) {
      return null;
    }
  }

  Future<DeliveryMethodDataResponse?> setDeliveryMethod(
      DeliveryMethodDataResponse data) async {
    try {
      await _storage.openBox(StorageConstants.cart);
      await _storage.setJson(key: _deliveryMethodKey, object: data.toJson());
      final object = _storage.getJson(key: _deliveryMethodKey);
      final model = DeliveryMethodDataResponse.fromJson(object);
      await _storage.close();
      return model;
    } catch (e) {
      return null;
    }
  }

  Future<DeliveryMethodDataResponse?> getDeliveryMethod() async {
    try {
      await _storage.openBox(StorageConstants.cart);
      final object = _storage.getJson(key: _deliveryMethodKey);
      final model = DeliveryMethodDataResponse.fromJson(object);
      await _storage.close();
      return model;
    } catch (e) {
      return null;
    }
  }

  Future<OrderCartDineInModel?> setDineInIDMethod(
      OrderCartDineInModel data) async {
    try {
      await _storage.openBox(StorageConstants.cart);
      await _storage.setJson(key: _dineInIdKey, object: data.toJson());
      final object = _storage.getJson(key: _dineInIdKey);
      final model = OrderCartDineInModel.fromJson(object);
      await _storage.close();
      return model;
    } catch (e) {
      return null;
    }
  }

  Future<OrderCartDineInModel?> getDineInIDMethod() async {
    try {
      await _storage.openBox(StorageConstants.cart);
      final object = _storage.getJson(key: _dineInIdKey);
      final model = OrderCartDineInModel.fromJson(object);
      await _storage.close();
      return model;
    } catch (e) {
      return null;
    }
  }

  Future<GetListVoucherOutletDataResponse?> setVoucherMethod(
      GetListVoucherOutletDataResponse data) async {
    try {
      await _storage.openBox(StorageConstants.cart);
      await _storage.setJson(key: _voucherMethodKey, object: data.toJson());
      final object = _storage.getJson(key: _voucherMethodKey);
      final model = GetListVoucherOutletDataResponse.fromJson(object);
      await _storage.close();
      return model;
    } catch (e) {
      return null;
    }
  }

  Future<GetListVoucherOutletDataResponse?> getVoucherMethod() async {
    try {
      await _storage.openBox(StorageConstants.cart);
      final object = _storage.getJson(key: _voucherMethodKey);
      final model = GetListVoucherOutletDataResponse.fromJson(object);
      await _storage.close();
      return model;
    } catch (e) {
      return null;
    }
  }

  Future<UpdateCartSessionBodyParam?> setProduct(
      CreateUpdateCartSessionItemParam object,
      DetailOutletDataResponse outlet) async {
    final _outletModel = await getOutletDetailID();
    if (_outletModel?.id != outlet.id) {
      await _storage.openBox(StorageConstants.orderProduct);
      await _storage.deleteData();
      await _storage.close();

      await _storage.openBox(StorageConstants.cart);
      await _storage.deleteData();
      await _storage.close();
    }

    await _storage.openBox(StorageConstants.orderProduct);
    var _productJson = _storage.getJson(key: _sessionIdKey);
    await _storage.close();

    if (_productJson == null) {
      await _storage.openBox(StorageConstants.orderProduct);
      var list = UpdateCartSessionBodyParam(
          customerNote: "",
          paymentType: "",
          items: [],
          customerPax: '',
          customerSmoking: false,
          delivery: null,
          eta: '',
          promos: [],
          salesType: '');
      await _storage.setJson(key: _sessionIdKey, object: list.toJson());
      _productJson = _storage.getJson(key: _sessionIdKey);
      await _storage.close();

      //_productModel = UpdateCartSessionBodyParam.fromJson(_productJson);
    }
    var _productModel = UpdateCartSessionBodyParam.fromJson(_productJson);
    //parse to map
    var _result = {for (var v in _productModel.items!) v.productId: v};
    _result[object.productId] = object;

    //parse to list
    var _listResult = _result.entries.map((e) => e.value).toList();
    var list = UpdateCartSessionBodyParam(
        customerNote: "",
        paymentType: "",
        items: _listResult,
        customerPax: '',
        customerSmoking: false,
        delivery: null,
        eta: '',
        promos: [],
        salesType: '');
    await _storage.openBox(StorageConstants.orderProduct);
    await _storage.setJson(key: _sessionIdKey, object: list.toJson());
    final productJson = _storage.getJson(key: _sessionIdKey);
    await _storage.close();
    final productModel = UpdateCartSessionBodyParam.fromJson(productJson);
    return productModel;
  }

  Future<UpdateCartSessionBodyParam?> reorderCart(
      CreateCartSessionParam object, int outletId) async {
    final _outletModel = await getOutletDetailID();
    if (_outletModel?.id != outletId.toString()) {
      await _storage.openBox(StorageConstants.orderProduct);
      await _storage.deleteData();
      await _storage.close();

      await _storage.openBox(StorageConstants.cart);
      await _storage.deleteData();
      await _storage.close();
    }
    try {
      await _storage.openBox(StorageConstants.orderProduct);
      var list = UpdateCartSessionBodyParam(
          customerNote: object.body.customerNote,
          paymentType: "",
          items: object.body.items,
          customerPax: object.body.customerPax,
          customerSmoking: object.body.customerSmoking,
          delivery: null,
          eta: '',
          promos: [],
          salesType: object.body.salesType);
      await _storage.setJson(key: _sessionIdKey, object: list.toJson());

      final productJson = _storage.getJson(key: _sessionIdKey);
      final productModel = UpdateCartSessionBodyParam.fromJson(productJson);
      await _storage.close();
      return productModel;
    } catch (e) {
      return null;
    }
  }

  Future<UpdateCartSessionBodyParam?> getProduct() async {
    try {
      await _storage.openBox(StorageConstants.orderProduct);
      var _productJson = _storage.getJson(key: _sessionIdKey);
      final productModel = UpdateCartSessionBodyParam.fromJson(_productJson);
      await _storage.close();
      return productModel;
    } catch (e) {
      return null;
    }
  }

  Future<UpdateCartSessionBodyParam?> removeProduct(
      CreateUpdateCartSessionItemParam object) async {
    await _storage.openBox(StorageConstants.orderProduct);
    var _productJson = _storage.getJson(key: _sessionIdKey);
    await _storage.close();

    var _productModel = UpdateCartSessionBodyParam.fromJson(_productJson);

    //parse to map
    var _result = {for (var v in _productModel.items!) v.productId: v};
    _result.remove(object.productId);

    //parse to list
    var _listResult = _result.entries.map((e) => e.value).toList();
    var list = UpdateCartSessionBodyParam(
        customerNote: "",
        paymentType: "",
        items: _listResult,
        customerPax: '',
        customerSmoking: false,
        delivery: null,
        eta: '',
        promos: [],
        salesType: '');
    await _storage.setJson(key: _sessionIdKey, object: list.toJson());

    final productJson = _storage.getJson(key: _sessionIdKey);
    final productModel = UpdateCartSessionBodyParam.fromJson(productJson);
    return productModel;
  }

  Future<String?> getSalesTypeCart() async {
    try {
      await _storage.openBox(StorageConstants.cart);
      final sessionId = _storage.getString(key: _salesTypeIdKey);
      await _storage.close();
      return sessionId;
    } catch (e) {
      return null;
    }
  }

  Future<String?> setSalesTypeCart(String value) async {
    try {
      await _storage.openBox(StorageConstants.cart);
      await _storage.putString(key: _salesTypeIdKey, value: value);
      final sessionId = _storage.getString(key: _salesTypeIdKey);
      await _storage.close();
      return sessionId;
    } catch (e) {
      return null;
    }
  }

  Future<DetailOutletDataResponse?> setOutletDetailID(
      DetailOutletDataResponse object) async {
    try {
      await _storage.openBox(StorageConstants.outletDetail);
      await _storage.setJson(key: _sessionIdKey, object: object.toJson());
      final _outletJson = _storage.getJson(key: _sessionIdKey);
      final _outletModel = DetailOutletDataResponse.fromJson(_outletJson);
      await _storage.close();
      return _outletModel;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<DetailOutletDataResponse?> getOutletDetailID() async {
    await _storage.openBox(StorageConstants.outletDetail);
    final _outletJson = _storage.getJson(key: _sessionIdKey);
    await _storage.close();
    if (_outletJson == null) {
      return null;
    }
    final _outletModel = DetailOutletDataResponse.fromJson(_outletJson);
    return _outletModel;
  }

  Future<UserAuth?> getLocalUserProfile() async {
    await _storage.openBox(StorageConstants.user);
    final _userInStorage = await _storage.getData();
    final _userAuth = UserAuth.fromJson(_userInStorage);
    await _storage.close();
    return _userAuth;
  }

  Future<Either<Exception, String?>> getSessionId() async {
    try {
      await _storage.openBox(StorageConstants.cart);
      final sessionId = _storage.getString(key: _sessionIdKey);
      await _storage.close();
      return sessionId == null
          ? left(Exception("session is null"))
          : right(sessionId);
    } catch (e, stackTrace) {
      return left(Exception(stackTrace.toString()));
    }
  }

  Future<Either<Exception, String>> setSessionId(String value) async {
    try {
      await _storage.openBox(StorageConstants.cart);
      await _storage.putString(key: _sessionIdKey, value: value);
      final sessionId = _storage.getString(key: _sessionIdKey);
      await _storage.close();
      return sessionId == null
          ? left(Exception("session is null"))
          : right(sessionId);
    } catch (e, stackTrace) {
      return left(Exception(stackTrace.toString()));
    }
  }

  Future<String?> removeCartSesion() async {
    try {
      await _storage.openBox(StorageConstants.orderProduct);
      await _storage.deleteData();
      await _storage.close();
      await _storage.openBox(StorageConstants.cart);
      await _storage.deleteData();
      await _storage.close();
      return "";
    } catch (e) {
      return null;
    }
  }
}
