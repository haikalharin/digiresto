// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'validate_otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValidateOtpEventTearOff {
  const _$ValidateOtpEventTearOff();

  _Started started(Function onInvalidOtp) {
    return _Started(
      onInvalidOtp,
    );
  }

  _InputSubmitting inputSubmitting(String phoneNumberStr, String otpStr) {
    return _InputSubmitting(
      phoneNumberStr,
      otpStr,
    );
  }

  _ResendOtp resendOtp(String phoneNumberStr) {
    return _ResendOtp(
      phoneNumberStr,
    );
  }
}

/// @nodoc
const $ValidateOtpEvent = _$ValidateOtpEventTearOff();

/// @nodoc
mixin _$ValidateOtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Function onInvalidOtp) started,
    required TResult Function(String phoneNumberStr, String otpStr)
        inputSubmitting,
    required TResult Function(String phoneNumberStr) resendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Function onInvalidOtp)? started,
    TResult Function(String phoneNumberStr, String otpStr)? inputSubmitting,
    TResult Function(String phoneNumberStr)? resendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InputSubmitting value) inputSubmitting,
    required TResult Function(_ResendOtp value) resendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputSubmitting value)? inputSubmitting,
    TResult Function(_ResendOtp value)? resendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOtpEventCopyWith<$Res> {
  factory $ValidateOtpEventCopyWith(
          ValidateOtpEvent value, $Res Function(ValidateOtpEvent) then) =
      _$ValidateOtpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidateOtpEventCopyWithImpl<$Res>
    implements $ValidateOtpEventCopyWith<$Res> {
  _$ValidateOtpEventCopyWithImpl(this._value, this._then);

  final ValidateOtpEvent _value;
  // ignore: unused_field
  final $Res Function(ValidateOtpEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Function onInvalidOtp});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ValidateOtpEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? onInvalidOtp = freezed,
  }) {
    return _then(_Started(
      onInvalidOtp == freezed
          ? _value.onInvalidOtp
          : onInvalidOtp // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.onInvalidOtp);

  @override
  final Function onInvalidOtp;

  @override
  String toString() {
    return 'ValidateOtpEvent.started(onInvalidOtp: $onInvalidOtp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.onInvalidOtp, onInvalidOtp) ||
                const DeepCollectionEquality()
                    .equals(other.onInvalidOtp, onInvalidOtp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(onInvalidOtp);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Function onInvalidOtp) started,
    required TResult Function(String phoneNumberStr, String otpStr)
        inputSubmitting,
    required TResult Function(String phoneNumberStr) resendOtp,
  }) {
    return started(onInvalidOtp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Function onInvalidOtp)? started,
    TResult Function(String phoneNumberStr, String otpStr)? inputSubmitting,
    TResult Function(String phoneNumberStr)? resendOtp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(onInvalidOtp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InputSubmitting value) inputSubmitting,
    required TResult Function(_ResendOtp value) resendOtp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputSubmitting value)? inputSubmitting,
    TResult Function(_ResendOtp value)? resendOtp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ValidateOtpEvent {
  const factory _Started(Function onInvalidOtp) = _$_Started;

  Function get onInvalidOtp => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InputSubmittingCopyWith<$Res> {
  factory _$InputSubmittingCopyWith(
          _InputSubmitting value, $Res Function(_InputSubmitting) then) =
      __$InputSubmittingCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr, String otpStr});
}

/// @nodoc
class __$InputSubmittingCopyWithImpl<$Res>
    extends _$ValidateOtpEventCopyWithImpl<$Res>
    implements _$InputSubmittingCopyWith<$Res> {
  __$InputSubmittingCopyWithImpl(
      _InputSubmitting _value, $Res Function(_InputSubmitting) _then)
      : super(_value, (v) => _then(v as _InputSubmitting));

  @override
  _InputSubmitting get _value => super._value as _InputSubmitting;

  @override
  $Res call({
    Object? phoneNumberStr = freezed,
    Object? otpStr = freezed,
  }) {
    return _then(_InputSubmitting(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
      otpStr == freezed
          ? _value.otpStr
          : otpStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InputSubmitting implements _InputSubmitting {
  const _$_InputSubmitting(this.phoneNumberStr, this.otpStr);

  @override
  final String phoneNumberStr;
  @override
  final String otpStr;

  @override
  String toString() {
    return 'ValidateOtpEvent.inputSubmitting(phoneNumberStr: $phoneNumberStr, otpStr: $otpStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InputSubmitting &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)) &&
            (identical(other.otpStr, otpStr) ||
                const DeepCollectionEquality().equals(other.otpStr, otpStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr) ^
      const DeepCollectionEquality().hash(otpStr);

  @JsonKey(ignore: true)
  @override
  _$InputSubmittingCopyWith<_InputSubmitting> get copyWith =>
      __$InputSubmittingCopyWithImpl<_InputSubmitting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Function onInvalidOtp) started,
    required TResult Function(String phoneNumberStr, String otpStr)
        inputSubmitting,
    required TResult Function(String phoneNumberStr) resendOtp,
  }) {
    return inputSubmitting(phoneNumberStr, otpStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Function onInvalidOtp)? started,
    TResult Function(String phoneNumberStr, String otpStr)? inputSubmitting,
    TResult Function(String phoneNumberStr)? resendOtp,
    required TResult orElse(),
  }) {
    if (inputSubmitting != null) {
      return inputSubmitting(phoneNumberStr, otpStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InputSubmitting value) inputSubmitting,
    required TResult Function(_ResendOtp value) resendOtp,
  }) {
    return inputSubmitting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputSubmitting value)? inputSubmitting,
    TResult Function(_ResendOtp value)? resendOtp,
    required TResult orElse(),
  }) {
    if (inputSubmitting != null) {
      return inputSubmitting(this);
    }
    return orElse();
  }
}

abstract class _InputSubmitting implements ValidateOtpEvent {
  const factory _InputSubmitting(String phoneNumberStr, String otpStr) =
      _$_InputSubmitting;

  String get phoneNumberStr => throw _privateConstructorUsedError;
  String get otpStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InputSubmittingCopyWith<_InputSubmitting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResendOtpCopyWith<$Res> {
  factory _$ResendOtpCopyWith(
          _ResendOtp value, $Res Function(_ResendOtp) then) =
      __$ResendOtpCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class __$ResendOtpCopyWithImpl<$Res>
    extends _$ValidateOtpEventCopyWithImpl<$Res>
    implements _$ResendOtpCopyWith<$Res> {
  __$ResendOtpCopyWithImpl(_ResendOtp _value, $Res Function(_ResendOtp) _then)
      : super(_value, (v) => _then(v as _ResendOtp));

  @override
  _ResendOtp get _value => super._value as _ResendOtp;

  @override
  $Res call({
    Object? phoneNumberStr = freezed,
  }) {
    return _then(_ResendOtp(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResendOtp implements _ResendOtp {
  const _$_ResendOtp(this.phoneNumberStr);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'ValidateOtpEvent.resendOtp(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResendOtp &&
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
  _$ResendOtpCopyWith<_ResendOtp> get copyWith =>
      __$ResendOtpCopyWithImpl<_ResendOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Function onInvalidOtp) started,
    required TResult Function(String phoneNumberStr, String otpStr)
        inputSubmitting,
    required TResult Function(String phoneNumberStr) resendOtp,
  }) {
    return resendOtp(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Function onInvalidOtp)? started,
    TResult Function(String phoneNumberStr, String otpStr)? inputSubmitting,
    TResult Function(String phoneNumberStr)? resendOtp,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_InputSubmitting value) inputSubmitting,
    required TResult Function(_ResendOtp value) resendOtp,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_InputSubmitting value)? inputSubmitting,
    TResult Function(_ResendOtp value)? resendOtp,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class _ResendOtp implements ValidateOtpEvent {
  const factory _ResendOtp(String phoneNumberStr) = _$_ResendOtp;

  String get phoneNumberStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ResendOtpCopyWith<_ResendOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ValidateOtpStateTearOff {
  const _$ValidateOtpStateTearOff();

  _ValidateOtpState call(
      {required Otp otp,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, bool>> validateFailureOrSuccess,
      required Option<Function> onInvalidOtpOption}) {
    return _ValidateOtpState(
      otp: otp,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      validateFailureOrSuccess: validateFailureOrSuccess,
      onInvalidOtpOption: onInvalidOtpOption,
    );
  }
}

/// @nodoc
const $ValidateOtpState = _$ValidateOtpStateTearOff();

/// @nodoc
mixin _$ValidateOtpState {
  Otp get otp => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, bool>> get validateFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Function> get onInvalidOtpOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidateOtpStateCopyWith<ValidateOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOtpStateCopyWith<$Res> {
  factory $ValidateOtpStateCopyWith(
          ValidateOtpState value, $Res Function(ValidateOtpState) then) =
      _$ValidateOtpStateCopyWithImpl<$Res>;
  $Res call(
      {Otp otp,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, bool>> validateFailureOrSuccess,
      Option<Function> onInvalidOtpOption});
}

/// @nodoc
class _$ValidateOtpStateCopyWithImpl<$Res>
    implements $ValidateOtpStateCopyWith<$Res> {
  _$ValidateOtpStateCopyWithImpl(this._value, this._then);

  final ValidateOtpState _value;
  // ignore: unused_field
  final $Res Function(ValidateOtpState) _then;

  @override
  $Res call({
    Object? otp = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? validateFailureOrSuccess = freezed,
    Object? onInvalidOtpOption = freezed,
  }) {
    return _then(_value.copyWith(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as Otp,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      validateFailureOrSuccess: validateFailureOrSuccess == freezed
          ? _value.validateFailureOrSuccess
          : validateFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
      onInvalidOtpOption: onInvalidOtpOption == freezed
          ? _value.onInvalidOtpOption
          : onInvalidOtpOption // ignore: cast_nullable_to_non_nullable
              as Option<Function>,
    ));
  }
}

/// @nodoc
abstract class _$ValidateOtpStateCopyWith<$Res>
    implements $ValidateOtpStateCopyWith<$Res> {
  factory _$ValidateOtpStateCopyWith(
          _ValidateOtpState value, $Res Function(_ValidateOtpState) then) =
      __$ValidateOtpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Otp otp,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, bool>> validateFailureOrSuccess,
      Option<Function> onInvalidOtpOption});
}

/// @nodoc
class __$ValidateOtpStateCopyWithImpl<$Res>
    extends _$ValidateOtpStateCopyWithImpl<$Res>
    implements _$ValidateOtpStateCopyWith<$Res> {
  __$ValidateOtpStateCopyWithImpl(
      _ValidateOtpState _value, $Res Function(_ValidateOtpState) _then)
      : super(_value, (v) => _then(v as _ValidateOtpState));

  @override
  _ValidateOtpState get _value => super._value as _ValidateOtpState;

  @override
  $Res call({
    Object? otp = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? validateFailureOrSuccess = freezed,
    Object? onInvalidOtpOption = freezed,
  }) {
    return _then(_ValidateOtpState(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as Otp,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      validateFailureOrSuccess: validateFailureOrSuccess == freezed
          ? _value.validateFailureOrSuccess
          : validateFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, bool>>,
      onInvalidOtpOption: onInvalidOtpOption == freezed
          ? _value.onInvalidOtpOption
          : onInvalidOtpOption // ignore: cast_nullable_to_non_nullable
              as Option<Function>,
    ));
  }
}

/// @nodoc

class _$_ValidateOtpState implements _ValidateOtpState {
  const _$_ValidateOtpState(
      {required this.otp,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.validateFailureOrSuccess,
      required this.onInvalidOtpOption});

  @override
  final Otp otp;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, bool>> validateFailureOrSuccess;
  @override
  final Option<Function> onInvalidOtpOption;

  @override
  String toString() {
    return 'ValidateOtpState(otp: $otp, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, validateFailureOrSuccess: $validateFailureOrSuccess, onInvalidOtpOption: $onInvalidOtpOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValidateOtpState &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(
                    other.validateFailureOrSuccess, validateFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.validateFailureOrSuccess,
                    validateFailureOrSuccess)) &&
            (identical(other.onInvalidOtpOption, onInvalidOtpOption) ||
                const DeepCollectionEquality()
                    .equals(other.onInvalidOtpOption, onInvalidOtpOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(validateFailureOrSuccess) ^
      const DeepCollectionEquality().hash(onInvalidOtpOption);

  @JsonKey(ignore: true)
  @override
  _$ValidateOtpStateCopyWith<_ValidateOtpState> get copyWith =>
      __$ValidateOtpStateCopyWithImpl<_ValidateOtpState>(this, _$identity);
}

abstract class _ValidateOtpState implements ValidateOtpState {
  const factory _ValidateOtpState(
      {required Otp otp,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailure, bool>> validateFailureOrSuccess,
      required Option<Function> onInvalidOtpOption}) = _$_ValidateOtpState;

  @override
  Otp get otp => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, bool>> get validateFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Function> get onInvalidOtpOption => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ValidateOtpStateCopyWith<_ValidateOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}
