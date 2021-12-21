import 'package:freezed_annotation/freezed_annotation.dart';

part 'catering_failure.freezed.dart';

@freezed
class CateringFailure with _$CateringFailure {
  const factory CateringFailure.getOutletByLocationFail() =
      _GetOutletByLocationFail;
  const factory CateringFailure.noInternet() = _NoInternet;
  const factory CateringFailure.generalError() = _GeneralError;
  const factory CateringFailure.serverError() = _ServerError;
  const factory CateringFailure.noData() = _NoData;
  const factory CateringFailure.unexpected() = _Unexpected;
  const factory CateringFailure.sessionExpired() = _SessionExpired;
}
