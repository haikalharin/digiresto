import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/entity/order/cart_session_model.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/hot_promo_model.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/get_hot_promo_param.dart';
import 'package:digiresto/domain/entity/order/param/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/payment_method.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class OrderApi {
  final INetworkService _networkService;
  final IStorage _storage;
  OrderApi(
    this._networkService,
    this._storage,
  );

  Future<Either<Exception, OutletCategoryResponse>> getOutletByLocation(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetOutletByLocation;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "location": object["location"].toString(),
              //     "page": object["page"],
              //     "filter": object["filter"].toString(),
              //     "body": {}
              //   }
              // }
              );
      return right(OutletCategoryResponse.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, OutletCategoryResponse>> getOutletByCategory(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetOutletByCategory;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "location": object["location"].toString(),
              //     "page": object["page"],
              //     "filter": object["filter"].toString(),
              //     "body": {}
              //   }
              // }
              );
      return right(OutletCategoryResponse.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      print(e.toString());
      print(stactrace.toString());
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, List<PromoOutlet>>> getPromoOutlet(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetPromoOutlet;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "location": object["location"].toString(),
              //     "page": object["page"],
              //     "filter": object["filter"].toString(),
              //     "body": {}
              //   }
              //}
              );

      var userData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<PromoOutlet> listUserData = [];
      for (int i = 0; i < userData.length; i++) {
        listUserData.add(PromoOutlet.createPromoOutlet(userData[i]));
      }
      return right(listUserData);
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, List<HotPromo>>> getHotPromo(
      GetHotPromoParam object) async {
    try {
      String apiUrl = Endpoints.urlGetHotPromo;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "location": object.location,
              //     "page": object.page,
              //     "filter": object.filter,
              //   },
              //   "body": {}
              // }
              );

      List<dynamic> listUserData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<HotPromo> promos = [];
      for (int i = 0; i < listUserData.length; i++) {
        promos.add(HotPromo.createHotPromo(listUserData[i]));
      }
      return right(promos);
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, List<StaticBanner>>> getStaticBanner(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetStaticBanner;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "location": object["location"],
              //     "page": object["page"],
              //     "filter": object["filter"],
              //   },
              //   "body": {}
              // }
              );

      List<dynamic> listUserData = (apiResult as Map<String, dynamic>)[
          'data']; //mengambil data data didalam jsonObject
      List<StaticBanner> staticBanner = [];
      for (int i = 0; i < listUserData.length; i++) {
        staticBanner.add(StaticBanner.createStaticBanner(listUserData[i]));
      }
      return right(staticBanner);
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, DetailOutletResponse>> getDetailOutlet(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetDetailOutlet;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "outletName": object["outletName"],
              //     "page": object["page"],
              //     "limit": object["limit"],
              //     "produclds": object["produclds"],
              //     "filter": object["filter"],
              //     "category": object["category"]
              //   },
              //   "body": {}
              // }
              );
      return right(DetailOutletResponse.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, OutletProductCategoryResponse>>
      getOutletProductCategory(Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetOutletProductCategory;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "outletName": object["outletName"],
              //     "page": object["page"],
              //     "limit": object["limit"],
              //     "produclds": object["produclds"],
              //     "filter": object["filter"],
              //     "category": object["category"]
              //   },
              //   "body": {}
              // }
              );
      return right(OutletProductCategoryResponse.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, OutletListProductResponse>> getOutletListProduct(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetProduct;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "outletName": object["outletName"],
              //     "page": object["page"],
              //     "limit": object["limit"],
              //     "produclds": object["produclds"],
              //     "filter": object["filter"],
              //     "category": object["category"]
              //   },
              //   "body": {}
              // }
              );
      return right(OutletListProductResponse.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, CartSessionResponse>> createCartSession(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlCreateCartSession;
      final apiResult = await _networkService.postHttp(
          path: apiUrl, content: {"query_string": {}, "body": object["body"]});
      var data = (apiResult as Map<String, dynamic>)['data'];
      return right(CartSessionResponse(
          sessionId: data['sessionId'],
          transactionData:
              CartSession.createCartSession(data['transactionData'])));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, CartSessionResponse>> updateCartSession(
      UpdateCartSessionParam object) async {
    try {
      String apiUrl = Endpoints.urlUpdateCartSession;
      final apiResult = await _networkService.postHttp(
          path: apiUrl, content: object.toJson());
      var data = (apiResult as Map<String, dynamic>)['data'];
      return right(CartSessionResponse(
          sessionId: data['sessionId'],
          transactionData:
              CartSession.createCartSession(data['transactionData'])));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, CheckoutResponse>> checkout(String sessionId) async {
    try {
      String apiUrl = Endpoints.urlCheckoutCartSession;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "sessionId": sessionId,
        },
        "body": {}
      });
      var data = (apiResult as Map<String, dynamic>)['data'];
      return right(CheckoutResponse.create(data));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, List<PaymentMethod>>> getPaymentMethod(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlGetPaymentMethod;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "outletName": object['outlet'],
              //     "salesType": object['salesType']
              //   },
              //   "body": {},
              // }
              );
      var methods = (apiResult as Map<String, dynamic>)['data'];
      return right(List<PaymentMethod>.from(
          methods.map((data) => PaymentMethod.create(data))));
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }

  Future<Either<Exception, List<DeliveryMethod>>> deliveryInquiry(
      Map<String, dynamic> object) async {
    try {
      String apiUrl = Endpoints.urlDeliveryInquiry;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object
              // {
              //   "query_string": {
              //     "outletName": object['outlet'],
              //   },
              //   "body": {
              //     "customer": {
              //       "location": object['location'],
              //       "weight": object['weight'],
              //     }
              //   },
              // }
              );
      var methods = (apiResult as Map<String, dynamic>)['data'];
      return right(List<DeliveryMethod>.from(
          methods.map((data) => DeliveryMethod.create(data))));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }
}
