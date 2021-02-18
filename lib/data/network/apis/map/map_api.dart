import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/auth/login_pin_model.dart';
import 'package:boilerplate/models/auth/otp_validate_model.dart';
import 'package:boilerplate/models/auth/otp_wame_model.dart';
import 'package:boilerplate/models/auth/register_model.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class MapApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  MapApi(this._dioClient, this._restClient);

  Future<Geocode> geocode(Map<String,dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetGeocode;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string":{
          "lat": object["latitude"].toString(),
          "lng": object["longitude"].toString(),},
        "body":{}});
      var userData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      return Geocode.createGeocode(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
