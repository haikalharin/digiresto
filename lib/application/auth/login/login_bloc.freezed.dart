// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return _PhoneNumberChanged(
      phoneNumberStr,
    );
  }

  _PinChanged pinChanged(String pinStr) {
    return _PinChanged(
      pinStr,
    );
  }

  _VerifOtpPressed verifOtpPressed() {
    return const _VerifOtpPressed();
  }

  _LoginPressed loginPressed() {
    return const _LoginPressed();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() loginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_LoginPressed value) loginPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumberStr = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumberStr);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'LoginEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() loginPressed,
  }) {
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_LoginPressed value) loginPressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements LoginEvent {
  const factory _PhoneNumberChanged(String phoneNumberStr) =
      _$_PhoneNumberChanged;

  String get phoneNumberStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PinChangedCopyWith<$Res> {
  factory _$PinChangedCopyWith(
          _PinChanged value, $Res Function(_PinChanged) then) =
      __$PinChangedCopyWithImpl<$Res>;
  $Res call({String pinStr});
}

/// @nodoc
class __$PinChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$PinChangedCopyWith<$Res> {
  __$PinChangedCopyWithImpl(
      _PinChanged _value, $Res Function(_PinChanged) _then)
      : super(_value, (v) => _then(v as _PinChanged));

  @override
  _PinChanged get _value => super._value as _PinChanged;

  @override
  $Res call({
    Object? pinStr = freezed,
  }) {
    return _then(_PinChanged(
      pinStr == freezed
          ? _value.pinStr
          : pinStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PinChanged implements _PinChanged {
  const _$_PinChanged(this.pinStr);

  @override
  final String pinStr;

  @override
  String toString() {
    return 'LoginEvent.pinChanged(pinStr: $pinStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PinChanged &&
            (identical(other.pinStr, pinStr) ||
                const DeepCollectionEquality().equals(other.pinStr, pinStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pinStr);

  @JsonKey(ignore: true)
  @override
  _$PinChangedCopyWith<_PinChanged> get copyWith =>
      __$PinChangedCopyWithImpl<_PinChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() loginPressed,
  }) {
    return pinChanged(pinStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(pinStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_LoginPressed value) loginPressed,
  }) {
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (pinChanged != null) {
      return pinChanged(this);
    }
    return orElse();
  }
}

abstract class _PinChanged implements LoginEvent {
  const factory _PinChanged(String pinStr) = _$_PinChanged;

  String get pinStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PinChangedCopyWith<_PinChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifOtpPressedCopyWith<$Res> {
  factory _$VerifOtpPressedCopyWith(
          _VerifOtpPressed value, $Res Function(_VerifOtpPressed) then) =
      __$VerifOtpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$VerifOtpPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$VerifOtpPressedCopyWith<$Res> {
  __$VerifOtpPressedCopyWithImpl(
      _VerifOtpPressed _value, $Res Function(_VerifOtpPressed) _then)
      : super(_value, (v) => _then(v as _VerifOtpPressed));

  @override
  _VerifOtpPressed get _value => super._value as _VerifOtpPressed;
}

/// @nodoc

class _$_VerifOtpPressed implements _VerifOtpPressed {
  const _$_VerifOtpPressed();

  @override
  String toString() {
    return 'LoginEvent.verifOtpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VerifOtpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() loginPressed,
  }) {
    return verifOtpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) {
    if (verifOtpPressed != null) {
      return verifOtpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_LoginPressed value) loginPressed,
  }) {
    return verifOtpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (verifOtpPressed != null) {
      return verifOtpPressed(this);
    }
    return orElse();
  }
}

abstract class _VerifOtpPressed implements LoginEvent {
  const factory _VerifOtpPressed() = _$_VerifOtpPressed;
}

/// @nodoc
abstract class _$LoginPressedCopyWith<$Res> {
  factory _$LoginPressedCopyWith(
          _LoginPressed value, $Res Function(_LoginPressed) then) =
      __$LoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginPressedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginPressedCopyWith<$Res> {
  __$LoginPressedCopyWithImpl(
      _LoginPressed _value, $Res Function(_LoginPressed) _then)
      : super(_value, (v) => _then(v as _LoginPressed));

  @override
  _LoginPressed get _value => super._value as _LoginPressed;
}

/// @nodoc

class _$_LoginPressed implements _LoginPressed {
  const _$_LoginPressed();

  @override
  String toString() {
    return 'LoginEvent.loginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() loginPressed,
  }) {
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? loginPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_LoginPressed value) loginPressed,
  }) {
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_LoginPressed value)? loginPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginPressed implements LoginEvent {
  const factory _LoginPressed() = _$_LoginPressed;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required PhoneNumber phoneNumber,
      required Pin pin,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, LoginPin>> authFailureOrSuccessOption,
      required Option<Either<AuthFailure, String>> otpFailureOrSuccessOption}) {
    return _LoginState(
      phoneNumber: phoneNumber,
      pin: pin,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Pin get pin => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, LoginPin>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, String>> get otpFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {PhoneNumber phoneNumber,
      Pin pin,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, LoginPin>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, String>> otpFailureOrSuccessOption});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? pin = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? otpFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as Pin,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, LoginPin>>,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption == freezed
          ? _value.otpFailureOrSuccessOption
          : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PhoneNumber phoneNumber,
      Pin pin,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, LoginPin>> authFailureOrSuccessOption,
      Option<Either<AuthFailure, String>> otpFailureOrSuccessOption});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? pin = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? otpFailureOrSuccessOption = freezed,
  }) {
    return _then(_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as Pin,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, LoginPin>>,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption == freezed
          ? _value.otpFailureOrSuccessOption
          : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.phoneNumber,
      required this.pin,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption,
      required this.otpFailureOrSuccessOption});

  @override
  final PhoneNumber phoneNumber;
  @override
  final Pin pin;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, LoginPin>> authFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, String>> otpFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, pin: $pin, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption, otpFailureOrSuccessOption: $otpFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.pin, pin) ||
                const DeepCollectionEquality().equals(other.pin, pin)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)) &&
            (identical(other.otpFailureOrSuccessOption,
                    otpFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.otpFailureOrSuccessOption,
                    otpFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(otpFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required PhoneNumber phoneNumber,
      required Pin pin,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, LoginPin>> authFailureOrSuccessOption,
      required Option<Either<AuthFailure, String>>
          otpFailureOrSuccessOption}) = _$_LoginState;

  @override
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @override
  Pin get pin => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, LoginPin>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, String>> get otpFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
