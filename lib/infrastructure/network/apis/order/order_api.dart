import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/entity/order/cart_session_model.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/hot_promo_model.dart';
import 'package:digiresto/domain/entity/order/outlet_list.dart';
import 'package:digiresto/domain/entity/order/payment_method.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class OrderApi {
  INetworkService _networkService;

  OrderApi(
    this._networkService,
  );

  Future<List<OutletList>> getOutletByLocation(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetOutletByLocation;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "location": object["location"].toString(),
          "page": object["page"],
          "filter": object["filter"].toString(),
          "body": {}
        }
      });

      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<OutletList> listUserData = [];
      for (int i = 0; i < userData.length; i++) {
        listUserData.add(OutletList.createOutletList(userData[i]));
      }
      return listUserData;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<PromoOutlet>> getPromoOutlet(Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetPromoOutlet;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "location": object["location"].toString(),
          "page": object["page"],
          "filter": object["filter"].toString(),
          "body": {}
        }
      });

      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<PromoOutlet> listUserData = [];
      for (int i = 0; i < userData.length; i++) {
        listUserData.add(PromoOutlet.createPromoOutlet(userData[i]));
      }
      return listUserData;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<HotPromo>> getHotPromo(Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetHotPromo;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "location": object["location"],
          "page": object["page"],
          "filter": object["filter"],
        },
        "body": {}
      });

      List<dynamic> listUserData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<HotPromo> promos = [];
      for (int i = 0; i < listUserData.length; i++) {
        promos.add(HotPromo.createHotPromo(listUserData[i]));
      }
      return promos;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Either<Exception, List<StaticBanner>>> getStaticBanner(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetStaticBanner;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "location": object["location"],
          "page": object["page"],
          "filter": object["filter"],
        },
        "body": {}
      });

      List<dynamic> listUserData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<StaticBanner> staticBanner = [];
      for (int i = 0; i < listUserData.length; i++) {
        staticBanner.add(StaticBanner.createStaticBanner(listUserData[i]));
      }
      return right(staticBanner);
    } catch (e) {
      return left(NetworkException(message: e.toString()));
    }
  }

  Future<DetailOutlet> getDetailOutlet(Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetProduct;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "outletName": object["outletName"],
          "page": object["page"],
          "limit": object["limit"],
          "produclds": object["produclds"],
          "filter": object["filter"],
          "category": object["category"]
        },
        "body": {}
      });
      var userData = (apiResult as Map<String, dynamic>)['data'];
      return DetailOutlet.createDetailOutlet(userData);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Map<String, dynamic>> createCartSession(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlCreateCartSession;
      final apiResult = await _networkService.postHttp(
          path: apiUrl, content: {"query_string": {}, "body": object});
      var data = (apiResult as Map<String, dynamic>)['data'];
      return {
        "transactionData":
            CartSession.createCartSession(data['transactionData']),
        "sessionId": data['sessionId']
      };
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Map<String, dynamic>> updateCartSession(
      Map<String, dynamic> object, String sessionId) async {
    try {
      String apiUrl = Endpoints.urlUpdateCartSession;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "sessionId": sessionId,
        },
        "body": object
      });
      var data = (apiResult as Map<String, dynamic>)['data'];
      return {
        "transactionData":
            CartSession.createCartSession(data['transactionData']),
        "sessionId": data['sessionId']
      };
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<CheckoutResponse> checkout(String sessionId) async {
    try {
      String apiUrl = Endpoints.urlCheckoutCartSession;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "sessionId": sessionId,
        },
        "body": {}
      });
      var data = (apiResult as Map<String, dynamic>)['data'];
      return CheckoutResponse.create(data);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<PaymentMethod>> getPaymentMethod(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetPaymentMethod;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "outletName": object['outlet'],
          "salesType": object['salesType']
        },
        "body": {},
      });
      var methods = (apiResult as Map<String, dynamic>)['data'];
      return List<PaymentMethod>.from(
          methods.map((data) => PaymentMethod.create(data)));
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<List<DeliveryMethod>> deliveryInquiry(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlDeliveryInquiry;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
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
      return List<DeliveryMethod>.from(
          methods.map((data) => DeliveryMethod.create(data)));
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
