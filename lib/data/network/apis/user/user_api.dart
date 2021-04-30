import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
import 'package:boilerplate/models/user/user_profile_model.dart';
import 'package:boilerplate/models/user/user_balance_model.dart';
import 'package:boilerplate/models/user/user_add_address_model.dart';
import 'package:boilerplate/models/order/user_promo_model.dart';
import 'package:boilerplate/models/user/user_remove_address_model.dart';
import 'package:boilerplate/models/response_model.dart' as responseModel;

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

  Future<UserProfile> getProfile() async {
    try {
      String apiUrl = Endpoints.urlProfile;
      final apiResult = await _dioClient.get(apiUrl);
      var userData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      return UserProfile.createUserProfile(userData);
    } catch (e) {
      return throw e;
    }
  }

  Future<UserBalance> getBalance() async {
    try {
      String apiUrl = Endpoints.urlBalance;
      final apiResult = await _dioClient.get(apiUrl);
      var userData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      return UserBalance.createBalance(userData);
    } catch (e) {
      print(e.toString());
      return throw e;
    }
  }

  Future<List<UserAddress>> getAddress(String waId) async{
    try {
      String apiUrl = Endpoints.urlGetAllAddress;
      final apiResult = await _dioClient.post(apiUrl,data: {
      "query_string":{},
      "body":{
      "wa_id": waId
      }
      });

      List<dynamic> listUserData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      List<UserAddress> address= [];
      for(int i = 0;i<listUserData.length;i++){
        address.add(UserAddress.createAddress(listUserData[i]));
      }
      return address;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<UserAddAddress> addAddress(Map<String,dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlAddAddress;
      final apiResult = await _dioClient.post(apiUrl, data: {
      "query_string":{},
      "body":{
      "wa_id": object["wa_id"].toString(),
      "waba_no": object["waba_no"].toString(),
      "name": object["name"].toString(),
      "address": object["address"].toString(),
      "latitude": object["latitude"].toString(),
      "longitude": object["longitude"].toString(),
      "is_default": object["is_default"],
      }});
      var userData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      return UserAddAddress.createAddAddress(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<UserRemoveAddress> removeAddress(Map<String,dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlRemoveAddress;
      final apiResult = await _dioClient.post(apiUrl, data: {
      "query_string":{},
      "body":{
      "wa_id": object["wa_id"].toString(),
      "waba_no": object["waba_no"].toString(),
      "id": object["id"],
      }});
      var userData = (apiResult as Map<String,dynamic>)['response']; //mengambil data data didalam jsonObject
      return UserRemoveAddress.createUserRemoveAddress(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<UserAddress>> setDefaultAddress(Map<String,dynamic> object) async{
    try {
      String apiUrl = Endpoints.urlSetDefaultAddress;
      final apiResult = await _dioClient.post(apiUrl,data: {
        "query_string":{},
        "body":{
          "wa_id": object["wa_id"].toString(),
          "waba_no": object["waba_no"].toString(),
          "id": object["id"],
        }
      });

      List<dynamic> listUserData = (apiResult as Map<String,dynamic>)['data']['list_address']; //mengambil data data didalam jsonObject
      List<UserAddress> address= [];
      for(int i = 0;i<listUserData.length;i++){
        address.add(UserAddress.createAddress(listUserData[i]));
      }
      return address;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }


  Future<List<UserPromo>> getPromo(Map<String,dynamic> object) async{
    try {
      String apiUrl = Endpoints.urlGetPromo;
      final apiResult = await _dioClient.post(apiUrl,data: {
        "query_string":{
          "location":object["location"],
          "page":object["page"],
          "filter":object["filter"],
        },
        "body":{
        }
      });

      List<dynamic> listUserData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      List<UserPromo> promos= [];
      for(int i = 0;i<listUserData.length;i++){
        promos.add(UserPromo.createUserPromo(listUserData[i]));
      }
      return promos;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<responseModel.Response> updateProfile(Map<String,dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlUpdateProfile;
      final apiResult = await _dioClient.post(apiUrl,data: {
      "name":object["name"],
      "email":object["email"],
      });
      var userData = (apiResult as Map<String,dynamic>)["response"];
      return responseModel.Response.createResponse(userData);
    } catch (e) {
      print(e.toString());
      return throw e;
    }
  }
}
