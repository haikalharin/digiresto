import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_failure.freezed.dart';

@freezed
class OrderFailure with _$OrderFailure implements Exception {
  const factory OrderFailure.salesTypeNull() = _SalesTypeNull;
  const factory OrderFailure.getOutletByLocationFail() =
      _GetOutletByLocationFail;
  const factory OrderFailure.getOutletByCategoryFail() =
      _GetOutletByCategoryFail;
  const factory OrderFailure.getOutletByMerchantFail() =
      _GetOutletByMerchantFail;
  const factory OrderFailure.getListPromoOutletFail() = _GetListPromoOutletFail;
  const factory OrderFailure.getListVoucherOutletFail() =
      _GetListVoucherOutletFail;
  const factory OrderFailure.getOutletListProductFail() = _GetOutletListProduct;
  const factory OrderFailure.getOutletProductCategoryFail() =
      _GetOutletProductCategoryFail;
  const factory OrderFailure.getPromoOutletFail() = _GetPromoOutletFail;
  const factory OrderFailure.getHotPromoFail() = _GetHotPromoFail;
  const factory OrderFailure.getDetailOutletFail() = _GetDetailOutletFail;
  const factory OrderFailure.getPaymentMethodFail() = _GetPaymentMethodFail;
  const factory OrderFailure.deliveryInquiryFail() = _DeliveryInquiryFail;
  const factory OrderFailure.createCartSessionFail() = _CreateCartSessionFail;
  const factory OrderFailure.reorderCartFail() = _ReorderCartFail;
  const factory OrderFailure.addCartFail() = _AddCartFail;
  const factory OrderFailure.updateCartFail() = _UpdateCartFail;
  const factory OrderFailure.removeCartFail() = _RemoveCartFail;
  const factory OrderFailure.getCartSessionFail() = _GetCartSessionFail;
  const factory OrderFailure.removeCartSessionFail() = _RemoveCartSessionFail;
  const factory OrderFailure.updateCartSessionFail() = _UpdateCartSessionFail;
  const factory OrderFailure.checkoutCartFail() = _CheckoutCartFail;
  const factory OrderFailure.setPaymentMethodIDFail() = _SetPaymentMethodIDFail;
  const factory OrderFailure.getPaymentMethodIDFail() = _GetPaymentMethodIDFail;
  const factory OrderFailure.setDeliveryMethodIDFail() =
      _SetDeliveryMethodIDFail;
  const factory OrderFailure.getDeliveryMethodIDFail() =
      _GetDeliveryMethodIDFail;
  const factory OrderFailure.setDineInIDMethodFail() = _SetDineInIDMethodFail;
  const factory OrderFailure.getDineInIDMethodFail() = _GetDineInIDMethodFail;
  const factory OrderFailure.setVoucherMethodIDFail() = _SetVoucherMethodIDFail;
  const factory OrderFailure.getVoucherMethodIDFail() = _GetVoucherMethodIDFail;
  const factory OrderFailure.sessionExpired() = _SessionExpired;
}
