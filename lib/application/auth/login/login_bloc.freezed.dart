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

  _Started started() {
    return const _Started();
  }

  _OnInvalidPin otpVerified(Function onInvalidPin) {
    return _OnInvalidPin(
      onInvalidPin,
    );
  }

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

  _PinSubmitted pinSubmitted() {
    return const _PinSubmitted();
  }

  _OnShake onShake() {
    return const _OnShake();
  }

  _OnChangeUrl onChangeUrl({required String url}) {
    return _OnChangeUrl(
      url: url,
    );
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
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
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$OnInvalidPinCopyWith<$Res> {
  factory _$OnInvalidPinCopyWith(
          _OnInvalidPin value, $Res Function(_OnInvalidPin) then) =
      __$OnInvalidPinCopyWithImpl<$Res>;
  $Res call({Function onInvalidPin});
}

/// @nodoc
class __$OnInvalidPinCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$OnInvalidPinCopyWith<$Res> {
  __$OnInvalidPinCopyWithImpl(
      _OnInvalidPin _value, $Res Function(_OnInvalidPin) _then)
      : super(_value, (v) => _then(v as _OnInvalidPin));

  @override
  _OnInvalidPin get _value => super._value as _OnInvalidPin;

  @override
  $Res call({
    Object? onInvalidPin = freezed,
  }) {
    return _then(_OnInvalidPin(
      onInvalidPin == freezed
          ? _value.onInvalidPin
          : onInvalidPin // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_OnInvalidPin implements _OnInvalidPin {
  const _$_OnInvalidPin(this.onInvalidPin);

  @override
  final Function onInvalidPin;

  @override
  String toString() {
    return 'LoginEvent.otpVerified(onInvalidPin: $onInvalidPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnInvalidPin &&
            (identical(other.onInvalidPin, onInvalidPin) ||
                const DeepCollectionEquality()
                    .equals(other.onInvalidPin, onInvalidPin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(onInvalidPin);

  @JsonKey(ignore: true)
  @override
  _$OnInvalidPinCopyWith<_OnInvalidPin> get copyWith =>
      __$OnInvalidPinCopyWithImpl<_OnInvalidPin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) {
    return otpVerified(onInvalidPin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(onInvalidPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) {
    return otpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(this);
    }
    return orElse();
  }
}

abstract class _OnInvalidPin implements LoginEvent {
  const factory _OnInvalidPin(Function onInvalidPin) = _$_OnInvalidPin;

  Function get onInvalidPin => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnInvalidPinCopyWith<_OnInvalidPin> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) {
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
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
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
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
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) {
    return pinChanged(pinStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
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
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) {
    return pinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
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
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) {
    return verifOtpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
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
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) {
    return verifOtpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
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
abstract class _$PinSubmittedCopyWith<$Res> {
  factory _$PinSubmittedCopyWith(
          _PinSubmitted value, $Res Function(_PinSubmitted) then) =
      __$PinSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PinSubmittedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$PinSubmittedCopyWith<$Res> {
  __$PinSubmittedCopyWithImpl(
      _PinSubmitted _value, $Res Function(_PinSubmitted) _then)
      : super(_value, (v) => _then(v as _PinSubmitted));

  @override
  _PinSubmitted get _value => super._value as _PinSubmitted;
}

/// @nodoc

class _$_PinSubmitted implements _PinSubmitted {
  const _$_PinSubmitted();

  @override
  String toString() {
    return 'LoginEvent.pinSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PinSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) {
    return pinSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (pinSubmitted != null) {
      return pinSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) {
    return pinSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (pinSubmitted != null) {
      return pinSubmitted(this);
    }
    return orElse();
  }
}

abstract class _PinSubmitted implements LoginEvent {
  const factory _PinSubmitted() = _$_PinSubmitted;
}

/// @nodoc
abstract class _$OnShakeCopyWith<$Res> {
  factory _$OnShakeCopyWith(_OnShake value, $Res Function(_OnShake) then) =
      __$OnShakeCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnShakeCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$OnShakeCopyWith<$Res> {
  __$OnShakeCopyWithImpl(_OnShake _value, $Res Function(_OnShake) _then)
      : super(_value, (v) => _then(v as _OnShake));

  @override
  _OnShake get _value => super._value as _OnShake;
}

/// @nodoc

class _$_OnShake implements _OnShake {
  const _$_OnShake();

  @override
  String toString() {
    return 'LoginEvent.onShake()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnShake);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) {
    return onShake();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (onShake != null) {
      return onShake();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) {
    return onShake(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (onShake != null) {
      return onShake(this);
    }
    return orElse();
  }
}

abstract class _OnShake implements LoginEvent {
  const factory _OnShake() = _$_OnShake;
}

/// @nodoc
abstract class _$OnChangeUrlCopyWith<$Res> {
  factory _$OnChangeUrlCopyWith(
          _OnChangeUrl value, $Res Function(_OnChangeUrl) then) =
      __$OnChangeUrlCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class __$OnChangeUrlCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$OnChangeUrlCopyWith<$Res> {
  __$OnChangeUrlCopyWithImpl(
      _OnChangeUrl _value, $Res Function(_OnChangeUrl) _then)
      : super(_value, (v) => _then(v as _OnChangeUrl));

  @override
  _OnChangeUrl get _value => super._value as _OnChangeUrl;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_OnChangeUrl(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnChangeUrl implements _OnChangeUrl {
  const _$_OnChangeUrl({required this.url});

  @override
  final String url;

  @override
  String toString() {
    return 'LoginEvent.onChangeUrl(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnChangeUrl &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$OnChangeUrlCopyWith<_OnChangeUrl> get copyWith =>
      __$OnChangeUrlCopyWithImpl<_OnChangeUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Function onInvalidPin) otpVerified,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function(String pinStr) pinChanged,
    required TResult Function() verifOtpPressed,
    required TResult Function() pinSubmitted,
    required TResult Function() onShake,
    required TResult Function(String url) onChangeUrl,
  }) {
    return onChangeUrl(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Function onInvalidPin)? otpVerified,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function(String pinStr)? pinChanged,
    TResult Function()? verifOtpPressed,
    TResult Function()? pinSubmitted,
    TResult Function()? onShake,
    TResult Function(String url)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (onChangeUrl != null) {
      return onChangeUrl(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnInvalidPin value) otpVerified,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PinChanged value) pinChanged,
    required TResult Function(_VerifOtpPressed value) verifOtpPressed,
    required TResult Function(_PinSubmitted value) pinSubmitted,
    required TResult Function(_OnShake value) onShake,
    required TResult Function(_OnChangeUrl value) onChangeUrl,
  }) {
    return onChangeUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnInvalidPin value)? otpVerified,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PinChanged value)? pinChanged,
    TResult Function(_VerifOtpPressed value)? verifOtpPressed,
    TResult Function(_PinSubmitted value)? pinSubmitted,
    TResult Function(_OnShake value)? onShake,
    TResult Function(_OnChangeUrl value)? onChangeUrl,
    required TResult orElse(),
  }) {
    if (onChangeUrl != null) {
      return onChangeUrl(this);
    }
    return orElse();
  }
}

abstract class _OnChangeUrl implements LoginEvent {
  const factory _OnChangeUrl({required String url}) = _$_OnChangeUrl;

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnChangeUrlCopyWith<_OnChangeUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required PhoneNumber phoneNumber,
      required Pin pin,
      required bool showErrorMessages,
      required bool isSubmitting,
      required bool isShowDialogShake,
      required Option<Either<AuthFailure, UserAuth>>
          loginFailureOrSuccessOption,
      required Option<Either<AuthFailure, String>> otpFailureOrSuccessOption,
      required Option<Function> onInvalidPin}) {
    return _LoginState(
      phoneNumber: phoneNumber,
      pin: pin,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      isShowDialogShake: isShowDialogShake,
      loginFailureOrSuccessOption: loginFailureOrSuccessOption,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption,
      onInvalidPin: onInvalidPin,
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
  bool get isShowDialogShake => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, UserAuth>> get loginFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<AuthFailure, String>> get otpFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Function> get onInvalidPin => throw _privateConstructorUsedError;

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
      bool isShowDialogShake,
      Option<Either<AuthFailure, UserAuth>> loginFailureOrSuccessOption,
      Option<Either<AuthFailure, String>> otpFailureOrSuccessOption,
      Option<Function> onInvalidPin});
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
    Object? isShowDialogShake = freezed,
    Object? loginFailureOrSuccessOption = freezed,
    Object? otpFailureOrSuccessOption = freezed,
    Object? onInvalidPin = freezed,
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
      isShowDialogShake: isShowDialogShake == freezed
          ? _value.isShowDialogShake
          : isShowDialogShake // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailureOrSuccessOption: loginFailureOrSuccessOption == freezed
          ? _value.loginFailureOrSuccessOption
          : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, UserAuth>>,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption == freezed
          ? _value.otpFailureOrSuccessOption
          : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
      onInvalidPin: onInvalidPin == freezed
          ? _value.onInvalidPin
          : onInvalidPin // ignore: cast_nullable_to_non_nullable
              as Option<Function>,
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
      bool isShowDialogShake,
      Option<Either<AuthFailure, UserAuth>> loginFailureOrSuccessOption,
      Option<Either<AuthFailure, String>> otpFailureOrSuccessOption,
      Option<Function> onInvalidPin});
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
    Object? isShowDialogShake = freezed,
    Object? loginFailureOrSuccessOption = freezed,
    Object? otpFailureOrSuccessOption = freezed,
    Object? onInvalidPin = freezed,
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
      isShowDialogShake: isShowDialogShake == freezed
          ? _value.isShowDialogShake
          : isShowDialogShake // ignore: cast_nullable_to_non_nullable
              as bool,
      loginFailureOrSuccessOption: loginFailureOrSuccessOption == freezed
          ? _value.loginFailureOrSuccessOption
          : loginFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, UserAuth>>,
      otpFailureOrSuccessOption: otpFailureOrSuccessOption == freezed
          ? _value.otpFailureOrSuccessOption
          : otpFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, String>>,
      onInvalidPin: onInvalidPin == freezed
          ? _value.onInvalidPin
          : onInvalidPin // ignore: cast_nullable_to_non_nullable
              as Option<Function>,
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
      required this.isShowDialogShake,
      required this.loginFailureOrSuccessOption,
      required this.otpFailureOrSuccessOption,
      required this.onInvalidPin});

  @override
  final PhoneNumber phoneNumber;
  @override
  final Pin pin;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool isShowDialogShake;
  @override
  final Option<Either<AuthFailure, UserAuth>> loginFailureOrSuccessOption;
  @override
  final Option<Either<AuthFailure, String>> otpFailureOrSuccessOption;
  @override
  final Option<Function> onInvalidPin;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, pin: $pin, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isShowDialogShake: $isShowDialogShake, loginFailureOrSuccessOption: $loginFailureOrSuccessOption, otpFailureOrSuccessOption: $otpFailureOrSuccessOption, onInvalidPin: $onInvalidPin)';
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
            (identical(other.isShowDialogShake, isShowDialogShake) ||
                const DeepCollectionEquality()
                    .equals(other.isShowDialogShake, isShowDialogShake)) &&
            (identical(other.loginFailureOrSuccessOption,
                    loginFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.loginFailureOrSuccessOption,
                    loginFailureOrSuccessOption)) &&
            (identical(other.otpFailureOrSuccessOption,
                    otpFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.otpFailureOrSuccessOption,
                    otpFailureOrSuccessOption)) &&
            (identical(other.onInvalidPin, onInvalidPin) ||
                const DeepCollectionEquality()
                    .equals(other.onInvalidPin, onInvalidPin)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(pin) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isShowDialogShake) ^
      const DeepCollectionEquality().hash(loginFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(otpFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(onInvalidPin);

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
      required bool isShowDialogShake,
      required Option<Either<AuthFailure, UserAuth>>
          loginFailureOrSuccessOption,
      required Option<Either<AuthFailure, String>> otpFailureOrSuccessOption,
      required Option<Function> onInvalidPin}) = _$_LoginState;

  @override
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @override
  Pin get pin => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isShowDialogShake => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, UserAuth>> get loginFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, String>> get otpFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Function> get onInvalidPin => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
