// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'outlet_product_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OutletProductCategoryResponse _$OutletProductCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletProductCategoryResponse.fromJson(json);
}

/// @nodoc
class _$OutletProductCategoryResponseTearOff {
  const _$OutletProductCategoryResponseTearOff();

  _OutletProductCategoryResponse call(
      {required OutletProductCategoryStatusResponse response,
      required List<OutletProductCategoryDataResponse> data,
      required OutletProductMetaResponse meta}) {
    return _OutletProductCategoryResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  OutletProductCategoryResponse fromJson(Map<String, Object> json) {
    return OutletProductCategoryResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletProductCategoryResponse = _$OutletProductCategoryResponseTearOff();

/// @nodoc
mixin _$OutletProductCategoryResponse {
  OutletProductCategoryStatusResponse get response =>
      throw _privateConstructorUsedError;
  List<OutletProductCategoryDataResponse> get data =>
      throw _privateConstructorUsedError;
  OutletProductMetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletProductCategoryResponseCopyWith<OutletProductCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletProductCategoryResponseCopyWith<$Res> {
  factory $OutletProductCategoryResponseCopyWith(
          OutletProductCategoryResponse value,
          $Res Function(OutletProductCategoryResponse) then) =
      _$OutletProductCategoryResponseCopyWithImpl<$Res>;
  $Res call(
      {OutletProductCategoryStatusResponse response,
      List<OutletProductCategoryDataResponse> data,
      OutletProductMetaResponse meta});

  $OutletProductCategoryStatusResponseCopyWith<$Res> get response;
  $OutletProductMetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$OutletProductCategoryResponseCopyWithImpl<$Res>
    implements $OutletProductCategoryResponseCopyWith<$Res> {
  _$OutletProductCategoryResponseCopyWithImpl(this._value, this._then);

  final OutletProductCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(OutletProductCategoryResponse) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OutletProductCategoryStatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletProductCategoryDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as OutletProductMetaResponse,
    ));
  }

  @override
  $OutletProductCategoryStatusResponseCopyWith<$Res> get response {
    return $OutletProductCategoryStatusResponseCopyWith<$Res>(_value.response,
        (value) {
      return _then(_value.copyWith(response: value));
    });
  }

  @override
  $OutletProductMetaResponseCopyWith<$Res> get meta {
    return $OutletProductMetaResponseCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$OutletProductCategoryResponseCopyWith<$Res>
    implements $OutletProductCategoryResponseCopyWith<$Res> {
  factory _$OutletProductCategoryResponseCopyWith(
          _OutletProductCategoryResponse value,
          $Res Function(_OutletProductCategoryResponse) then) =
      __$OutletProductCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {OutletProductCategoryStatusResponse response,
      List<OutletProductCategoryDataResponse> data,
      OutletProductMetaResponse meta});

  @override
  $OutletProductCategoryStatusResponseCopyWith<$Res> get response;
  @override
  $OutletProductMetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$OutletProductCategoryResponseCopyWithImpl<$Res>
    extends _$OutletProductCategoryResponseCopyWithImpl<$Res>
    implements _$OutletProductCategoryResponseCopyWith<$Res> {
  __$OutletProductCategoryResponseCopyWithImpl(
      _OutletProductCategoryResponse _value,
      $Res Function(_OutletProductCategoryResponse) _then)
      : super(_value, (v) => _then(v as _OutletProductCategoryResponse));

  @override
  _OutletProductCategoryResponse get _value =>
      super._value as _OutletProductCategoryResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_OutletProductCategoryResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OutletProductCategoryStatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletProductCategoryDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as OutletProductMetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletProductCategoryResponse
    implements _OutletProductCategoryResponse {
  const _$_OutletProductCategoryResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_OutletProductCategoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_OutletProductCategoryResponseFromJson(json);

  @override
  final OutletProductCategoryStatusResponse response;
  @override
  final List<OutletProductCategoryDataResponse> data;
  @override
  final OutletProductMetaResponse meta;

  @override
  String toString() {
    return 'OutletProductCategoryResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletProductCategoryResponse &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  _$OutletProductCategoryResponseCopyWith<_OutletProductCategoryResponse>
      get copyWith => __$OutletProductCategoryResponseCopyWithImpl<
          _OutletProductCategoryResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletProductCategoryResponseToJson(this);
  }
}

abstract class _OutletProductCategoryResponse
    implements OutletProductCategoryResponse {
  const factory _OutletProductCategoryResponse(
          {required OutletProductCategoryStatusResponse response,
          required List<OutletProductCategoryDataResponse> data,
          required OutletProductMetaResponse meta}) =
      _$_OutletProductCategoryResponse;

  factory _OutletProductCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletProductCategoryResponse.fromJson;

  @override
  OutletProductCategoryStatusResponse get response =>
      throw _privateConstructorUsedError;
  @override
  List<OutletProductCategoryDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  OutletProductMetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletProductCategoryResponseCopyWith<_OutletProductCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletProductCategoryDataResponse _$OutletProductCategoryDataResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletProductCategoryDataResponse.fromJson(json);
}

/// @nodoc
class _$OutletProductCategoryDataResponseTearOff {
  const _$OutletProductCategoryDataResponseTearOff();

  _OutletProductCategoryDataResponse call(
      {required int id,
      required String code,
      required String name,
      required dynamic order}) {
    return _OutletProductCategoryDataResponse(
      id: id,
      code: code,
      name: name,
      order: order,
    );
  }

  OutletProductCategoryDataResponse fromJson(Map<String, Object> json) {
    return OutletProductCategoryDataResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletProductCategoryDataResponse =
    _$OutletProductCategoryDataResponseTearOff();

/// @nodoc
mixin _$OutletProductCategoryDataResponse {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  dynamic get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletProductCategoryDataResponseCopyWith<OutletProductCategoryDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletProductCategoryDataResponseCopyWith<$Res> {
  factory $OutletProductCategoryDataResponseCopyWith(
          OutletProductCategoryDataResponse value,
          $Res Function(OutletProductCategoryDataResponse) then) =
      _$OutletProductCategoryDataResponseCopyWithImpl<$Res>;
  $Res call({int id, String code, String name, dynamic order});
}

/// @nodoc
class _$OutletProductCategoryDataResponseCopyWithImpl<$Res>
    implements $OutletProductCategoryDataResponseCopyWith<$Res> {
  _$OutletProductCategoryDataResponseCopyWithImpl(this._value, this._then);

  final OutletProductCategoryDataResponse _value;
  // ignore: unused_field
  final $Res Function(OutletProductCategoryDataResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$OutletProductCategoryDataResponseCopyWith<$Res>
    implements $OutletProductCategoryDataResponseCopyWith<$Res> {
  factory _$OutletProductCategoryDataResponseCopyWith(
          _OutletProductCategoryDataResponse value,
          $Res Function(_OutletProductCategoryDataResponse) then) =
      __$OutletProductCategoryDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({int id, String code, String name, dynamic order});
}

/// @nodoc
class __$OutletProductCategoryDataResponseCopyWithImpl<$Res>
    extends _$OutletProductCategoryDataResponseCopyWithImpl<$Res>
    implements _$OutletProductCategoryDataResponseCopyWith<$Res> {
  __$OutletProductCategoryDataResponseCopyWithImpl(
      _OutletProductCategoryDataResponse _value,
      $Res Function(_OutletProductCategoryDataResponse) _then)
      : super(_value, (v) => _then(v as _OutletProductCategoryDataResponse));

  @override
  _OutletProductCategoryDataResponse get _value =>
      super._value as _OutletProductCategoryDataResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? order = freezed,
  }) {
    return _then(_OutletProductCategoryDataResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletProductCategoryDataResponse
    implements _OutletProductCategoryDataResponse {
  const _$_OutletProductCategoryDataResponse(
      {required this.id,
      required this.code,
      required this.name,
      required this.order});

  factory _$_OutletProductCategoryDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_OutletProductCategoryDataResponseFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final dynamic order;

  @override
  String toString() {
    return 'OutletProductCategoryDataResponse(id: $id, code: $code, name: $name, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletProductCategoryDataResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.order, order) ||
                const DeepCollectionEquality().equals(other.order, order)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(order);

  @JsonKey(ignore: true)
  @override
  _$OutletProductCategoryDataResponseCopyWith<
          _OutletProductCategoryDataResponse>
      get copyWith => __$OutletProductCategoryDataResponseCopyWithImpl<
          _OutletProductCategoryDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletProductCategoryDataResponseToJson(this);
  }
}

abstract class _OutletProductCategoryDataResponse
    implements OutletProductCategoryDataResponse {
  const factory _OutletProductCategoryDataResponse(
      {required int id,
      required String code,
      required String name,
      required dynamic order}) = _$_OutletProductCategoryDataResponse;

  factory _OutletProductCategoryDataResponse.fromJson(
          Map<String, dynamic> json) =
      _$_OutletProductCategoryDataResponse.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  dynamic get order => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletProductCategoryDataResponseCopyWith<
          _OutletProductCategoryDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletProductMetaResponse _$OutletProductMetaResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletProductMetaResponse.fromJson(json);
}

/// @nodoc
class _$OutletProductMetaResponseTearOff {
  const _$OutletProductMetaResponseTearOff();

  _OutletProductMetaResponse call({required String version}) {
    return _OutletProductMetaResponse(
      version: version,
    );
  }

  OutletProductMetaResponse fromJson(Map<String, Object> json) {
    return OutletProductMetaResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletProductMetaResponse = _$OutletProductMetaResponseTearOff();

/// @nodoc
mixin _$OutletProductMetaResponse {
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletProductMetaResponseCopyWith<OutletProductMetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletProductMetaResponseCopyWith<$Res> {
  factory $OutletProductMetaResponseCopyWith(OutletProductMetaResponse value,
          $Res Function(OutletProductMetaResponse) then) =
      _$OutletProductMetaResponseCopyWithImpl<$Res>;
  $Res call({String version});
}

/// @nodoc
class _$OutletProductMetaResponseCopyWithImpl<$Res>
    implements $OutletProductMetaResponseCopyWith<$Res> {
  _$OutletProductMetaResponseCopyWithImpl(this._value, this._then);

  final OutletProductMetaResponse _value;
  // ignore: unused_field
  final $Res Function(OutletProductMetaResponse) _then;

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
abstract class _$OutletProductMetaResponseCopyWith<$Res>
    implements $OutletProductMetaResponseCopyWith<$Res> {
  factory _$OutletProductMetaResponseCopyWith(_OutletProductMetaResponse value,
          $Res Function(_OutletProductMetaResponse) then) =
      __$OutletProductMetaResponseCopyWithImpl<$Res>;
  @override
  $Res call({String version});
}

/// @nodoc
class __$OutletProductMetaResponseCopyWithImpl<$Res>
    extends _$OutletProductMetaResponseCopyWithImpl<$Res>
    implements _$OutletProductMetaResponseCopyWith<$Res> {
  __$OutletProductMetaResponseCopyWithImpl(_OutletProductMetaResponse _value,
      $Res Function(_OutletProductMetaResponse) _then)
      : super(_value, (v) => _then(v as _OutletProductMetaResponse));

  @override
  _OutletProductMetaResponse get _value =>
      super._value as _OutletProductMetaResponse;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_OutletProductMetaResponse(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletProductMetaResponse implements _OutletProductMetaResponse {
  const _$_OutletProductMetaResponse({required this.version});

  factory _$_OutletProductMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletProductMetaResponseFromJson(json);

  @override
  final String version;

  @override
  String toString() {
    return 'OutletProductMetaResponse(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletProductMetaResponse &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$OutletProductMetaResponseCopyWith<_OutletProductMetaResponse>
      get copyWith =>
          __$OutletProductMetaResponseCopyWithImpl<_OutletProductMetaResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletProductMetaResponseToJson(this);
  }
}

abstract class _OutletProductMetaResponse implements OutletProductMetaResponse {
  const factory _OutletProductMetaResponse({required String version}) =
      _$_OutletProductMetaResponse;

  factory _OutletProductMetaResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletProductMetaResponse.fromJson;

  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletProductMetaResponseCopyWith<_OutletProductMetaResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletProductCategoryStatusResponse
    _$OutletProductCategoryStatusResponseFromJson(Map<String, dynamic> json) {
  return _OutletProductCategoryStatusResponse.fromJson(json);
}

/// @nodoc
class _$OutletProductCategoryStatusResponseTearOff {
  const _$OutletProductCategoryStatusResponseTearOff();

  _OutletProductCategoryStatusResponse call(
      {required String code, required String status, required String message}) {
    return _OutletProductCategoryStatusResponse(
      code: code,
      status: status,
      message: message,
    );
  }

  OutletProductCategoryStatusResponse fromJson(Map<String, Object> json) {
    return OutletProductCategoryStatusResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletProductCategoryStatusResponse =
    _$OutletProductCategoryStatusResponseTearOff();

/// @nodoc
mixin _$OutletProductCategoryStatusResponse {
  String get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletProductCategoryStatusResponseCopyWith<
          OutletProductCategoryStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletProductCategoryStatusResponseCopyWith<$Res> {
  factory $OutletProductCategoryStatusResponseCopyWith(
          OutletProductCategoryStatusResponse value,
          $Res Function(OutletProductCategoryStatusResponse) then) =
      _$OutletProductCategoryStatusResponseCopyWithImpl<$Res>;
  $Res call({String code, String status, String message});
}

/// @nodoc
class _$OutletProductCategoryStatusResponseCopyWithImpl<$Res>
    implements $OutletProductCategoryStatusResponseCopyWith<$Res> {
  _$OutletProductCategoryStatusResponseCopyWithImpl(this._value, this._then);

  final OutletProductCategoryStatusResponse _value;
  // ignore: unused_field
  final $Res Function(OutletProductCategoryStatusResponse) _then;

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
abstract class _$OutletProductCategoryStatusResponseCopyWith<$Res>
    implements $OutletProductCategoryStatusResponseCopyWith<$Res> {
  factory _$OutletProductCategoryStatusResponseCopyWith(
          _OutletProductCategoryStatusResponse value,
          $Res Function(_OutletProductCategoryStatusResponse) then) =
      __$OutletProductCategoryStatusResponseCopyWithImpl<$Res>;
  @override
  $Res call({String code, String status, String message});
}

/// @nodoc
class __$OutletProductCategoryStatusResponseCopyWithImpl<$Res>
    extends _$OutletProductCategoryStatusResponseCopyWithImpl<$Res>
    implements _$OutletProductCategoryStatusResponseCopyWith<$Res> {
  __$OutletProductCategoryStatusResponseCopyWithImpl(
      _OutletProductCategoryStatusResponse _value,
      $Res Function(_OutletProductCategoryStatusResponse) _then)
      : super(_value, (v) => _then(v as _OutletProductCategoryStatusResponse));

  @override
  _OutletProductCategoryStatusResponse get _value =>
      super._value as _OutletProductCategoryStatusResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_OutletProductCategoryStatusResponse(
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
class _$_OutletProductCategoryStatusResponse
    implements _OutletProductCategoryStatusResponse {
  const _$_OutletProductCategoryStatusResponse(
      {required this.code, required this.status, required this.message});

  factory _$_OutletProductCategoryStatusResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_OutletProductCategoryStatusResponseFromJson(json);

  @override
  final String code;
  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'OutletProductCategoryStatusResponse(code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletProductCategoryStatusResponse &&
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
  _$OutletProductCategoryStatusResponseCopyWith<
          _OutletProductCategoryStatusResponse>
      get copyWith => __$OutletProductCategoryStatusResponseCopyWithImpl<
          _OutletProductCategoryStatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletProductCategoryStatusResponseToJson(this);
  }
}

abstract class _OutletProductCategoryStatusResponse
    implements OutletProductCategoryStatusResponse {
  const factory _OutletProductCategoryStatusResponse(
      {required String code,
      required String status,
      required String message}) = _$_OutletProductCategoryStatusResponse;

  factory _OutletProductCategoryStatusResponse.fromJson(
          Map<String, dynamic> json) =
      _$_OutletProductCategoryStatusResponse.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletProductCategoryStatusResponseCopyWith<
          _OutletProductCategoryStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}
