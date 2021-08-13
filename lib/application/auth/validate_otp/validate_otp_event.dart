part of 'validate_otp_bloc.dart';

@freezed
class ValidateOtpEvent with _$ValidateOtpEvent {
  const factory ValidateOtpEvent.started(
      StreamController<ErrorAnimationType> errorAnimation) = _Started;
  const factory ValidateOtpEvent.inputSubmitting(
    String phoneNumberStr,
    String otpStr,
  ) = _InputSubmitting;
  const factory ValidateOtpEvent.resendOtp(String phoneNumberStr) = _ResendOtp;
}
