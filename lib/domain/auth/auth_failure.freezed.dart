// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

  NoInternet noInternet() {
    return const NoInternet();
  }

  ServerError serverError() {
    return const ServerError();
  }

  InvalidPin invalidPin(String? message) {
    return InvalidPin(
      message,
    );
  }

  InvalidOtp invalidOtp(String? message) {
    return InvalidOtp(
      message,
    );
  }

  InvalidToken invalidToken(String? message) {
    return InvalidToken(
      message,
    );
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noInternet,
    required TResult Function() serverError,
    required TResult Function(String? message) invalidPin,
    required TResult Function(String? message) invalidOtp,
    required TResult Function(String? message) invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    TResult Function(String? message)? invalidPin,
    TResult Function(String? message)? invalidOtp,
    TResult Function(String? message)? invalidToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPin value) invalidPin,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidToken value) invalidToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPin value)? invalidPin,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc

class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noInternet,
    required TResult Function() serverError,
    required TResult Function(String? message) invalidPin,
    required TResult Function(String? message) invalidOtp,
    required TResult Function(String? message) invalidToken,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    TResult Function(String? message)? invalidPin,
    TResult Function(String? message)? invalidOtp,
    TResult Function(String? message)? invalidToken,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPin value) invalidPin,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidToken value) invalidToken,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPin value)? invalidPin,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $NoInternetCopyWith<$Res> {
  factory $NoInternetCopyWith(
          NoInternet value, $Res Function(NoInternet) then) =
      _$NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoInternetCopyWith<$Res> {
  _$NoInternetCopyWithImpl(NoInternet _value, $Res Function(NoInternet) _then)
      : super(_value, (v) => _then(v as NoInternet));

  @override
  NoInternet get _value => super._value as NoInternet;
}

/// @nodoc

class _$NoInternet implements NoInternet {
  const _$NoInternet();

  @override
  String toString() {
    return 'AuthFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noInternet,
    required TResult Function() serverError,
    required TResult Function(String? message) invalidPin,
    required TResult Function(String? message) invalidOtp,
    required TResult Function(String? message) invalidToken,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    TResult Function(String? message)? invalidPin,
    TResult Function(String? message)? invalidOtp,
    TResult Function(String? message)? invalidToken,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPin value) invalidPin,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidToken value) invalidToken,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPin value)? invalidPin,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements AuthFailure {
  const factory NoInternet() = _$NoInternet;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noInternet,
    required TResult Function() serverError,
    required TResult Function(String? message) invalidPin,
    required TResult Function(String? message) invalidOtp,
    required TResult Function(String? message) invalidToken,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    TResult Function(String? message)? invalidPin,
    TResult Function(String? message)? invalidOtp,
    TResult Function(String? message)? invalidToken,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPin value) invalidPin,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidToken value) invalidToken,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPin value)? invalidPin,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $InvalidPinCopyWith<$Res> {
  factory $InvalidPinCopyWith(
          InvalidPin value, $Res Function(InvalidPin) then) =
      _$InvalidPinCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$InvalidPinCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidPinCopyWith<$Res> {
  _$InvalidPinCopyWithImpl(InvalidPin _value, $Res Function(InvalidPin) _then)
      : super(_value, (v) => _then(v as InvalidPin));

  @override
  InvalidPin get _value => super._value as InvalidPin;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InvalidPin(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidPin implements InvalidPin {
  const _$InvalidPin(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.invalidPin(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPin &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $InvalidPinCopyWith<InvalidPin> get copyWith =>
      _$InvalidPinCopyWithImpl<InvalidPin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noInternet,
    required TResult Function() serverError,
    required TResult Function(String? message) invalidPin,
    required TResult Function(String? message) invalidOtp,
    required TResult Function(String? message) invalidToken,
  }) {
    return invalidPin(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    TResult Function(String? message)? invalidPin,
    TResult Function(String? message)? invalidOtp,
    TResult Function(String? message)? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidPin != null) {
      return invalidPin(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPin value) invalidPin,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidToken value) invalidToken,
  }) {
    return invalidPin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPin value)? invalidPin,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidPin != null) {
      return invalidPin(this);
    }
    return orElse();
  }
}

abstract class InvalidPin implements AuthFailure {
  const factory InvalidPin(String? message) = _$InvalidPin;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidPinCopyWith<InvalidPin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidOtpCopyWith<$Res> {
  factory $InvalidOtpCopyWith(
          InvalidOtp value, $Res Function(InvalidOtp) then) =
      _$InvalidOtpCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$InvalidOtpCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidOtpCopyWith<$Res> {
  _$InvalidOtpCopyWithImpl(InvalidOtp _value, $Res Function(InvalidOtp) _then)
      : super(_value, (v) => _then(v as InvalidOtp));

  @override
  InvalidOtp get _value => super._value as InvalidOtp;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InvalidOtp(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidOtp implements InvalidOtp {
  const _$InvalidOtp(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.invalidOtp(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidOtp &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $InvalidOtpCopyWith<InvalidOtp> get copyWith =>
      _$InvalidOtpCopyWithImpl<InvalidOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noInternet,
    required TResult Function() serverError,
    required TResult Function(String? message) invalidPin,
    required TResult Function(String? message) invalidOtp,
    required TResult Function(String? message) invalidToken,
  }) {
    return invalidOtp(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    TResult Function(String? message)? invalidPin,
    TResult Function(String? message)? invalidOtp,
    TResult Function(String? message)? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidOtp != null) {
      return invalidOtp(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPin value) invalidPin,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidToken value) invalidToken,
  }) {
    return invalidOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPin value)? invalidPin,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidOtp != null) {
      return invalidOtp(this);
    }
    return orElse();
  }
}

abstract class InvalidOtp implements AuthFailure {
  const factory InvalidOtp(String? message) = _$InvalidOtp;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidOtpCopyWith<InvalidOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidTokenCopyWith<$Res> {
  factory $InvalidTokenCopyWith(
          InvalidToken value, $Res Function(InvalidToken) then) =
      _$InvalidTokenCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$InvalidTokenCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidTokenCopyWith<$Res> {
  _$InvalidTokenCopyWithImpl(
      InvalidToken _value, $Res Function(InvalidToken) _then)
      : super(_value, (v) => _then(v as InvalidToken));

  @override
  InvalidToken get _value => super._value as InvalidToken;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(InvalidToken(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InvalidToken implements InvalidToken {
  const _$InvalidToken(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthFailure.invalidToken(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidToken &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $InvalidTokenCopyWith<InvalidToken> get copyWith =>
      _$InvalidTokenCopyWithImpl<InvalidToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() noInternet,
    required TResult Function() serverError,
    required TResult Function(String? message) invalidPin,
    required TResult Function(String? message) invalidOtp,
    required TResult Function(String? message) invalidToken,
  }) {
    return invalidToken(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? noInternet,
    TResult Function()? serverError,
    TResult Function(String? message)? invalidPin,
    TResult Function(String? message)? invalidOtp,
    TResult Function(String? message)? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser value) cancelledByUser,
    required TResult Function(NoInternet value) noInternet,
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPin value) invalidPin,
    required TResult Function(InvalidOtp value) invalidOtp,
    required TResult Function(InvalidToken value) invalidToken,
  }) {
    return invalidToken(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser value)? cancelledByUser,
    TResult Function(NoInternet value)? noInternet,
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPin value)? invalidPin,
    TResult Function(InvalidOtp value)? invalidOtp,
    TResult Function(InvalidToken value)? invalidToken,
    required TResult orElse(),
  }) {
    if (invalidToken != null) {
      return invalidToken(this);
    }
    return orElse();
  }
}

abstract class InvalidToken implements AuthFailure {
  const factory InvalidToken(String? message) = _$InvalidToken;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidTokenCopyWith<InvalidToken> get copyWith =>
      throw _privateConstructorUsedError;
}
