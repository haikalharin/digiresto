// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterStatus _$RegisterStatusFromJson(Map<String, dynamic> json) {
  return _RegisterStatus.fromJson(json);
}

/// @nodoc
class _$RegisterStatusTearOff {
  const _$RegisterStatusTearOff();

  _RegisterStatus call({String? code, String? status, String? message}) {
    return _RegisterStatus(
      code: code,
      status: status,
      message: message,
    );
  }

  RegisterStatus fromJson(Map<String, Object> json) {
    return RegisterStatus.fromJson(json);
  }
}

/// @nodoc
const $RegisterStatus = _$RegisterStatusTearOff();

/// @nodoc
mixin _$RegisterStatus {
  String? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterStatusCopyWith<RegisterStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStatusCopyWith<$Res> {
  factory $RegisterStatusCopyWith(
          RegisterStatus value, $Res Function(RegisterStatus) then) =
      _$RegisterStatusCopyWithImpl<$Res>;
  $Res call({String? code, String? status, String? message});
}

/// @nodoc
class _$RegisterStatusCopyWithImpl<$Res>
    implements $RegisterStatusCopyWith<$Res> {
  _$RegisterStatusCopyWithImpl(this._value, this._then);

  final RegisterStatus _value;
  // ignore: unused_field
  final $Res Function(RegisterStatus) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RegisterStatusCopyWith<$Res>
    implements $RegisterStatusCopyWith<$Res> {
  factory _$RegisterStatusCopyWith(
          _RegisterStatus value, $Res Function(_RegisterStatus) then) =
      __$RegisterStatusCopyWithImpl<$Res>;
  @override
  $Res call({String? code, String? status, String? message});
}

/// @nodoc
class __$RegisterStatusCopyWithImpl<$Res>
    extends _$RegisterStatusCopyWithImpl<$Res>
    implements _$RegisterStatusCopyWith<$Res> {
  __$RegisterStatusCopyWithImpl(
      _RegisterStatus _value, $Res Function(_RegisterStatus) _then)
      : super(_value, (v) => _then(v as _RegisterStatus));

  @override
  _RegisterStatus get _value => super._value as _RegisterStatus;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_RegisterStatus(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterStatus implements _RegisterStatus {
  const _$_RegisterStatus({this.code, this.status, this.message});

  factory _$_RegisterStatus.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterStatusFromJson(json);

  @override
  final String? code;
  @override
  final String? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'RegisterStatus(code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterStatus &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$RegisterStatusCopyWith<_RegisterStatus> get copyWith =>
      __$RegisterStatusCopyWithImpl<_RegisterStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterStatusToJson(this);
  }
}

abstract class _RegisterStatus implements RegisterStatus {
  const factory _RegisterStatus(
      {String? code, String? status, String? message}) = _$_RegisterStatus;

  factory _RegisterStatus.fromJson(Map<String, dynamic> json) =
      _$_RegisterStatus.fromJson;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterStatusCopyWith<_RegisterStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
