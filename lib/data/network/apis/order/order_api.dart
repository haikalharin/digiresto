import 'dart:async';

import 'package:boilerplate/data/network/constants/endpoints.dart';
import 'package:boilerplate/data/network/dio_client.dart';
import 'package:boilerplate/data/network/rest_client.dart';
import 'package:boilerplate/models/order/cart_session_model.dart';
import 'package:boilerplate/models/order/checkout_response.dart';
import 'package:boilerplate/models/order/delivery_method_model.dart';
import 'package:boilerplate/models/order/detail_outlet_model.dart';
import 'package:boilerplate/models/order/hot_promo_model.dart';
import 'package:boilerplate/models/order/outlet_list.dart';
import 'package:boilerplate/models/order/payment_method.dart';
import 'package:boilerplate/models/order/promo_outlet_model.dart';
import 'package:boilerplate/models/map/geocode.dart';
import 'package:boilerplate/models/order/static_banner_model.dart';
import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

class OrderApi {
  // dio instance
  final DioClient _dioClient;

  // rest-client instance
  final RestClient _restClient;

  // injecting dio instance
  OrderApi(this._dioClient, this._restClient);

  Future<List<OutletList>> getOutletByLocation(Map<String,dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetOutletByLocation;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string":{
          "location": object["location"].toString(),
          "page": object["page"],
          "filter": object["filter"].toString(),
        "body":{}}});

      var userData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      List<OutletList> listUserData= [];
      for(int i = 0;i<userData.length;i++){
        listUserData.add(OutletList.createOutletList(userData[i]));
      }
      return listUserData;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<PromoOutlet>> getPromoOutlet(Map<String,dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetPromoOutlet;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string":{
          "location": object["location"].toString(),
          "page": object["page"],
          "filter": object["filter"].toString(),
          "body":{}}});

      var userData = (apiResult as Map<String,dynamic>)['data']; //mengambil data data didalam jsonObject
      List<PromoOutlet> listUserData= [];
      for(int i = 0;i<userData.length;i++){
        listUserData.add(PromoOutlet.createPromoOutlet(userData[i]));
      }
      return listUserData;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<HotPromo>> getHotPromo(Map<String,dynamic> object) async{
    try {
      String apiUrl = Endpoints.urlGetHotPromo;
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
      List<HotPromo> promos= [];
      for(int i = 0;i<listUserData.length;i++){
        promos.add(HotPromo.createHotPromo(listUserData[i]));
      }
      return promos;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<StaticBanner>> getStaticBanner(Map<String,dynamic> object) async{
    try {
      String apiUrl = Endpoints.urlGetStaticBanner;
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
      List<StaticBanner> staticBanner= [];
      for(int i = 0;i<listUserData.length;i++){
        staticBanner.add(StaticBanner.createStaticBanner(listUserData[i]));
      }
      return staticBanner;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<DetailOutlet> getDetailOutlet(Map<String,dynamic> object) async{
    try {
      String apiUrl = Endpoints.urlGetProduct;
      final apiResult = await _dioClient.post(apiUrl,data: {
        "query_string":{
          "outletName":object["outletName"],
          "page": object["page"],
          "limit": object["limit"],
          "produclds": object["produclds"],
          "filter":object["filter"],
          "category":object["category"]
        },
        "body":{
        }
      });
      var userData = (apiResult as Map<String,dynamic>)['data'];
      return DetailOutlet.createDetailOutlet(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Map<String, dynamic>> createCartSession(Map<String,dynamic> object) async{
    try {
      String apiUrl = Endpoints.urlCreateCartSession;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {},
        "body": object
      });
      var data = (apiResult as Map<String,dynamic>)['data'];
      return {
        "transactionData": CartSession.createCartSession(data['transactionData']),
        "sessionId": data['sessionId']
      };
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
  Future<Map<String, dynamic>> updateCartSession(Map<String,dynamic> object, String sessionId) async{
    try {
      String apiUrl = Endpoints.urlUpdateCartSession;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {
          "sessionId": sessionId,
        },
        "body": object
      });
      var data = (apiResult as Map<String,dynamic>)['data'];
      return {
        "transactionData": CartSession.createCartSession(data['transactionData']),
        "sessionId": data['sessionId']
      };
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
  Future<CheckoutResponse> checkout(String sessionId) async{
    try {
      String apiUrl = Endpoints.urlCheckoutCartSession;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {
          "sessionId": sessionId,
        },
        "body": {}
      });
      var data = (apiResult as Map<String,dynamic>)['data'];
      return CheckoutResponse.create(data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<PaymentMethod>> getPaymentMethod(Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetPaymentMethod;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {
          "outletName": object['outlet'],
          "salesType": object['salesType']
        },
        "body": {},
      });
      var methods = (apiResult as Map<String, dynamic>)['data'];
      return List<PaymentMethod>.from(methods.map((data) => PaymentMethod.create(data)));
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<DeliveryMethod>> deliveryInquiry(Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlDeliveryInquiry;
      final apiResult = await _dioClient.post(apiUrl, data: {
        "query_string": {
          "outletName": object['outlet'],
        },
        "body": {
          "customer": {
            "location": object['location'],
            "weight": object['weight'],
          }
        },
      });
      var methods = (apiResult as Map<String, dynamic>)['data'];
      return List<DeliveryMethod>.from(methods.map((data) => DeliveryMethod.create(data)));
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
