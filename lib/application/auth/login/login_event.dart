part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneNumberChanged(String phoneNumberStr) =
      _PhoneNumberChanged;
  const factory LoginEvent.pinChanged(String pinStr) = _PinChanged;
  const factory LoginEvent.verifOtpPressed() = _VerifOtpPressed;
  const factory LoginEvent.loginPressed() = _LoginPressed;
}
