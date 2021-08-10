import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/hot_promo_model.dart';
import 'package:digiresto/domain/entity/order/outlet_list.dart';
import 'package:digiresto/domain/entity/order/payment_method.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:injectable/injectable.dart';

import 'order_api.dart';

@injectable
class OrderRepository {
  final OrderApi _orderApi;

  OrderRepository(this._orderApi);
  Future<List<OutletList>> getOutletByLocation(
      Map<String, dynamic> object) async {
    return await _orderApi.getOutletByLocation(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<List<PromoOutlet>> getPromoOutlet(Map<String, dynamic> object) async {
    return await _orderApi.getPromoOutlet(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<List<HotPromo>> getHotPromo(Map<String, dynamic> object) async {
    return await _orderApi.getHotPromo(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Either<Exception, List<StaticBanner>>> getStaticBanner(
      Map<String, dynamic> object) async {
    return await _orderApi.getStaticBanner(object).then((value) {
      return value;
    });
  }

  Future<DetailOutlet> getDetailOutlet(Map<String, dynamic> object) async {
    return await _orderApi.getDetailOutlet(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<List<PaymentMethod>> getPaymentMethod(
      Map<String, dynamic> object) async {
    return await _orderApi.getPaymentMethod(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<List<DeliveryMethod>> deliveryInquiry(
      Map<String, dynamic> object) async {
    return await _orderApi.deliveryInquiry(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Map<String, dynamic>> createCartSession(
      Map<String, dynamic> object) async {
    return await _orderApi.createCartSession(object).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<Map<String, dynamic>> updateCartSession(
      Map<String, dynamic> object, String sessionId) async {
    return await _orderApi.updateCartSession(object, sessionId).then((value) {
      return value;
    }).catchError((error) => throw error);
  }

  Future<CheckoutResponse> checkout(String sessionId) async {
    return await _orderApi.checkout(sessionId).then((value) {
      return value;
    }).catchError((error) => throw error);
  }
}
