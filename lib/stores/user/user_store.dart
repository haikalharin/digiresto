import 'dart:math';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/models/auth/login_pin_model.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/models/auth/otp_validate_model.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/models/auth/register_model.dart';
import 'package:boilerplate/models/response_model.dart';
import 'package:boilerplate/models/user/user_add_address_model.dart';
import 'package:boilerplate/models/user/user_balance_model.dart';
import 'package:boilerplate/models/user/user_profile_model.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
import 'package:boilerplate/models/order/user_promo_model.dart';
import 'package:boilerplate/models/user/user_remove_address_model.dart';
import 'package:boilerplate/stores/error/error_store.dart';
import 'package:flutter/material.dart';
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
  String  authToken = "";

  // constructor:---------------------------------------------------------------
  _UserStore(Repository repository) : this._repository = repository {

    // setting up disposers
    _setupDisposers();

    // checking if user is logged in
    repository.isLoggedIn.then((value) {
      this.isLoggedIn = value ?? false;
    });

    _repository.authToken.then((value) => {
      this.authToken = value!= "" ? value : ""}
    );


    _repository.authPhone.then((value) => {
      this.authPhone = value!= "" ? value : ""}
    );

    _repository.authPhoneVerified.then((value) => {
      this.authPhoneVerified = value!= "" ? value : false}
    );

    _repository.skipAndContinue.then((value) => {
      this.skipAndContinue = value!= "" ? value : false}
    );

    _repository.defaultAddress.then((value) => {
      this.activeAddress = (value== "" || value==null) ? "" :value}
    );

    _repository.defaultAddressLat.then((value) => {
      this.activeAddressLat = value!= "" ? value : ""}
    );


    _repository.defaultAddressLng.then((value) => {
      this.activeAddresslng = value!= "" ? value : ""}
    );

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
  Future setProfile(UserProfile profile) async{
    this.profile=profile;
  }

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
  Future saveAuthToken(String token) async {
    return await _repository.saveAuthToken(token).then((res) {
      this.authToken = token;
      return res;
    }).catchError((err) {
      print("error: "+ err);
    });
  }

  @action
  Future getAuthToken() async {
    return await _repository.authToken.then((res) {
      return res;
    }).catchError((err) {
      print("error: "+ err);
    });
  }

  @action
  removeAuthToken (){
    _repository.removeAuthToken();
  }

  //auth phone
  @observable
  String authPhone = null;
  @action
  Future saveAuthPhone(String handPhone) async {
    return await _repository.saveAuthPhone(handPhone).then((res) {
      this.authPhone = handPhone;
      return res;
    }).catchError((err) {
      print("error: "+ err);
    });
  }

  @action
  Future getAuthPhone() async {
    return await _repository.authPhone.then((res) {
      return res;
    }).catchError((err) {
      print("error: "+ err);
    });
  }

  @action
  removeAuthPhone (){
    _repository.removeAuthPhone();
  }
  //auth phone veerified
  @observable
  bool authPhoneVerified;

  @action
  Future saveAuthPhoneVerified(bool isVerified) async {
    return await _repository.saveAuthPhoneVerified(isVerified).then((res) {
      this.authPhoneVerified = isVerified;
      return res;
    }).catchError((err) {
      print("error: "+ err);
    });
  }

  @action
  Future getAuthPhoneVerified() async {
    return await _repository.authPhoneVerified.then((res) {
      return res;
    }).catchError((err) {
      print("error: "+ err);
    });
  }

  @action
  removeAuthPhoneVerified (){
    _repository.removeAuthPhoneVerified();
  }

  //skin and continue
  @observable
  bool skipAndContinue;

  @action
  Future setSkipAndContinue(bool param) async {
    return await _repository.setSkipAndContinue(param).then((res) {
      this.skipAndContinue = param;
      return res;
    }).catchError((err) {
      print("error: "+ err);
    });
  }

  @action
  Future getSkipAndContinue() async {
    return await _repository.skipAndContinue.then((res) {
      return res;
    }).catchError((err) {
      print("error: "+ err);
    });
  }

  @action
  removeSkipAndContinue (){
    _repository.removeSkipAndContinue();
  }


  @action
  Future getProfile() async {
    return await _repository.getProfile().then((res) {
      this.profile = res;
    }).catchError((err) {
      print("error response: "+ err.toString());
        throw err;
    });
  }

  @action
  Future getBalance() async {
    return await _repository.getBalance().then((res) {
      this.balance = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
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
    _repository.removeAuthToken();
    this.authToken = "";
    this.isLoggedIn = false;
    this.success = false;
    this.user = null;
    _repository.removeDefaultAddressLat();
    _repository.removeDefaultAddress();
    _repository.removeDefaultAddressLng();
    this.activeAddress="";
    this.activeAddressLat="";
    this.activeAddresslng="";
    this.profile=null;
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
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @action
  Future<OtpWame> getOtp(String handPhone) async {
    return await _repository.getOtp(handPhone).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @action
  Future<OtpValidate> validateOtp(String handPhone,String pin) async {
    return await _repository.validateOtp(handPhone,pin).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @action
  Future<Register> register(Map<String,dynamic> object) async {
    return await _repository.register(object).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @observable
  List<UserAddress> listAddress;

  @action
  Future<List<UserAddress>>  getAddress(String waId) async {
    return await _repository.getAddress(waId).then((res) {
      this.listAddress = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @action
  Future<List<UserAddress>>  setDefaultAddress(Map<String,dynamic> object) async {
    return await _repository.setDefaultAddress(object).then((res) {
      this.listAddress = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @action
  Future<UserAddAddress> addAddress(Map<String,dynamic> object) async {
    return await _repository.addAddress(object).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @action
  Future<UserRemoveAddress> removeAddress(Map<String,dynamic> object) async {
    return await _repository.removeAddress(object).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @observable
  String activeHomeTab = null;
  void setActivedHomeTab(String active){
    activeHomeTab = active;
  }

  @observable
  String activeHistoryScreen = null;
  void setActiveHistoryScreen(String active){
    activeHistoryScreen = active;
  }


  //home
  @observable
  List<UserPromo> listPromo;

  @action
  Future<List<UserPromo>>  getPromo(Map<String,dynamic> object) async {
    return await _repository.getPromo(object).then((res) {
      this.listPromo = res;
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @observable
  String activeAddress;
  String activeAddressLat;
  String activeAddresslng;
  void setActiveAddress(String address,String lat,String lng){
    this.activeAddress = address;
    this.activeAddressLat = lat;
    this.activeAddresslng = lng;
    _repository.saveDefaultAddress(address);
    _repository.saveDefaultAddressLat(lat);
    _repository.saveDefaultAddressLng(lng);
  }

  @action
  Future<Response> updateProfile(Map<String,dynamic> object) async {
    return await _repository.updateProfile(object).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err.toString());
      throw err;
    });
  }

  @observable
  Map<String,dynamic> randomCacheImage = {};
  void setRandomCacheImage(String img,String uniqueId){
    if (img=="" || img==null){
      if (this.randomCacheImage.containsKey(uniqueId)==false) {
        Random random = new Random();
        int randomNumber = random.nextInt(9);
        this.randomCacheImage.addAll({uniqueId: randomNumber.toString()});
      }
    }
  }

  String getRandomCacheImage(String uniqueId){
    if (this.randomCacheImage.containsKey(uniqueId.toString())){
      return this.randomCacheImage[uniqueId];
    }
    return "";
  }
}
