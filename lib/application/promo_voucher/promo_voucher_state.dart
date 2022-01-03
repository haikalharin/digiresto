part of 'promo_voucher_bloc.dart';

@freezed
class PromoVoucherState with _$PromoVoucherState {
  const factory PromoVoucherState.initial() = _Initial;

  const factory PromoVoucherState.loading() = _Loading;

  const factory PromoVoucherState.loadSuccess() = _LoadSuccess;

  const factory PromoVoucherState.loadFailure(PromoVoucherFailure failure) =
      _LoadFailure;

  const factory PromoVoucherState.getPromoOutletSuccess(
      IList<PromoOutlet> promos) = _GetPromoOutletSuccess;

  const factory PromoVoucherState.getVoucherOutletSuccess(
          IList<Datum> vouchers) =
      _GetVoucherOutletSuccess;
}
