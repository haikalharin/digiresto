import 'package:dartz/dartz.dart';
import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';
import 'package:digiresto/domain/entity/order/digi_discount_outlet_response.dart';
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
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/entity/order/static_banner_model.dart';
import 'package:digiresto/domain/order/order_cart_dine_in_model.dart';
import 'package:digiresto/domain/order/order_cart_drive_thru_model.dart';
import 'package:injectable/injectable.dart';

import 'order_api.dart';
import 'order_local.dart';

@injectable
class OrderRepository {
  final OrderApi _orderApi;
  final OrderLocal _orderLocal;

  OrderRepository(this._orderApi, this._orderLocal);

  Future<String?> removeCartSesion() async {
    return _orderLocal.removeCartSesion();
  }

  Future<PaymentMethodDataResponse?> setPaymentMethodID(
      PaymentMethodDataResponse data) async {
    return _orderLocal.setPaymentMethod(data);
  }

  Future<PaymentMethodDataResponse?> getPaymentMethodID() async {
    return _orderLocal.getPaymentMethod();
  }

  Future<DeliveryMethodDataResponse?> setDeliveryMethodID(
      DeliveryMethodDataResponse data) async {
    return _orderLocal.setDeliveryMethod(data);
  }

  Future<DeliveryMethodDataResponse?> getDeliveryMethodID() async {
    return _orderLocal.getDeliveryMethod();
  }

  Future<OrderCartDineInModel?> setDineInIDMethod(
      OrderCartDineInModel data) async {
    return _orderLocal.setDineInIDMethod(data);
  }

  Future<OrderCartDineInModel?> getDineInIDMethod() async {
    return _orderLocal.getDineInIDMethod();
  }

  Future<OrderCartDriveThruModel?> setDriveThruIDMethod(
      OrderCartDriveThruModel data) async {
    return _orderLocal.setDriveThruIDMethod(data);
  }

  Future<OrderCartDriveThruModel?> getDriveThruIDMethod() async {
    return _orderLocal.getDriveThruIDMethod();
  }

  Future<GetListVoucherOutletDataResponse?> setVoucherMethodID(
      GetListVoucherOutletDataResponse data) async {
    return _orderLocal.setVoucherMethod(data);
  }

  Future<GetListVoucherOutletDataResponse?> getVoucherMethodID() async {
    return _orderLocal.getVoucherMethod();
  }

  Future<UpdateCartSessionBodyParam?> getProduct() async {
    return _orderLocal.getProduct();
  }

  Future<UpdateCartSessionBodyParam?> setProduct(
      CreateUpdateCartSessionItemParam object,
      DetailOutletDataResponse outlet) async {
    return _orderLocal.setProduct(object, outlet);
  }

  Future<UpdateCartSessionBodyParam?> reorderCart(
      CreateCartSessionParam object, int outletId) async {
    return _orderLocal.reorderCart(object, outletId);
  }

  Future<UpdateCartSessionBodyParam?> removeProduct(
      CreateUpdateCartSessionItemParam object) async {
    return _orderLocal.removeProduct(object);
  }

  Future<DetailOutletDataResponse?> setCartOutletDetailID(
      DetailOutletDataResponse object) async {
    return _orderLocal.setOutletDetailID(object);
  }

  Future<DetailOutletDataResponse?> getCartOutletDetailID() async {
    return _orderLocal.getOutletDetailID();
  }

  Future<String?> getSalesTypeCartID() async {
    return _orderLocal.getSalesTypeCart();
  }

  Future<String?> setSalesTypeCartID(String value) async {
    return _orderLocal.setSalesTypeCart(value);
  }

  Future<UserAuth?> getLocalUserProfile() async {
    return _orderLocal.getLocalUserProfile();
  }

  Future<Either<Exception, String?>> getSessionId() async {
    return await _orderLocal.getSessionId().then((value) {
      return value;
    });
  }

  Future<Either<Exception, String?>> setSessionId(String value) async {
    return await _orderLocal.setSessionId(value).then((value) {
      return value;
    });
  }

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

  Future<Either<Exception, OutletCategoryResponse>> getOutletByMerchant(
      GetOutletByMerchantParam object) async {
    return await _orderApi.getOutletByMerchant(object).then((value) {
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

  Future<Either<Exception, CartSessionResponseApi>> checkVoucherOutlet(
      UpdateCartSessionParam object) async {
    return await _orderApi.checkVoucherOutlet(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, List<DigiDiscountOutletDataResponse>>>
      getPromoOutlet(Map<String, dynamic> object) async {
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

  Future<Either<Exception, List<PaymentMethodDataResponse>>> getPaymentMethod(
      Map<String, dynamic> object) async {
    return await _orderApi.getPaymentMethod(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, List<DeliveryMethodDataResponse>>> deliveryInquiry(
      Map<String, dynamic> object) async {
    return await _orderApi.deliveryInquiry(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, CartSessionResponseApi?>> createCartSession(
      CreateCartSessionParam object) async {
    return await _orderApi.createCartSession(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, CartSessionResponseApi?>> getCartSession(
      GetCartSessionParam object) async {
    return await _orderApi.getCartSession(object).then((value) {
      return value;
    });
  }

  Future<Either<Exception, CartSessionResponseApi?>> updateCartSession(
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
