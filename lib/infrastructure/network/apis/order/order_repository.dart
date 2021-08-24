import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
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
import 'package:digiresto/domain/entity/order/param/get_outlet_product_category.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_param.dart';
import 'package:digiresto/domain/entity/order/param/update_cart_session_param.dart';
import 'package:digiresto/domain/entity/order/payment_method.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:injectable/injectable.dart';

import 'order_api.dart';

@injectable
class OrderRepository {
  final OrderApi _orderApi;

  OrderRepository(this._orderApi);
  Future<Either<Exception, OutletCategoryResponse>> getOutletByLocation(
      Map<String, dynamic> object) async {
    return await _orderApi.getOutletByLocation(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, OutletCategoryResponse>> getOutletByCategory(
      Map<String, dynamic> object) async {
    return await _orderApi.getOutletByCategory(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, OutletProductCategoryResponse>>
      getOutletProductCategory(GetOutletProductCategoryParam object) async {
    return await _orderApi.getOutletProductCategory(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, OutletListProductResponse>> getOutletListProduct(
      GetOutletProductParam object) async {
    return await _orderApi.getOutletListProduct(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, PromoOutletResponse>> getListPromoOutlet(
      GetListPromoOutletParam object) async {
    return await _orderApi.getListPromoOutlet(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, GetListVoucherOutletResponse>> getListVoucherOutlet(
      GetListVoucherOutletParam object) async {
    return await _orderApi.getListVoucherOutlet(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, List<PromoOutlet>>> getPromoOutlet(
      Map<String, dynamic> object) async {
    return await _orderApi.getPromoOutlet(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, List<HotPromo>>> getHotPromo(
      GetHotPromoParam object) async {
    return await _orderApi.getHotPromo(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, List<StaticBanner>>> getStaticBanner(
      Map<String, dynamic> object) async {
    return await _orderApi.getStaticBanner(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, DetailOutletResponse>> getDetailOutlet(
      GetDetailOutletParam object) async {
    return await _orderApi.getDetailOutlet(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, List<PaymentMethod>>> getPaymentMethod(
      Map<String, dynamic> object) async {
    return await _orderApi.getPaymentMethod(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, List<DeliveryMethod>>> deliveryInquiry(
      Map<String, dynamic> object) async {
    return await _orderApi.deliveryInquiry(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, CartSessionResponseApi>> createCartSession(
      CreateCartSessionParam object) async {
    return await _orderApi.createCartSession(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, CartSessionResponseApi>> getCartSession(
      GetCartSessionParam object) async {
    return await _orderApi.getCartSession(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, CartSessionResponseApi>> updateCartSession(
      UpdateCartSessionParam object) async {
    return await _orderApi.updateCartSession(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Either<Exception, CheckoutResponse>> checkout(String sessionId) async {
    return await _orderApi.checkout(sessionId).then((value) {
      return value;
    });
  }
}
