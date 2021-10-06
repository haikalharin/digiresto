// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'status_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaResponse _$MetaResponseFromJson(Map<String, dynamic> json) {
  return _MetaResponse.fromJson(json);
}

/// @nodoc
class _$MetaResponseTearOff {
  const _$MetaResponseTearOff();

  _MetaResponse call({required String version}) {
    return _MetaResponse(
      version: version,
    );
  }

  MetaResponse fromJson(Map<String, Object> json) {
    return MetaResponse.fromJson(json);
  }
}

/// @nodoc
const $MetaResponse = _$MetaResponseTearOff();

/// @nodoc
mixin _$MetaResponse {
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaResponseCopyWith<MetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaResponseCopyWith<$Res> {
  factory $MetaResponseCopyWith(
          MetaResponse value, $Res Function(MetaResponse) then) =
      _$MetaResponseCopyWithImpl<$Res>;
  $Res call({String version});
}

/// @nodoc
class _$MetaResponseCopyWithImpl<$Res> implements $MetaResponseCopyWith<$Res> {
  _$MetaResponseCopyWithImpl(this._value, this._then);

  final MetaResponse _value;
  // ignore: unused_field
  final $Res Function(MetaResponse) _then;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MetaResponseCopyWith<$Res>
    implements $MetaResponseCopyWith<$Res> {
  factory _$MetaResponseCopyWith(
          _MetaResponse value, $Res Function(_MetaResponse) then) =
      __$MetaResponseCopyWithImpl<$Res>;
  @override
  $Res call({String version});
}

/// @nodoc
class __$MetaResponseCopyWithImpl<$Res> extends _$MetaResponseCopyWithImpl<$Res>
    implements _$MetaResponseCopyWith<$Res> {
  __$MetaResponseCopyWithImpl(
      _MetaResponse _value, $Res Function(_MetaResponse) _then)
      : super(_value, (v) => _then(v as _MetaResponse));

  @override
  _MetaResponse get _value => super._value as _MetaResponse;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_MetaResponse(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaResponse implements _MetaResponse {
  const _$_MetaResponse({required this.version});

  factory _$_MetaResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MetaResponseFromJson(json);

  @override
  final String version;

  @override
  String toString() {
    return 'MetaResponse(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MetaResponse &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$MetaResponseCopyWith<_MetaResponse> get copyWith =>
      __$MetaResponseCopyWithImpl<_MetaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaResponseToJson(this);
  }
}

abstract class _MetaResponse implements MetaResponse {
  const factory _MetaResponse({required String version}) = _$_MetaResponse;

  factory _MetaResponse.fromJson(Map<String, dynamic> json) =
      _$_MetaResponse.fromJson;

  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MetaResponseCopyWith<_MetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) {
  return _StatusResponse.fromJson(json);
}

/// @nodoc
class _$StatusResponseTearOff {
  const _$StatusResponseTearOff();

  _StatusResponse call(
      {required String code,
      required String status,
      required String message,
      required StatusMessageDisplayResponse? messageDisplay}) {
    return _StatusResponse(
      code: code,
      status: status,
      message: message,
      messageDisplay: messageDisplay,
    );
  }

  StatusResponse fromJson(Map<String, Object> json) {
    return StatusResponse.fromJson(json);
  }
}

/// @nodoc
const $StatusResponse = _$StatusResponseTearOff();

/// @nodoc
mixin _$StatusResponse {
  String get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  StatusMessageDisplayResponse? get messageDisplay =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusResponseCopyWith<StatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusResponseCopyWith<$Res> {
  factory $StatusResponseCopyWith(
          StatusResponse value, $Res Function(StatusResponse) then) =
      _$StatusResponseCopyWithImpl<$Res>;
  $Res call(
      {String code,
      String status,
      String message,
      StatusMessageDisplayResponse? messageDisplay});

  $StatusMessageDisplayResponseCopyWith<$Res>? get messageDisplay;
}

/// @nodoc
class _$StatusResponseCopyWithImpl<$Res>
    implements $StatusResponseCopyWith<$Res> {
  _$StatusResponseCopyWithImpl(this._value, this._then);

  final StatusResponse _value;
  // ignore: unused_field
  final $Res Function(StatusResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? messageDisplay = freezed,
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
      messageDisplay: messageDisplay == freezed
          ? _value.messageDisplay
          : messageDisplay // ignore: cast_nullable_to_non_nullable
              as StatusMessageDisplayResponse?,
    ));
  }

  @override
  $StatusMessageDisplayResponseCopyWith<$Res>? get messageDisplay {
    if (_value.messageDisplay == null) {
      return null;
    }

    return $StatusMessageDisplayResponseCopyWith<$Res>(_value.messageDisplay!,
        (value) {
      return _then(_value.copyWith(messageDisplay: value));
    });
  }
}

/// @nodoc
abstract class _$StatusResponseCopyWith<$Res>
    implements $StatusResponseCopyWith<$Res> {
  factory _$StatusResponseCopyWith(
          _StatusResponse value, $Res Function(_StatusResponse) then) =
      __$StatusResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String code,
      String status,
      String message,
      StatusMessageDisplayResponse? messageDisplay});

  @override
  $StatusMessageDisplayResponseCopyWith<$Res>? get messageDisplay;
}

/// @nodoc
class __$StatusResponseCopyWithImpl<$Res>
    extends _$StatusResponseCopyWithImpl<$Res>
    implements _$StatusResponseCopyWith<$Res> {
  __$StatusResponseCopyWithImpl(
      _StatusResponse _value, $Res Function(_StatusResponse) _then)
      : super(_value, (v) => _then(v as _StatusResponse));

  @override
  _StatusResponse get _value => super._value as _StatusResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? messageDisplay = freezed,
  }) {
    return _then(_StatusResponse(
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
      messageDisplay: messageDisplay == freezed
          ? _value.messageDisplay
          : messageDisplay // ignore: cast_nullable_to_non_nullable
              as StatusMessageDisplayResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusResponse implements _StatusResponse {
  const _$_StatusResponse(
      {required this.code,
      required this.status,
      required this.message,
      required this.messageDisplay});

  factory _$_StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StatusResponseFromJson(json);

  @override
  final String code;
  @override
  final String status;
  @override
  final String message;
  @override
  final StatusMessageDisplayResponse? messageDisplay;

  @override
  String toString() {
    return 'StatusResponse(code: $code, status: $status, message: $message, messageDisplay: $messageDisplay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusResponse &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.messageDisplay, messageDisplay) ||
                const DeepCollectionEquality()
                    .equals(other.messageDisplay, messageDisplay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(messageDisplay);

  @JsonKey(ignore: true)
  @override
  _$StatusResponseCopyWith<_StatusResponse> get copyWith =>
      __$StatusResponseCopyWithImpl<_StatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusResponseToJson(this);
  }
}

abstract class _StatusResponse implements StatusResponse {
  const factory _StatusResponse(
          {required String code,
          required String status,
          required String message,
          required StatusMessageDisplayResponse? messageDisplay}) =
      _$_StatusResponse;

  factory _StatusResponse.fromJson(Map<String, dynamic> json) =
      _$_StatusResponse.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  StatusMessageDisplayResponse? get messageDisplay =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatusResponseCopyWith<_StatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusMessageDisplayResponse _$StatusMessageDisplayResponseFromJson(
    Map<String, dynamic> json) {
  return _StatusMessageDisplayResponse.fromJson(json);
}

/// @nodoc
class _$StatusMessageDisplayResponseTearOff {
  const _$StatusMessageDisplayResponseTearOff();

  _StatusMessageDisplayResponse call({required String id, required String en}) {
    return _StatusMessageDisplayResponse(
      id: id,
      en: en,
    );
  }

  StatusMessageDisplayResponse fromJson(Map<String, Object> json) {
    return StatusMessageDisplayResponse.fromJson(json);
  }
}

/// @nodoc
const $StatusMessageDisplayResponse = _$StatusMessageDisplayResponseTearOff();

/// @nodoc
mixin _$StatusMessageDisplayResponse {
  String get id => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusMessageDisplayResponseCopyWith<StatusMessageDisplayResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusMessageDisplayResponseCopyWith<$Res> {
  factory $StatusMessageDisplayResponseCopyWith(
          StatusMessageDisplayResponse value,
          $Res Function(StatusMessageDisplayResponse) then) =
      _$StatusMessageDisplayResponseCopyWithImpl<$Res>;
  $Res call({String id, String en});
}

/// @nodoc
class _$StatusMessageDisplayResponseCopyWithImpl<$Res>
    implements $StatusMessageDisplayResponseCopyWith<$Res> {
  _$StatusMessageDisplayResponseCopyWithImpl(this._value, this._then);

  final StatusMessageDisplayResponse _value;
  // ignore: unused_field
  final $Res Function(StatusMessageDisplayResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StatusMessageDisplayResponseCopyWith<$Res>
    implements $StatusMessageDisplayResponseCopyWith<$Res> {
  factory _$StatusMessageDisplayResponseCopyWith(
          _StatusMessageDisplayResponse value,
          $Res Function(_StatusMessageDisplayResponse) then) =
      __$StatusMessageDisplayResponseCopyWithImpl<$Res>;
  @override
  $Res call({String id, String en});
}

/// @nodoc
class __$StatusMessageDisplayResponseCopyWithImpl<$Res>
    extends _$StatusMessageDisplayResponseCopyWithImpl<$Res>
    implements _$StatusMessageDisplayResponseCopyWith<$Res> {
  __$StatusMessageDisplayResponseCopyWithImpl(
      _StatusMessageDisplayResponse _value,
      $Res Function(_StatusMessageDisplayResponse) _then)
      : super(_value, (v) => _then(v as _StatusMessageDisplayResponse));

  @override
  _StatusMessageDisplayResponse get _value =>
      super._value as _StatusMessageDisplayResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? en = freezed,
  }) {
    return _then(_StatusMessageDisplayResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusMessageDisplayResponse implements _StatusMessageDisplayResponse {
  const _$_StatusMessageDisplayResponse({required this.id, required this.en});

  factory _$_StatusMessageDisplayResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StatusMessageDisplayResponseFromJson(json);

  @override
  final String id;
  @override
  final String en;

  @override
  String toString() {
    return 'StatusMessageDisplayResponse(id: $id, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusMessageDisplayResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.en, en) ||
                const DeepCollectionEquality().equals(other.en, en)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(en);

  @JsonKey(ignore: true)
  @override
  _$StatusMessageDisplayResponseCopyWith<_StatusMessageDisplayResponse>
      get copyWith => __$StatusMessageDisplayResponseCopyWithImpl<
          _StatusMessageDisplayResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusMessageDisplayResponseToJson(this);
  }
}

abstract class _StatusMessageDisplayResponse
    implements StatusMessageDisplayResponse {
  const factory _StatusMessageDisplayResponse(
      {required String id,
      required String en}) = _$_StatusMessageDisplayResponse;

  factory _StatusMessageDisplayResponse.fromJson(Map<String, dynamic> json) =
      _$_StatusMessageDisplayResponse.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get en => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatusMessageDisplayResponseCopyWith<_StatusMessageDisplayResponse>
      get copyWith => throw _privateConstructorUsedError;
}
