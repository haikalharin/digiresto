part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started() = _Started;
  const factory RegisterEvent.nameChanged(String nameStr) = _NameChanged;
  const factory RegisterEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory RegisterEvent.pinChanged(
    String pinStr,
  ) = _PinChanged;
  const factory RegisterEvent.retypePinChanged(
    String retypePinStr,
  ) = _RetypePinChanged;
  const factory RegisterEvent.onNext({
    required String phoneNumber,
    required PageController pageController,
    required Function onPinError,
    required Function onRetypePinError,
  }) = _OnNext;
  const factory RegisterEvent.toggleAgree() = _ToggleAgree;
  const factory RegisterEvent.buttonSubmitted({
    required String phoneNumberStr,
  }) = _ButtonSubmitted;
}
