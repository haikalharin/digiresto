part of 'validate_otp_bloc.dart';

@freezed
class ValidateOtpState with _$ValidateOtpState {
  const factory ValidateOtpState({
    required Otp otp,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, bool>> validateFailureOrSuccess,
    required Option<Function> onInvalidOtpOption,
  }) = _ValidateOtpState;

  factory ValidateOtpState.initial() => ValidateOtpState(
        otp: Otp(''),
        showErrorMessages: false,
        isSubmitting: false,
        validateFailureOrSuccess: none(),
        onInvalidOtpOption: none(),
      );
}
