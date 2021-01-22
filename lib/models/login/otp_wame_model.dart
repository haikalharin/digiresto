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

  static Future<OtpWame> connectToApi(String handphone) async{
    String apiUrl = Endpoints.urlGetOtp+handphone;
    var apiResult = await http.get(apiUrl);
    var jsonObject = json.decode(apiResult.body);
    var otpData = (jsonObject as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
    return OtpWame.createOtp(otpData);
  }
}