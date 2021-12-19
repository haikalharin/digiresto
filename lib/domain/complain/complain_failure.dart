import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'complain_failure.freezed.dart';

@freezed
class ComplainFailure with _$ComplainFailure {
  const factory ComplainFailure.noInternet() = _NoInternet;
  const factory ComplainFailure.noData() = _NoData;
  const factory ComplainFailure.serverError() = _ServerError;
  const factory ComplainFailure.unableToUpdate() = _UnableToUpdate;
  const factory ComplainFailure.unexpected() = _Unexpected;
  const factory ComplainFailure.invalidToken() = _InvalidToken;
  const factory ComplainFailure.sessionExpired() = _SessionExpired;
  const factory ComplainFailure.generalError(
      StatusMessageDisplayResponse? message) = _GeneralError;
}
