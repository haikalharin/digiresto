import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:injectable/injectable.dart';

@injectable
class OrderLocal {
  final IStorage _storage;
  final String _sessionIdKey = "sessionId";
  OrderLocal(this._storage);

  Future<UpdateCartSessionBodyParam?> setProduct(
      CreateUpdateCartSessionItemParam object,
      DetailOutletDataResponse outlet) async {
    final _outletModel = await getOutletDetailID();
    if (_outletModel?.id != outlet.id) {
      await _storage.openBox(StorageConstants.orderProduct);
      await _storage.deleteData();
      await setOutletDetailID(outlet);
    }

    await _storage.openBox(StorageConstants.orderProduct);
    var _productJson = _storage.getJson(key: _sessionIdKey);

    if (_productJson == null) {
      await _storage.openBox(StorageConstants.orderProduct);
      var list = UpdateCartSessionBodyParam(
          customerNote: "", paymentType: "", items: []);
      await _storage.setJson(key: _sessionIdKey, object: list.toJson());
      _productJson = _storage.getJson(key: _sessionIdKey);
      //_productModel = UpdateCartSessionBodyParam.fromJson(_productJson);
    }
    var _productModel = UpdateCartSessionBodyParam.fromJson(_productJson);
    //parse to map
    var _result = {for (var v in _productModel.items!) v.productId: v};
    _result[object.productId] = object;

    //parse to list
    var _listResult = _result.entries.map((e) => e.value).toList();
    var list = UpdateCartSessionBodyParam(
        customerNote: "", paymentType: "", items: _listResult);
    await _storage.setJson(key: _sessionIdKey, object: list.toJson());

    final productJson = _storage.getJson(key: _sessionIdKey);
    final productModel = UpdateCartSessionBodyParam.fromJson(productJson);
    await _storage.close();
    return productModel;
  }

  Future<UpdateCartSessionBodyParam?> removeProduct(
      CreateUpdateCartSessionItemParam object) async {
    await _storage.openBox(StorageConstants.orderProduct);
    var _productJson = _storage.getJson(key: _sessionIdKey);
    var _productModel = UpdateCartSessionBodyParam.fromJson(_productJson);

    //parse to map
    var _result = {for (var v in _productModel.items!) v.productId: v};
    _result.remove(object.productId);

    //parse to list
    var _listResult = _result.entries.map((e) => e.value).toList();
    var list = UpdateCartSessionBodyParam(
        customerNote: "", paymentType: "", items: _listResult);
    await _storage.setJson(key: _sessionIdKey, object: list.toJson());

    final productJson = _storage.getJson(key: _sessionIdKey);
    final productModel = UpdateCartSessionBodyParam.fromJson(productJson);
    await _storage.close();
    return productModel;
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
    final _outletModel = DetailOutletDataResponse.fromJson(_outletJson);
    await _storage.close();
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
}
