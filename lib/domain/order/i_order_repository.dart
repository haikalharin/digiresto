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

abstract class IOrderRepository {
  Future<String?> removeCartSesion();

  Future<PaymentMethodDataResponse?> setPaymentMethodID(
      PaymentMethodDataResponse? data);

  Future<PaymentMethodDataResponse?> getPaymentMethodID();

  Future<DeliveryMethodDataResponse?> setDeliveryMethodID(
      DeliveryMethodDataResponse? data);

  Future<DeliveryMethodDataResponse?> getDeliveryMethodID();

  Future<OrderCartDineInModel?> setDineInIDMethod(OrderCartDineInModel? data);

  Future<OrderCartDineInModel?> getDineInIDMethod();

  Future<OrderCartDriveThruModel?> setDriveThruIDMethod(
      OrderCartDriveThruModel? data);

  Future<OrderCartDriveThruModel?> getDriveThruIDMethod();

  Future<GetListVoucherOutletDataResponse?> setVoucherMethodID(
      GetListVoucherOutletDataResponse? data);

  Future<GetListVoucherOutletDataResponse?> getVoucherMethodID();

  Future<UpdateCartSessionBodyParam?> getProduct();

  Future<UpdateCartSessionBodyParam?> setProduct(
      CreateUpdateCartSessionItemParam object, DetailOutletDataResponse outlet);

  Future<UpdateCartSessionBodyParam?> reorderCart(CreateCartSessionParam object,
      int outletId);

  Future<UpdateCartSessionBodyParam?> removeProduct(
      CreateUpdateCartSessionItemParam object);

  Future<DetailOutletDataResponse?> setCartOutletDetailID(
      DetailOutletDataResponse object);

  Future<DetailOutletDataResponse?> getCartOutletDetailID();

  Future<String?> getSalesTypeCartID();

  Future<String?> setSalesTypeCartID(String value);

  Future<UserAuth?> getLocalUserProfile();

  Future<Either<Exception, String>> getSessionId();

  Future<Either<Exception, String?>> setSessionId(String value);

  Future<Either<Exception, OutletCategoryResponse>> getOutletByLocation(
      Map<String, dynamic> object);

  Future<Either<Exception, OutletCategoryResponse>> getOutletByCategory(
      Map<String, dynamic> object);

  Future<Either<Exception, OutletCategoryResponse>> getOutletByMerchant(
      GetOutletByMerchantParam object);

  Future<Either<Exception, OutletProductCategoryResponse>>
  getOutletProductCategory(GetOutletProductCategoryParam object);

  Future<Either<Exception, OutletListProductResponse>> getOutletListProduct(
      GetOutletProductParam object);

  Future<Either<Exception, PromoOutletResponse>> getListPromoOutlet(
      GetListPromoOutletParam object);

  Future<Either<Exception, GetListVoucherOutletResponse>> getListVoucherOutlet(
      GetListVoucherOutletParam object);

  Future<Either<Exception, CartSessionResponseApi>> checkVoucherOutlet(
      UpdateCartSessionParam object);

  Future<Either<Exception, List<DigiDiscountOutletDataResponse>>>
  getPromoOutlet(Map<String, dynamic> object);

  Future<Either<Exception, List<HotPromo>>> getHotPromo(
      GetHotPromoParam object);

  Future<Either<Exception, List<StaticBanner>>> getStaticBanner(
      Map<String, dynamic> object);

  Future<Either<Exception, DetailOutletResponse>> getDetailOutlet(
      GetDetailOutletParam object);

  Future<Either<Exception, List<PaymentMethodDataResponse>>> getPaymentMethod(
      Map<String, dynamic> object);

  Future<Either<Exception, List<DeliveryMethodDataResponse>>> deliveryInquiry(
      Map<String, dynamic> object);

  Future<Either<Exception, CartSessionResponseApi?>> createCartSession(
      CreateCartSessionParam object);

  Future<Either<Exception, CartSessionResponseApi?>> getCartSession(
      GetCartSessionParam object);

  Future<Either<Exception, CartSessionResponseApi?>> updateCartSession(
      UpdateCartSessionParam object);

  Future<Either<Exception, CheckoutResponse>> checkout(String sessionId);

  Future<bool> setOrderCart(
      {UpdateCartSessionParam? update, CreateCartSessionParam? create});

  Future<CreateCartSessionParam?> getOrderCart();

  Future<Either<Exception, DetailOutletResponse>> getDetailOutletByMerchant(
    String location,
    String merchantId,
  );

  Future<Either<Exception, GetListVoucherOutletResponse>> getBannerShopee();
}
