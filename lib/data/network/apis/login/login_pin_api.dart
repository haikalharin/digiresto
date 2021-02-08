import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/auth/login_pin_model.dart';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class LoginPinApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  LoginPinApi(this._dioClient, this._restClient);

  static Future<LoginPin> login(String handPhone,String pin) async{
    String apiUrl = Endpoints.urlLogin;
    var apiResult = await http.post(apiUrl, body: {
      "username": handPhone,
      "password": pin
    });
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
    return LoginPin.createPin(userData);
  }


}
