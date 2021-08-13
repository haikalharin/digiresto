import 'dart:async';
import 'dart:convert';

import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/entity/auth/login_pin_model.dart';
import 'package:digiresto/domain/entity/auth/otp_validate_model.dart';
import 'package:digiresto/domain/entity/auth/otp_wame_model.dart';
import 'package:digiresto/domain/entity/auth/register_model.dart';
import 'package:digiresto/infrastructure/network/dio_client.dart';
import 'package:injectable/injectable.dart';

import '../../dio_client.dart';

@injectable
class AuthApi {
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  AuthApi(this._dioClient);

  Future<LoginPin> login(String handPhone, String pin) async {
    try {
      String apiUrl = Endpoints.urlLogin;

      final apiResult = await _dioClient
          .post(apiUrl, data: {"username": handPhone, "password": pin});
      var userData = (apiResult as Map<String, dynamic>)['data'];
      return LoginPin.createPin(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<LoginPin> nonUserLogin(String clientId) async {
    try {
      String apiUrl = Endpoints.urlLogin;
      Codec<String, String> stringToBase64 = utf8.fuse(base64);
      final apiResult = await _dioClient.post(apiUrl, data: {
        "grant_type": "client_credentials",
        "client_id": clientId,
        "client_secret": stringToBase64
            .encode(clientId + Endpoints.nonUserClientSecret.toString())
      });
      var userData = (apiResult as Map<String, dynamic>)['data'];
      return LoginPin.createPin(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<OtpWame> getOtp(String handPhone) async {
    try {
      String apiUrl = Endpoints.urlGetOtp + handPhone;

      final apiResult = await _dioClient.get(apiUrl);
      var userData = (apiResult as Map<String, dynamic>)['data'];
      return OtpWame.createOtp(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<OtpValidate> validateOtp(String handPhone, String otp) async {
    try {
      String apiUrl = Endpoints.urlValidateOtp;

      final apiResult = await _dioClient
          .post(apiUrl, data: {"phoneNumber": handPhone, "otp": otp});
      var userData = (apiResult as Map<String, dynamic>)['data'];
      return OtpValidate.createOtp(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Register> register(Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlRegister;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "pushId": object["pushid"].toString(),
        "uid": object["uid"].toString(),
        "credential": object["credential"].toString(),
        "name": object["name"].toString(),
        "accountNumber": object["accountNumber"].toString(),
        "email": object["email"].toString(),
      });
      var userData = (apiResult as Map<String, dynamic>)['response'];
      return Register.createUser(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
