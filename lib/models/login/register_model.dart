import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:boilerplate/data/network/constants/endpoints.dart';
class Register {
  String code;
  String status;
  String message;

  Register({this.code,this.status,this.message});
  factory Register.createUser(Map<String,dynamic> object){
    return Register(
      code: object['code'],
      status: object['status'],
      message: object['message'],
    );
  }

  static Future<Register> connectToApi(Map<String,dynamic> object) async{
    String apiUrl = Endpoints.urlRegister;
    var apiResult = await http.post(apiUrl, body: {
      "pushId": object["pushid"],
      "uid": object["uid"],
      "credential": object["credential"],
      "name": object["name"],
      "accountNumber": object["accountNumber"],
      "email": object["email"],
    });
    var jsonObject = json.decode(apiResult.body);
    var otpData = (jsonObject as Map<String,dynamic>)['response']; //mengambil data data didalam jsonObject
    return Register.createUser(otpData);
  }
}