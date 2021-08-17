part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required FullName fullName,
    required EmailAddress email,
    required Pin pin,
    required Pin retypePin,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool agreeTerms,
    required Option<Either<AuthFailure, RegisterStatus>>
        registerFailureOrSuccessOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        fullName: FullName(''),
        email: EmailAddress(''),
        pin: Pin(''),
        retypePin: Pin(''),
        showErrorMessages: false,
        isSubmitting: false,
        agreeTerms: false,
        registerFailureOrSuccessOption: none(),
      );
}
