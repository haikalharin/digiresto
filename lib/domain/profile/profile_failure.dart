import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.noInternet() = _NoInternet;
  const factory ProfileFailure.noData() = _NoData;
  const factory ProfileFailure.serverError() = _ServerError;
  const factory ProfileFailure.unableToUpdate() = _UnableToUpdate;
  const factory ProfileFailure.unexpected() = _Unexpected;
  const factory ProfileFailure.invalidToken() = _InvalidToken;
  const factory ProfileFailure.sessionExpired() = _SessionExpired;
  const factory ProfileFailure.generalError() = _GeneralError;
}
