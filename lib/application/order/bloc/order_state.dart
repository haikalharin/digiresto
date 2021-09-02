part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loadInProgress() = _LoadInProgress;
  const factory OrderState.loadSuccess() = _LoadSuccess;
  const factory OrderState.loadFailure(OrderFailure e) = _LoadFailure;

  const factory OrderState.getOutletByLocationSuccess(
      List<OutletCategoryDataResponse> response) = _GetOutletByLocationSucess;

  const factory OrderState.getOutletByCategorySuccess(
      List<OutletCategoryDataResponse> response) = _GetOutletByCategorySucess;

  const factory OrderState.getOutletByMerchantSuccess(
      List<OutletCategoryDataResponse> response) = _GetOutletByMerchantSucess;

  const factory OrderState.getPromoOutletSuccess(List<PromoOutlet> response) =
      _GetPromoOutletSuccess;

  const factory OrderState.getListPromoOutletSuccess(
      List<PromoOutletDataResponse> response) = _GetListPromoOutletSuccess;

  const factory OrderState.getListVoucherOutletSuccess(
          List<GetListVoucherOutletDataResponse> response) =
      _GetListVoucherOutletSuccess;

  const factory OrderState.getOutletListProductSuccess(
          List<OutletListProductDataResponse> response) =
      _GetOutletListProductSuccess;

  const factory OrderState.getOutletProductCategorySuccess(
          List<OutletProductCategoryDataResponse> response) =
      _GetOutletProductCategorySuccess;

  const factory OrderState.getHotPromoSuccess(List<HotPromo> response) =
      _GetHotPromoSuccess;

  const factory OrderState.getDetailOutletSuccess(
      DetailOutletDataResponse response) = _GetDetailOutletSuccess;

  const factory OrderState.getPaymentMethodSuccess(
      List<PaymentMethodDataResponse> response) = _GetPaymentMethodSuccess;

  const factory OrderState.deliveryInquirySuccess(
      List<DeliveryMethodDataResponse> response) = _GeliveryInquirySuccess;

  const factory OrderState.addCartSuccess(CartSessionResponse response) =
      _AddCartSuccess;

  const factory OrderState.removeCartSuccess(CartSessionResponse response) =
      _RemoveCartSuccess;

  const factory OrderState.createCartSessionSuccess(
      CartSessionResponse response) = _CreateCartSessionSuccess;

  const factory OrderState.getCartSessionSuccess(CartSessionResponse response) =
      _GetCartSessionSuccess;

  const factory OrderState.updateCartSessionSuccess(
      CartSessionResponse response) = _UpdateCartSessionSuccess;

  const factory OrderState.checkoutCartSuccess(CheckoutResponse response) =
      _CheckoutCartSuccess;

  const factory OrderState.getSalesTypeCartSuccess(String value) =
      _GetSalesTypeCartSuccess;

  const factory OrderState.setSalesTypeCartSuccess(String value) =
      _SetSalesTypeCartSuccess;
}
