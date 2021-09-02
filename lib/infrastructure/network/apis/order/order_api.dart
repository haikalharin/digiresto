import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/core/constants/network/endpoints.dart';
import 'package:digiresto/domain/core/exceptions/exceptions.dart';
import 'package:digiresto/domain/core/interfaces/i_network_service.dart';
import 'package:digiresto/domain/core/interfaces/i_storage.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/hot_promo_model.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/param/create_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/get_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_hot_promo_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_voucher_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_merchant_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_category.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_param.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/payment_method_response.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
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

  Future<Either<Exception, OutletCategoryResponse>> getOutletByMerchant(
      GetOutletByMerchantParam object) async {
    try {
      String apiUrl = Endpoints.urlGetOutletByMerchant;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object.toJson()
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
      GetDetailOutletParam object) async {
    try {
      String apiUrl = Endpoints.urlGetDetailOutlet;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object.toJson()
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
      getOutletProductCategory(GetOutletProductCategoryParam object) async {
    try {
      String apiUrl = Endpoints.urlGetOutletProductCategory;
      final apiResult =
          await _networkService.postHttp(path: apiUrl, content: object.toJson()
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
      GetOutletProductParam object) async {
    try {
      String apiUrl = Endpoints.urlGetProduct;
      final apiResult = await _networkService.postHttp(
          path: apiUrl, content: object.toJson());
//           {
// 	"query_string": {
//         "outletId": "822",
//         "categoryId": "1409",
//         "page": 1,
//         "limit": 5
// 	},
// 	"body": {

// 	}
// }
      return right(OutletListProductResponse.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      print("$e error");
      print(stactrace.toString());
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, PromoOutletResponse>> getListPromoOutlet(
      GetListPromoOutletParam object) async {
    try {
      String apiUrl = Endpoints.urlGetListPromoOutlet;
      final apiResult = await _networkService.postHttp(
          path: apiUrl, content: object.toJson());
      // {
// 	"query_string": {
//         "outletId": "254",
//         "merchantId": "340"
// 	},
// 	"body": {

// 	}
// }
      return right(PromoOutletResponse.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, GetListVoucherOutletResponse>> getListVoucherOutlet(
      GetListVoucherOutletParam object) async {
    try {
      String apiUrl = Endpoints.urlGetListVoucherOutlet;
      final apiResult = await _networkService.postHttp(
          path: apiUrl, content: object.toJson());
      // {
// 	"query_string": {
//         "outletId": "254",
//         "merchantId": "340"
// 	},
// 	"body": {

// 	}
// }
      return right(GetListVoucherOutletResponse.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, CartSessionResponseApi?>> createCartSession(
      CreateCartSessionParam object) async {
    try {
      String apiUrl = Endpoints.urlCreateCartSession;
      final apiResult = await _networkService.postHttp(
          path: apiUrl, content: object.toJson());
      return right(CartSessionResponseApi.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, CartSessionResponseApi?>> getCartSession(
      GetCartSessionParam object) async {
    try {
      String apiUrl = Endpoints.urlGetCartSession;
      final apiResult = await _networkService.postHttp(path: apiUrl, content: {
        "query_string": {
          "sessionId": object.sessionId,
        },
        "body": {}
      });
      return right(CartSessionResponseApi.fromJson(apiResult));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, CartSessionResponseApi?>> updateCartSession(
      UpdateCartSessionParam object) async {
    try {
      String apiUrl = Endpoints.urlUpdateCartSession;
      final apiResult = await _networkService.postHttp(
          path: apiUrl, content: object.toJson());
      return right(CartSessionResponseApi.fromJson(apiResult));
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

  Future<Either<Exception, List<PaymentMethodDataResponse>>> getPaymentMethod(
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
      return right(List<PaymentMethodDataResponse>.from(
          methods.map((data) => PaymentMethodDataResponse.fromJson(data))));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }

  Future<Either<Exception, List<DeliveryMethodDataResponse>>> deliveryInquiry(
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
      return right(List<DeliveryMethodDataResponse>.from(
          methods.map((data) => DeliveryMethodDataResponse.fromJson(data))));
    } on ServerException catch (e) {
      return left(e);
    } on TimeOutException catch (_) {
      return left(TimeOutException());
    } catch (e, stactrace) {
      return left(NetworkException(message: stactrace));
    }
  }
}
