import 'dart:convert';

import 'package:boilerplate/models/key_value_model.dart';
import 'package:dio/dio.dart';

class ResponseMapping {
  ResponseMapping._();
  static List<KeyValueModel> HttpMapping = [
    KeyValueModel(key: "200", value: "success"),
    KeyValueModel(key: "401", value: "unauthorized, invalid outlet, invalid merchant"),
    KeyValueModel(key: "999", value: "merchant already exists"),
    KeyValueModel(key: "521", value: "transaction has been paid or not exists"),
    KeyValueModel(key: "522", value: "payment failed"),
    KeyValueModel(key: "523", value: "payment failed"),
    KeyValueModel(key: "524", value: "delivery booking code not found"),
    KeyValueModel(key: "526", value: "driver not found"),
    KeyValueModel(key: "527", value: "delivery area not covered"),
    KeyValueModel(key: "528", value: "invalid voucher"),
    KeyValueModel(key: "529", value: "traktir with current user already exists"),
    KeyValueModel(key: "530", value: "not enough credit"),
    KeyValueModel(key: "531", value: "delivery info is not complete"),
    KeyValueModel(key: "532", value: "invalid transaction amount"),
  ];

  static List<KeyValueModel> DataResponseMapping = [
    KeyValueModel(key: "21", value: "Invalid token"),
  ];
  static KeyValueModel getMessage(DioError dioError){
    String paramHttpCode = dioError.response?.statusCode.toString();

    if (paramHttpCode=="200" || paramHttpCode=="401"){
      String paramDataResponseCode= dioError.response.data["response"]["code"].toString();
      for (int i=0; i <= DataResponseMapping.length; i++ ){
        if (DataResponseMapping[i].key==paramDataResponseCode){
          return DataResponseMapping[i];
        }
      }
    }else{
      if (paramHttpCode=="" || paramHttpCode==null || paramHttpCode=="null"  ){
        return KeyValueModel(key: "1", value: dioError.message);
      }else {
        for (int j = 0; j <= HttpMapping.length; j++) {
          if (HttpMapping[j].key == paramHttpCode) {
            return HttpMapping[j];
          }
        }
        return KeyValueModel(key: "0", value: dioError.message);
      }
    }
  }

}
