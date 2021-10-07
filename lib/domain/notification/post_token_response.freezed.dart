// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'post_token_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostTokenResponse _$PostTokenResponseFromJson(Map<String, dynamic> json) {
  return _PostTokenResponse.fromJson(json);
}

/// @nodoc
class _$PostTokenResponseTearOff {
  const _$PostTokenResponseTearOff();

  _PostTokenResponse call(
      {required String code, required String status, required String message}) {
    return _PostTokenResponse(
      code: code,
      status: status,
      message: message,
    );
  }

  PostTokenResponse fromJson(Map<String, Object> json) {
    return PostTokenResponse.fromJson(json);
  }
}

/// @nodoc
const $PostTokenResponse = _$PostTokenResponseTearOff();

/// @nodoc
mixin _$PostTokenResponse {
  String get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostTokenResponseCopyWith<PostTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostTokenResponseCopyWith<$Res> {
  factory $PostTokenResponseCopyWith(
          PostTokenResponse value, $Res Function(PostTokenResponse) then) =
      _$PostTokenResponseCopyWithImpl<$Res>;
  $Res call({String code, String status, String message});
}

/// @nodoc
class _$PostTokenResponseCopyWithImpl<$Res>
    implements $PostTokenResponseCopyWith<$Res> {
  _$PostTokenResponseCopyWithImpl(this._value, this._then);

  final PostTokenResponse _value;
  // ignore: unused_field
  final $Res Function(PostTokenResponse) _then;

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
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PostTokenResponseCopyWith<$Res>
    implements $PostTokenResponseCopyWith<$Res> {
  factory _$PostTokenResponseCopyWith(
          _PostTokenResponse value, $Res Function(_PostTokenResponse) then) =
      __$PostTokenResponseCopyWithImpl<$Res>;
  @override
  $Res call({String code, String status, String message});
}

/// @nodoc
class __$PostTokenResponseCopyWithImpl<$Res>
    extends _$PostTokenResponseCopyWithImpl<$Res>
    implements _$PostTokenResponseCopyWith<$Res> {
  __$PostTokenResponseCopyWithImpl(
      _PostTokenResponse _value, $Res Function(_PostTokenResponse) _then)
      : super(_value, (v) => _then(v as _PostTokenResponse));

  @override
  _PostTokenResponse get _value => super._value as _PostTokenResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_PostTokenResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostTokenResponse implements _PostTokenResponse {
  const _$_PostTokenResponse(
      {required this.code, required this.status, required this.message});

  factory _$_PostTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PostTokenResponseFromJson(json);

  @override
  final String code;
  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'PostTokenResponse(code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PostTokenResponse &&
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
  _$PostTokenResponseCopyWith<_PostTokenResponse> get copyWith =>
      __$PostTokenResponseCopyWithImpl<_PostTokenResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostTokenResponseToJson(this);
  }
}

abstract class _PostTokenResponse implements PostTokenResponse {
  const factory _PostTokenResponse(
      {required String code,
      required String status,
      required String message}) = _$_PostTokenResponse;

  factory _PostTokenResponse.fromJson(Map<String, dynamic> json) =
      _$_PostTokenResponse.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostTokenResponseCopyWith<_PostTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
