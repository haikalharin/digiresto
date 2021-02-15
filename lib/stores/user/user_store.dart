import 'dart:math';

import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/data/network/apis/login/login_pin_api.dart';
import 'package:boilerplate/models/login/login_pin_model.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/models/user/user_balance_model.dart';
import 'package:boilerplate/models/user/user_profile_model.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
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
    UserApi.profile(token).then((res) {
      this.profile = res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }

  @action
  Future getBalance(String token) async {
    UserApi.balance(token).then((res) {
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

  //address
  @action
  Future<List<UserAddress>> getAddress(String token,String waId) async {
    UserApi.address(token,waId).then((res) {
      return res;
    }).catchError((err) {
      print("error response: "+ err);
    });
  }
}