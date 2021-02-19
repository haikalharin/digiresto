import 'dart:async';

import 'package:boilerplate/data/local/datasources/post/post_datasource.dart';
import 'package:boilerplate/data/network/apis/auth/auth_api.dart';
import 'package:boilerplate/data/network/apis/map/map_api.dart';
import 'package:boilerplate/data/sharedpref/shared_preference_helper.dart';
import 'package:boilerplate/models/auth/login_pin_model.dart';
import 'package:boilerplate/models/auth/otp_validate_model.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/models/auth/register_model.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:boilerplate/models/post/post.dart';
import 'package:boilerplate/models/post/post_list.dart';
import 'package:boilerplate/models/user/user_add_address_model.dart';
import 'package:boilerplate/models/user/user_balance_model.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
import 'package:boilerplate/models/user/user_profile_model.dart';
import 'package:boilerplate/models/user/user_remove_address_model.dart';
import 'package:sembast/sembast.dart';

import 'local/constants/db_constants.dart';
import 'network/apis/posts/post_api.dart';
import 'network/apis/user/user_api.dart';

class Repository {
  // data source object
  final PostDataSource _postDataSource;

  // api objects
  final PostApi _postApi;

  final UserApi _userApi;

  final AuthApi _authApi;

  final MapApi _mapApi;

  // shared pref object
  final SharedPreferenceHelper _sharedPrefsHelper;

  // constructor
  Repository(this._postApi, this._sharedPrefsHelper, this._postDataSource,this._userApi, this._authApi,this._mapApi);

  // Post: ---------------------------------------------------------------------
  Future<PostList> getPosts() async {
    // check to see if posts are present in database, then fetch from database
    // else make a network call to get all posts, store them into database for
    // later use
    return await _postApi.getPosts().then((postsList) {
      postsList.posts.forEach((post) {
        _postDataSource.insert(post);
      });

      return postsList;
    }).catchError((error) => throw error);
  }

  Future<List<Post>> findPostById(int id) {
    //creating filter
    List<Filter> filters = List();

    //check to see if dataLogsType is not null
    if (id != null) {
      Filter dataLogTypeFilter = Filter.equals(DBConstants.FIELD_ID, id);
      filters.add(dataLogTypeFilter);
    }

    //making db call
    return _postDataSource
        .getAllSortedByFilter(filters: filters)
        .then((posts) => posts)
        .catchError((error) => throw error);
  }

  Future<int> insert(Post post) => _postDataSource
      .insert(post)
      .then((id) => id)
      .catchError((error) => throw error);

  Future<int> update(Post post) => _postDataSource
      .update(post)
      .then((id) => id)
      .catchError((error) => throw error);

  Future<int> delete(Post post) => _postDataSource
      .update(post)
      .then((id) => id)
      .catchError((error) => throw error);


  // Login:---------------------------------------------------------------------
  Future<bool> login(String email, String password) async {
    return await Future.delayed(Duration(seconds: 2), ()=> true);
  }

  Future<void> saveIsLoggedIn(bool value) =>
      _sharedPrefsHelper.saveIsLoggedIn(value);

  Future<bool> get isLoggedIn => _sharedPrefsHelper.isLoggedIn;

  //Auth Token
  Future<void> saveAuthToken(String authToken) =>
      _sharedPrefsHelper.saveAuthToken(authToken);

  Future<void> removeAuthToken() =>
      _sharedPrefsHelper.removeAuthToken();
  Future<String> get authToken => _sharedPrefsHelper.authToken;

  //auth phone
  Future<void> saveAuthPhone(String authPhone) =>
      _sharedPrefsHelper.saveAuthPhone(authPhone);

  Future<void> removeAuthPhone() =>
      _sharedPrefsHelper.removeAuthPhone();
  Future<String> get authPhone => _sharedPrefsHelper.authPhone;

  // Theme: --------------------------------------------------------------------
  Future<void> changeBrightnessToDark(bool value) =>
      _sharedPrefsHelper.changeBrightnessToDark(value);

  Future<bool> get isDarkMode => _sharedPrefsHelper.isDarkMode;

  // Language: -----------------------------------------------------------------
  Future<void> changeLanguage(String value) =>
      _sharedPrefsHelper.changeLanguage(value);

  Future<String> get currentLanguage => _sharedPrefsHelper.currentLanguage;
  // Post: ---------------------------------------------------------------------

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

  Future<LoginPin> loginUser(String handPhone,String pin) async {
    return await _authApi.login(handPhone,pin).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<OtpWame> getOtp(String handPhone) async {
    return await _authApi.getOtp(handPhone).then((value) {
      return value;
    }).catchError((error) => throw error);
  }


  Future<OtpValidate> validateOtp(String handPhone,String otp) async {
    return await _authApi.validateOtp(handPhone,otp).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Register> register(Map<String,dynamic> object) async {
    return await _authApi.register(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  // Profile Address: ---------------------------------------------------------------------
  Future<List<UserAddress>> getAddress(String waId) async {
    return await _userApi.getAddress(waId).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<List<UserAddress>> setDefaultAddress(Map<String,dynamic> object) async {
    return await _userApi.setDefaultAddress(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<UserAddAddress> addAddress(Map<String,dynamic> object) async {
    return await _userApi.addAddress(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<UserRemoveAddress> removeAddress(Map<String,dynamic> object) async {
    return await _userApi.removeAddress(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  // Map: ---------------------------------------------------------------------
  Future<Geocode> geocode(Map<String,dynamic> object) async {
    return await _mapApi.geocode(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }
}