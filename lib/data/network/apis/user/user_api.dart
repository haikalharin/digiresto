import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/user/user_profile_model.dart';
import 'package:boilerplate/models/user/user_balance_model.dart';
import 'package:dio/dio.dart';
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

  Future<UserProfile> getProfile(String token) async {
    try {
      String apiUrl = Endpoints.urlProfile;

      final apiResult = await _dioClient.get(apiUrl,options: Options(contentType: "application/json",headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer "+token,
      }));
      var userData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      return UserProfile.createUserProfile(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
  Future<UserBalance> getBalance(String token) async {
    try {
      String apiUrl = Endpoints.urlBalance;

      final apiResult = await _dioClient.get(apiUrl,options: Options(contentType: "application/json",headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
        "Authorization": "Bearer "+token,
      }));
      var userData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      return UserBalance.createBalance(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

}
