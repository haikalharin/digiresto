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

  static Future<OtpValidate> connectToApi(String handphone,String otp) async{
    String apiUrl = Endpoints.urlValidateOtp;
    var apiResult = await http.post(apiUrl, body: {
      "phoneNumber": handphone,
      "otp": otp
    });
    var jsonObject = json.decode(apiResult.body);
    var otpData = (jsonObject as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
    return OtpValidate.createOtp(otpData);
  }
}