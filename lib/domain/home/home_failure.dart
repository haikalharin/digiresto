import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_failure.freezed.dart';

@freezed
class HomeFailure with _$HomeFailure {
  const factory HomeFailure.noInternet() = _NoInternet;
  const factory HomeFailure.noData() = _NoData;
  const factory HomeFailure.locationError() = _LocationError;
  const factory HomeFailure.serverError() = _ServerError;
  const factory HomeFailure.unableToUpdate() = _UnableToUpdate;
  const factory HomeFailure.unexpected() = _Unexpected;
  const factory HomeFailure.sessionExpired() = _SessionExpired;
  const factory HomeFailure.generalError(
      StatusMessageDisplayResponse? message) = _GeneralError;
}
