import 'dart:math';

import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/data/network/apis/login/login_pin_api.dart';
import 'package:boilerplate/models/auth/login_pin_model.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/models/auth/otp_validate_model.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/models/auth/register_model.dart';
import 'package:boilerplate/models/user/user_add_address_model.dart';
import 'package:boilerplate/models/user/user_balance_model.dart';
import 'package:boilerplate/models/user/user_profile_model.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
import 'package:boilerplate/models/user/user_remove_address_model.dart';
import 'package:boilerplate/stores/error/error_store.dart';
import 'package:mobx/mobx.dart';

import '../../data/repository.dart';
import '../form/form_store.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  // repository instance
  final Repository _repository;

  // store for handling form errors
  final FormErrorStore formErrorStore = FormErrorStore();

  // store for handling error messages
  final ErrorStore errorStore = ErrorStore();

  // bool to check if current user is logged in
  bool isLoggedIn = false;

  // constructor:---------------------------------------------------------------
  _UserStore(Repository repository) : this._repository = repository {

    // setting up disposers
    _setupDisposers();

    // checking if user is logged in
    repository.isLoggedIn.then((value) {
      this.isLoggedIn = value ?? false;
    });
  }

  // disposers:-----------------------------------------------------------------
  List<ReactionDisposer> _disposers;

  void _setupDisposers() {
    _disposers = [
      reaction((_) => success, (_) => success = false, delay: 200),
    ];
  }

  // empty responses:-----------------------------------------------------------
  static ObservableFuture<bool> emptyLoginResponse =
  ObservableFuture.value(false);

  // store variables:-----------------------------------------------------------
  @observable
  bool success = false;

  @observable
  ObservableFuture<bool> loginFuture = emptyLoginResponse;

  @computed
  bool get isLoading => loginFuture.status == FutureStatus.pending;

  @observable
  LoginPin user;
  UserProfile profile;
  UserBalance balance;
  // actions:-------------------------------------------------------------------
  @action
  Future login(String email, String password) async {

    final future = _repository.login(email, password);
    loginFuture = ObservableFuture(future);
    await future.then((value) async {
      if (value) {
        _repository.saveIsLoggedIn(true);
        this.isLoggedIn = true;
        this.success = true;
      } else {
        print('failed to login');
      }
    }).catchError((e) {
      print(e);
      this.isLoggedIn = false;
      this.success = false;
      throw e;
    });
  }

  @action
  Future getProfile(String token) async {
    return await _repository.getProfile(token).then((res) {
      this.profile = res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @action
  Future getBalance(String token) async {
    return await _repository.getBalance(token).then((res) {
      this.balance = res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  activeSessionLogin (LoginPin user){
        _repository.saveIsLoggedIn(true);
        this.isLoggedIn = true;
        this.success = true;
        this.user = user;
  }

  logoutSessionLogin(){
    _repository.saveIsLoggedIn(false);
    this.isLoggedIn = false;
    this.success = false;
    this.user = null;
  }
  logout() {
    this.isLoggedIn = false;
    _repository.saveIsLoggedIn(false);
  }

  // general methods:-----------------------------------------------------------
  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  @action
  Future<LoginPin>  loginUser(String handPhone,String pin) async {
    return await _repository.loginUser(handPhone,pin).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @action
  Future<OtpWame> getOtp(String handPhone) async {
    return await _repository.getOtp(handPhone).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @action
  Future<OtpValidate> validateOtp(String handPhone,String pin) async {
    return await _repository.validateOtp(handPhone,pin).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @action
  Future<Register> register(Map<String,dynamic> object) async {
    return await _repository.register(object).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @observable
  String otpHandphone = null;
  void setOtpHandphone(String handPhone){
    otpHandphone = handPhone;
  }

  void removeOtpHandohone(){
    otpHandphone = null;
  }

  @observable
  var listAddress;

  @action
  Future<List<UserAddress>>  getAddress(String token,String waId) async {
    return await _repository.getAddress(token,waId).then((res) {
      this.listAddress = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @action
  Future<List<UserAddress>>  setDefaultAddress(String token,Map<String,dynamic> object) async {
    return await _repository.setDefaultAddress(token,object).then((res) {
      this.listAddress = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @action
  Future<UserAddAddress> addAddress(String token, Map<String,dynamic> object) async {
    return await _repository.addAddress(token,object).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @action
  Future<UserRemoveAddress> removeAddress(String token, Map<String,dynamic> object) async {
    return await _repository.removeAddress(token,object).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }
}