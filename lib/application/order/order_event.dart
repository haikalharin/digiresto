part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOutletByLocation(
      GetOutletByLocationParam request) = _GetOutletByLocation;

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

  const factory OrderEvent.updateCartSession(UpdateCartSessionParam request) =
      _UpdateCartSession;

  const factory OrderEvent.checkoutCart(CheckoutCartParam request) =
      _CheckoutCart;
}
