part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOutletByLocation(
      GetOutletByLocationParam request) = _GetOutletByLocation;

  const factory OrderEvent.getOutletByCategory(
      GetOutletByCategoryParam request) = _GetOutletByCategory;

  const factory OrderEvent.getOutletByMerchant(
      GetOutletByMerchantParam request) = _GetOutletByMerchant;

  const factory OrderEvent.getOutletProductCategory(
      GetOutletProductCategoryParam request) = _GetOutletProductCategory;

  const factory OrderEvent.getListPromoOutlet(GetListPromoOutletParam request) =
      _GetListPromoOutlet;

  const factory OrderEvent.getListVoucherOutlet(
      GetListVoucherOutletParam request) = _GetListVoucherOutlet;

  const factory OrderEvent.getOutletListProduct(GetOutletProductParam request) =
      _GetOutletListProduct;

  const factory OrderEvent.getPromoOutlet(GetPromoOutletParam request) =
      _GetPromoOutlet;

  const factory OrderEvent.getHotPromo(GetHotPromoParam request) = _GetHotPromo;

  const factory OrderEvent.getDetailOutlet(GetDetailOutletParam request) =
      _GetDetailOutlet;

  const factory OrderEvent.getPaymentMethod(GetPaymentMethodParam request) =
      _GetPaymentMethod;

  const factory OrderEvent.deliveryInquiry(DeliveryInquiryParam request) =
      _GeliveryInquiry;

  const factory OrderEvent.createCartSession(CreateCartSessionParam request) =
      _CreateCartSession;

  const factory OrderEvent.addCart(CreateUpdateCartSessionItemParam request,
      DetailOutletDataResponse outlet, String salesType) = _AddCart;

  const factory OrderEvent.updateCart(String note) = _UpdateCart;

  const factory OrderEvent.removeCart(
      CreateUpdateCartSessionItemParam request) = _RemoveCart;

  const factory OrderEvent.getCartSession() = _GetCartSession;

  const factory OrderEvent.updateCartSession(UpdateCartSessionParam request) =
      _UpdateCartSession;

  const factory OrderEvent.checkoutCart() = _CheckoutCart;

  const factory OrderEvent.getSalesTypeCart() = _GetSalesTypeCart;

  const factory OrderEvent.setSalesTypeCart(String value) = _SetSalesTypeCart;

  const factory OrderEvent.setPaymentMethodID(PaymentMethodDataResponse data) =
      _SetPaymentMethodID;

  const factory OrderEvent.getPaymentMethodID() = _GetPaymentMethodID;

  const factory OrderEvent.setDeliveryMethodID(
      DeliveryMethodDataResponse data) = _SetDeliveryMethodID;

  const factory OrderEvent.getDeliveryMethodID() = _GetDeliveryMethodID;

  const factory OrderEvent.setVoucherMethodID(
      GetListVoucherOutletDataResponse data) = _SetVoucherMethodID;

  const factory OrderEvent.getVoucherMethodID() = _GetVoucherMethodID;
}
