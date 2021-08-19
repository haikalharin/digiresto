part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required PhoneNumber phoneNumber,
    required Pin pin,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isShowDialogShake,
    required Option<Either<AuthFailure, UserAuth>> loginFailureOrSuccessOption,
    required Option<Either<AuthFailure, String>> otpFailureOrSuccessOption,
    required Option<Function> onInvalidPin,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        phoneNumber: PhoneNumber(''),
        pin: Pin(''),
        showErrorMessages: false,
        isSubmitting: false,
        isShowDialogShake: false,
        loginFailureOrSuccessOption: none(),
        otpFailureOrSuccessOption: none(),
        onInvalidPin: none(),
      );
}
