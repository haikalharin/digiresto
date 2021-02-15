import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:boilerplate/data/network/constants/endpoints.dart';
class OtpWame {
  String wame;

  OtpWame({this.wame});
  factory OtpWame.createOtp(Map<String,dynamic> object){
    return OtpWame(
      wame: object['wame'],
    );
  }

}