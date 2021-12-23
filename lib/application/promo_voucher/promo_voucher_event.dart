part of 'promo_voucher_bloc.dart';

@freezed
class PromoVoucherEvent with _$PromoVoucherEvent {
  const factory PromoVoucherEvent.getPromoOutlet(
      {required String outletId, required String merchantId}) = _GetPromoOutlet;

  const factory PromoVoucherEvent.getVoucherOutlet(
      {required String outletId,
      required String merchantId}) = _GetVoucherOutlet;

  const factory PromoVoucherEvent.refreshPromoOutlet(
      {required String outletId,
      required String merchantId}) = _RefreshPromoOutlet;

  const factory PromoVoucherEvent.refreshVoucherOutlet(
      {required String outletId,
      required String merchantId}) = _refreshVoucherOutlet;
}
