import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_failure.freezed.dart';

@freezed
class OrderFailure with _$OrderFailure implements Exception {
  const factory OrderFailure.salesTypeNull() = _SalesTypeNull;
  const factory OrderFailure.getOutletByLocationFail(Exception? e) =
      _GetOutletByLocationFail;
  const factory OrderFailure.getOutletByCategoryFail(Exception? e) =
      _GetOutletByCategoryFail;
  const factory OrderFailure.getOutletByMerchantFail(Exception? e) =
      _GetOutletByMerchantFail;
  const factory OrderFailure.getListPromoOutletFail(Exception? e) =
      _GetListPromoOutletFail;
  const factory OrderFailure.getListVoucherOutletFail(Exception? e) =
      _GetListVoucherOutletFail;
  const factory OrderFailure.getOutletListProductFail(Exception? e) =
      _GetOutletListProduct;
  const factory OrderFailure.getOutletProductCategoryFail(Exception? e) =
      _GetOutletProductCategoryFail;
  const factory OrderFailure.getPromoOutletFail(Exception? e) =
      _GetPromoOutletFail;
  const factory OrderFailure.getHotPromoFail(Exception? e) = _GetHotPromoFail;
  const factory OrderFailure.getDetailOutletFail(Exception? e) =
      _GetDetailOutletFail;
  const factory OrderFailure.getPaymentMethodFail(Exception? e) =
      _GetPaymentMethodFail;
  const factory OrderFailure.deliveryInquiryFail(Exception? e) =
      _DeliveryInquiryFail;
  const factory OrderFailure.createCartSessionFail(Exception? e) =
      _CreateCartSessionFail;
  const factory OrderFailure.reorderCartFail(Exception? e) = _ReorderCartFail;
  const factory OrderFailure.addCartFail(Exception? e) = _AddCartFail;
  const factory OrderFailure.updateCartFail(Exception? e) = _UpdateCartFail;
  const factory OrderFailure.removeCartFail(Exception? e) = _RemoveCartFail;
  const factory OrderFailure.getCartSessionFail(Exception? e) =
      _GetCartSessionFail;
  const factory OrderFailure.removeCartSessionFail(Exception? e) =
      _RemoveCartSessionFail;
  const factory OrderFailure.updateCartSessionFail(Exception? e) =
      _UpdateCartSessionFail;
  const factory OrderFailure.checkoutCartFail(Exception? e) = _CheckoutCartFail;
  const factory OrderFailure.setPaymentMethodIDFail(Exception? e) =
      _SetPaymentMethodIDFail;
  const factory OrderFailure.getPaymentMethodIDFail(Exception? e) =
      _GetPaymentMethodIDFail;
  const factory OrderFailure.setDeliveryMethodIDFail(Exception? e) =
      _SetDeliveryMethodIDFail;
  const factory OrderFailure.getDeliveryMethodIDFail(Exception? e) =
      _GetDeliveryMethodIDFail;
  const factory OrderFailure.setDineInIDMethodFail(Exception? e) =
      _SetDineInIDMethodFail;
  const factory OrderFailure.getDineInIDMethodFail(Exception? e) =
      _GetDineInIDMethodFail;
  const factory OrderFailure.setDriveThruIDMethodFail(Exception? e) =
  _SetDriveThruIDMethodFail;
  const factory OrderFailure.getDriveThruIDMethodFail(Exception? e) =
  _GetDriveThruIDMethodFail;
  const factory OrderFailure.setVoucherMethodIDFail(Exception? e) =
      _SetVoucherMethodIDFail;
  const factory OrderFailure.getVoucherMethodIDFail(Exception? e) =
      _GetVoucherMethodIDFail;
  const factory OrderFailure.sessionExpired() = _SessionExpired;
  const factory OrderFailure.checkVoucherOutletFail(Exception? e) =
      _CheckVoucherOutletFail;
  const factory OrderFailure.getTransactionPendingFail() =
      _GetTransactionPendingFail;
  const factory OrderFailure.cancelTransactionFail() = _CancelTransactionFail;
}
