import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/user/user_profile_model.dart';
import 'package:boilerplate/models/user/user_balance_model.dart';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';

class UserApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;


  // injecting dio instance
  UserApi(this._dioClient, this._restClient);

  static Future<UserProfile> profile(String token) async{
    String apiUrl = Endpoints.urlProfile;
    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
    return UserProfile.createUserProfile(userData);
  }

  static Future<UserBalance> balance(String token) async{
    String apiUrl = Endpoints.urlBalance;
      var apiResult = await http.get(apiUrl, headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer "+token,
      });
      var jsonObject = json.decode(apiResult.body);
      var userData = (jsonObject as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      return UserBalance.createBalance(userData);

  }
}
