import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/auth/login_pin_model.dart';
import 'package:boilerplate/models/auth/otp_validate_model.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/models/auth/register_model.dart';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class AuthApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  AuthApi(this._dioClient, this._restClient);

  Future<LoginPin> login(String handPhone,String pin) async {
    try {
      String apiUrl = Endpoints.urlLogin;

      final apiResult = await _dioClient.post(apiUrl,data: {
        "username": handPhone,
        "password": pin
      });
      var userData = (apiResult as Map<String,dynamic>)['data'];
      return LoginPin.createPin(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<OtpWame> getOtp(String handPhone) async {
    try {
      String apiUrl = Endpoints.urlGetOtp+handPhone;

      final apiResult = await _dioClient.get(apiUrl);
      var userData = (apiResult as Map<String,dynamic>)['data'];
      return OtpWame.createOtp(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }



  Future<OtpValidate> validateOtp(String handPhone,String otp) async{
    try {
      String apiUrl = Endpoints.urlValidateOtp;

      final apiResult = await _dioClient.post(apiUrl,data: {
        "phoneNumber": handPhone,
        "otp": otp
      });
      var userData = (apiResult as Map<String,dynamic>)['data'];
      return OtpValidate.createOtp(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }


  Future<Register> register(Map<String,dynamic> object) async{
    try {
      String apiUrl = Endpoints.urlRegister;
      final apiResult = await _dioClient.post(apiUrl,data: {
        "pushId": object["pushid"].toString(),
        "uid": object["uid"].toString(),
        "credential": object["credential"].toString(),
        "name": object["name"].toString(),
        "accountNumber": object["accountNumber"].toString(),
        "email": object["email"].toString(),
      });
      var userData = (apiResult as Map<String,dynamic>)['response'];
      return Register.createUser(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
