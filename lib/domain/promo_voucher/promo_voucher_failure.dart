import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_voucher_failure.freezed.dart';

@freezed
class PromoVoucherFailure with _$PromoVoucherFailure {
  const factory PromoVoucherFailure.noInternet() = _NoInternet;
  const factory PromoVoucherFailure.generalError() = _GeneralError;
  const factory PromoVoucherFailure.serverError() = _ServerError;
  const factory PromoVoucherFailure.noData() = _NoData;
  const factory PromoVoucherFailure.unexpected() = _Unexpected;
  const factory PromoVoucherFailure.sessionExpired() = _SessionExpired;
}