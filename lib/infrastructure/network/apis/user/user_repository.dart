import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/entity/order/user_promo_model.dart';
import 'package:digiresto/domain/entity/response_model.dart';
import 'package:digiresto/domain/entity/user/credit_history_model.dart';
import 'package:digiresto/domain/entity/user/topup_list_model.dart';
import 'package:digiresto/domain/entity/user/topup_model.dart';
import 'package:digiresto/domain/entity/user/topup_pending_model.dart';
import 'package:digiresto/domain/entity/user/user_add_address_model.dart';
import 'package:digiresto/domain/entity/user/user_balance_model.dart';
import 'package:digiresto/domain/entity/user/user_get_address_model.dart';
import 'package:digiresto/domain/entity/user/user_profile_model.dart';
import 'package:digiresto/domain/entity/user/user_remove_address_model.dart';
import 'package:injectable/injectable.dart';

import 'user_api.dart';

@injectable
class UserRepository {
  final UserApi _userApi;

  UserRepository(this._userApi);

  Future<UserBalance> getBalance() async {
    return await _userApi.getBalance().then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<UserProfile> getProfile() async {
    return await _userApi.getProfile().then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<List<TopupList>> getTopupLists() async {
    return await _userApi.getTopupLists().then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<CreditHistory> getCreditHistory(int page) async {
    return await _userApi.getCreditHistory(page).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Topup> topup(Map<String, dynamic> object, String paymentType) async {
    return await _userApi.topup(object, paymentType).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<List<TopupPending>> getPendingPopup() async {
    return await _userApi.getPendingPopup().then((value) {
      return value;
    }).catchError((error) => throw error);
  }

// Profile Address: ---------------------------------------------------------------------
  Future<Either<Exception, List<UserAddress>>> getAddress(String waId) async {
    return await _userApi.getAddress(waId).then((value) {
      return value;
    });
  }

  Future<List<UserAddress>> setDefaultAddress(
      Map<String, dynamic> object) async {
    return await _userApi.setDefaultAddress(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<UserAddAddress> addAddress(Map<String, dynamic> object) async {
    return await _userApi.addAddress(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<UserRemoveAddress> removeAddress(Map<String, dynamic> object) async {
    return await _userApi.removeAddress(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Response> updateProfile(Map<String, dynamic> object) async {
    return await _userApi.updateProfile(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Response> cancelBilling(Map<String, dynamic> object) async {
    return await _userApi.cancelBilling(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  //home
  Future<List<UserPromo>> getPromo(Map<String, dynamic> object) async {
    return await _userApi.getPromo(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }
}
