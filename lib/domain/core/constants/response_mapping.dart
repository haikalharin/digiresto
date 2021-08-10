import 'package:digiresto/domain/entity/key_value_model.dart';
import 'package:dio/dio.dart';

class ResponseMapping {
  ResponseMapping._();
  static List<KeyValueModel> httpMapping = [
    KeyValueModel(key: "200", value: "success"),
    KeyValueModel(
        key: "401", value: "unauthorized, invalid outlet, invalid merchant"),
    KeyValueModel(key: "999", value: "merchant already exists"),
    KeyValueModel(key: "521", value: "transaction has been paid or not exists"),
    KeyValueModel(key: "522", value: "payment failed"),
    KeyValueModel(key: "523", value: "payment failed"),
    KeyValueModel(key: "524", value: "delivery booking code not found"),
    KeyValueModel(key: "526", value: "driver not found"),
    KeyValueModel(key: "527", value: "delivery area not covered"),
    KeyValueModel(key: "528", value: "invalid voucher"),
    KeyValueModel(
        key: "529", value: "traktir with current user already exists"),
    KeyValueModel(key: "530", value: "not enough credit"),
    KeyValueModel(key: "531", value: "delivery info is not complete"),
    KeyValueModel(key: "532", value: "invalid transaction amount"),
  ];

  static List<KeyValueModel> dataResponseMapping = [
    KeyValueModel(key: "21", value: "Invalid token"),
    //KeyValueModel(key: "401", value: "You has been login from another device"),
    KeyValueModel(key: "999", value: "PIN/Password tidak valid"),
  ];
  static KeyValueModel getMessage(DioError dioError) {
    String? paramHttpCode = dioError.response?.statusCode.toString();

    if (paramHttpCode == "200" ||
        paramHttpCode == "401" ||
        paramHttpCode == "500") {
      try {
        String paramDataResponseCode =
            dioError.response!.data["response"]["code"].toString();
        print("error code >> " + paramDataResponseCode);
        print("error http code >> " + paramHttpCode!);
        for (int i = 0; i <= dataResponseMapping.length; i++) {
          if (dataResponseMapping[i].key.toString() == paramDataResponseCode) {
            return dataResponseMapping[i];
          }
        }
        return KeyValueModel(
            key: dioError.response!.data["response"]["code"],
            value: dioError.response!.data["response"]["message"]);
      } catch (e) {
        return KeyValueModel(
            key: dioError.response!.data["response"]["code"],
            value: dioError.response!.data["response"]["message"]);
      }
    } else {
      if (paramHttpCode == "" ||
          paramHttpCode == null ||
          paramHttpCode == "null") {
        return KeyValueModel(key: "1", value: dioError.message);
      } else {
        try {
          for (int j = 0; j <= httpMapping.length; j++) {
            if (httpMapping[j].key == paramHttpCode) {
              return httpMapping[j];
            }
          }
          return KeyValueModel(key: "0", value: dioError.message);
        } catch (e) {
          return KeyValueModel(key: "0", value: dioError.message);
        }
      }
    }
  }
}
