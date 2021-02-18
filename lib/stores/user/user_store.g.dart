// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  Computed<bool> _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??=
          Computed<bool>(() => super.isLoading, name: '_UserStore.isLoading'))
      .value;

  final _$successAtom = Atom(name: '_UserStore.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$loginFutureAtom = Atom(name: '_UserStore.loginFuture');

  @override
  ObservableFuture<bool> get loginFuture {
    _$loginFutureAtom.reportRead();
    return super.loginFuture;
  }

  @override
  set loginFuture(ObservableFuture<bool> value) {
    _$loginFutureAtom.reportWrite(value, super.loginFuture, () {
      super.loginFuture = value;
    });
  }

  final _$userAtom = Atom(name: '_UserStore.user');

  @override
  LoginPin get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(LoginPin value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$otpHandphoneAtom = Atom(name: '_UserStore.otpHandphone');

  @override
  String get otpHandphone {
    _$otpHandphoneAtom.reportRead();
    return super.otpHandphone;
  }

  @override
  set otpHandphone(String value) {
    _$otpHandphoneAtom.reportWrite(value, super.otpHandphone, () {
      super.otpHandphone = value;
    });
  }

  final _$listAddressAtom = Atom(name: '_UserStore.listAddress');

  @override
  dynamic get listAddress {
    _$listAddressAtom.reportRead();
    return super.listAddress;
  }

  @override
  set listAddress(dynamic value) {
    _$listAddressAtom.reportWrite(value, super.listAddress, () {
      super.listAddress = value;
    });
  }

  final _$activeHomeTabAtom = Atom(name: '_UserStore.activeHomeTab');

  @override
  String get activeHomeTab {
    _$activeHomeTabAtom.reportRead();
    return super.activeHomeTab;
  }

  @override
  set activeHomeTab(String value) {
    _$activeHomeTabAtom.reportWrite(value, super.activeHomeTab, () {
      super.activeHomeTab = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_UserStore.login');

  @override
  Future<dynamic> login(String email, String password) {
    return _$loginAsyncAction.run(() => super.login(email, password));
  }

  final _$saveAuthTokenAsyncAction = AsyncAction('_UserStore.saveAuthToken');

  @override
  Future<dynamic> saveAuthToken(String token) {
    return _$saveAuthTokenAsyncAction.run(() => super.saveAuthToken(token));
  }

  final _$getAuthTokenAsyncAction = AsyncAction('_UserStore.getAuthToken');

  @override
  Future<dynamic> getAuthToken() {
    return _$getAuthTokenAsyncAction.run(() => super.getAuthToken());
  }

  final _$getProfileAsyncAction = AsyncAction('_UserStore.getProfile');

  @override
  Future<dynamic> getProfile() {
    return _$getProfileAsyncAction.run(() => super.getProfile());
  }

  final _$getBalanceAsyncAction = AsyncAction('_UserStore.getBalance');

  @override
  Future<dynamic> getBalance() {
    return _$getBalanceAsyncAction.run(() => super.getBalance());
  }

  final _$loginUserAsyncAction = AsyncAction('_UserStore.loginUser');

  @override
  Future<LoginPin> loginUser(String handPhone, String pin) {
    return _$loginUserAsyncAction.run(() => super.loginUser(handPhone, pin));
  }

  final _$getOtpAsyncAction = AsyncAction('_UserStore.getOtp');

  @override
  Future<OtpWame> getOtp(String handPhone) {
    return _$getOtpAsyncAction.run(() => super.getOtp(handPhone));
  }

  final _$validateOtpAsyncAction = AsyncAction('_UserStore.validateOtp');

  @override
  Future<OtpValidate> validateOtp(String handPhone, String pin) {
    return _$validateOtpAsyncAction
        .run(() => super.validateOtp(handPhone, pin));
  }

  final _$registerAsyncAction = AsyncAction('_UserStore.register');

  @override
  Future<Register> register(Map<String, dynamic> object) {
    return _$registerAsyncAction.run(() => super.register(object));
  }

  final _$getAddressAsyncAction = AsyncAction('_UserStore.getAddress');

  @override
  Future<List<UserAddress>> getAddress(String waId) {
    return _$getAddressAsyncAction.run(() => super.getAddress(waId));
  }

  final _$setDefaultAddressAsyncAction =
      AsyncAction('_UserStore.setDefaultAddress');

  @override
  Future<List<UserAddress>> setDefaultAddress(Map<String, dynamic> object) {
    return _$setDefaultAddressAsyncAction
        .run(() => super.setDefaultAddress(object));
  }

  final _$addAddressAsyncAction = AsyncAction('_UserStore.addAddress');

  @override
  Future<UserAddAddress> addAddress(Map<String, dynamic> object) {
    return _$addAddressAsyncAction.run(() => super.addAddress(object));
  }

  final _$removeAddressAsyncAction = AsyncAction('_UserStore.removeAddress');

  @override
  Future<UserRemoveAddress> removeAddress(Map<String, dynamic> object) {
    return _$removeAddressAsyncAction.run(() => super.removeAddress(object));
  }

  final _$_UserStoreActionController = ActionController(name: '_UserStore');

  @override
  dynamic removeAuthToken(LoginPin user) {
    final _$actionInfo = _$_UserStoreActionController.startAction(
        name: '_UserStore.removeAuthToken');
    try {
      return super.removeAuthToken(user);
    } finally {
      _$_UserStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
success: ${success},
loginFuture: ${loginFuture},
user: ${user},
otpHandphone: ${otpHandphone},
listAddress: ${listAddress},
activeHomeTab: ${activeHomeTab},
isLoading: ${isLoading}
    ''';
  }
}
