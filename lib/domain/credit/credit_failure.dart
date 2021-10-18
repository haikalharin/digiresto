import 'package:freezed_annotation/freezed_annotation.dart';
part 'credit_failure.freezed.dart';

@freezed
class CreditFailure with _$CreditFailure {
  const factory CreditFailure.noInternet() = _NoInternet;
  const factory CreditFailure.generalError() = _GeneralError;
  const factory CreditFailure.serverError() = _ServerError;
  const factory CreditFailure.noData() = _NoData;
  const factory CreditFailure.unexpected() = _Unexpected;
  const factory CreditFailure.sessionExpired() = _SessionExpired;
}
