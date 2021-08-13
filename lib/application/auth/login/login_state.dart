part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required PhoneNumber phoneNumber,
    required Pin pin,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, LoginPin>> authFailureOrSuccessOption,
    required Option<Either<AuthFailure, String>> otpFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        phoneNumber: PhoneNumber(''),
        pin: Pin(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
        otpFailureOrSuccessOption: none(),
      );
}
