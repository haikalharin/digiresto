import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:boilerplate/data/network/constants/endpoints.dart';
class OtpValidate {
  bool isMember;

  OtpValidate({this.isMember});
  factory OtpValidate.createOtp(Map<String,dynamic> object){
    return OtpValidate(
      isMember: object['isMember'],
    );
  }
}