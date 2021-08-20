part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loadInProgress() = _LoadInProgress;
  const factory OrderState.loadSuccess() = _LoadSuccess;
  const factory OrderState.loadFailure(Exception message) = _LoadFailure;

  const factory OrderState.getOutletByLocationSuccess(
      List<OutletList> response) = _GetOutletByLocationSucess;

  const factory OrderState.getOutletByCategorySuccess(
      List<OutletCategoryDataResponse> response) = _GetOutletByCategorySucess;

  const factory OrderState.getPromoOutletSuccess(List<PromoOutlet> response) =
      _GetPromoOutletSuccess;

  const factory OrderState.getHotPromoSuccess(List<HotPromo> response) =
      _GetHotPromoSuccess;

  const factory OrderState.getDetailOutletSuccess(DetailOutlet response) =
      _GetDetailOutletSuccess;

  const factory OrderState.getPaymentMethodSuccess(
      List<PaymentMethod> response) = _GetPaymentMethodSuccess;

  const factory OrderState.deliveryInquirySuccess(
      List<DeliveryMethod> response) = _GeliveryInquirySuccess;

  const factory OrderState.createCartSessionSuccess(
      CartSessionResponse response) = _CreateCartSessionSuccess;

  const factory OrderState.updateCartSessionSuccess(
      CartSessionResponse response) = _UpdateCartSessionSuccess;

  const factory OrderState.checkoutCartSuccess(CheckoutResponse response) =
      _CheckoutCartSuccess;
}
