import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.noInternet() = NoInternet;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidPin() = InvalidPin;
  const factory AuthFailure.invalidOtp(String? message) = InvalidOtp;
}
