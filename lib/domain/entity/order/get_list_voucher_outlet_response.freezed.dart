// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_list_voucher_outlet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetListVoucherOutletResponse _$GetListVoucherOutletResponseFromJson(
    Map<String, dynamic> json) {
  return _GetListVoucherOutletResponse.fromJson(json);
}

/// @nodoc
class _$GetListVoucherOutletResponseTearOff {
  const _$GetListVoucherOutletResponseTearOff();

  _GetListVoucherOutletResponse call(
      {required StatusResponse response,
      required List<GetListVoucherOutletDataResponse> data,
      required MetaResponse meta}) {
    return _GetListVoucherOutletResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  GetListVoucherOutletResponse fromJson(Map<String, Object> json) {
    return GetListVoucherOutletResponse.fromJson(json);
  }
}

/// @nodoc
const $GetListVoucherOutletResponse = _$GetListVoucherOutletResponseTearOff();

/// @nodoc
mixin _$GetListVoucherOutletResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  List<GetListVoucherOutletDataResponse> get data =>
      throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetListVoucherOutletResponseCopyWith<GetListVoucherOutletResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListVoucherOutletResponseCopyWith<$Res> {
  factory $GetListVoucherOutletResponseCopyWith(
          GetListVoucherOutletResponse value,
          $Res Function(GetListVoucherOutletResponse) then) =
      _$GetListVoucherOutletResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response,
      List<GetListVoucherOutletDataResponse> data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$GetListVoucherOutletResponseCopyWithImpl<$Res>
    implements $GetListVoucherOutletResponseCopyWith<$Res> {
  _$GetListVoucherOutletResponseCopyWithImpl(this._value, this._then);

  final GetListVoucherOutletResponse _value;
  // ignore: unused_field
  final $Res Function(GetListVoucherOutletResponse) _then;

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
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetListVoucherOutletDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }

  @override
  $StatusResponseCopyWith<$Res> get response {
    return $StatusResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }

  @override
  $MetaResponseCopyWith<$Res> get meta {
    return $MetaResponseCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$GetListVoucherOutletResponseCopyWith<$Res>
    implements $GetListVoucherOutletResponseCopyWith<$Res> {
  factory _$GetListVoucherOutletResponseCopyWith(
          _GetListVoucherOutletResponse value,
          $Res Function(_GetListVoucherOutletResponse) then) =
      __$GetListVoucherOutletResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      List<GetListVoucherOutletDataResponse> data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$GetListVoucherOutletResponseCopyWithImpl<$Res>
    extends _$GetListVoucherOutletResponseCopyWithImpl<$Res>
    implements _$GetListVoucherOutletResponseCopyWith<$Res> {
  __$GetListVoucherOutletResponseCopyWithImpl(
      _GetListVoucherOutletResponse _value,
      $Res Function(_GetListVoucherOutletResponse) _then)
      : super(_value, (v) => _then(v as _GetListVoucherOutletResponse));

  @override
  _GetListVoucherOutletResponse get _value =>
      super._value as _GetListVoucherOutletResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_GetListVoucherOutletResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GetListVoucherOutletDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetListVoucherOutletResponse implements _GetListVoucherOutletResponse {
  const _$_GetListVoucherOutletResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_GetListVoucherOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetListVoucherOutletResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final List<GetListVoucherOutletDataResponse> data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'GetListVoucherOutletResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListVoucherOutletResponse &&
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
  _$GetListVoucherOutletResponseCopyWith<_GetListVoucherOutletResponse>
      get copyWith => __$GetListVoucherOutletResponseCopyWithImpl<
          _GetListVoucherOutletResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetListVoucherOutletResponseToJson(this);
  }
}

abstract class _GetListVoucherOutletResponse
    implements GetListVoucherOutletResponse {
  const factory _GetListVoucherOutletResponse(
      {required StatusResponse response,
      required List<GetListVoucherOutletDataResponse> data,
      required MetaResponse meta}) = _$_GetListVoucherOutletResponse;

  factory _GetListVoucherOutletResponse.fromJson(Map<String, dynamic> json) =
      _$_GetListVoucherOutletResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  List<GetListVoucherOutletDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetListVoucherOutletResponseCopyWith<_GetListVoucherOutletResponse>
      get copyWith => throw _privateConstructorUsedError;
}

GetListVoucherOutletDataResponse _$GetListVoucherOutletDataResponseFromJson(
    Map<String, dynamic> json) {
  return _GetListVoucherOutletDataResponse.fromJson(json);
}

/// @nodoc
class _$GetListVoucherOutletDataResponseTearOff {
  const _$GetListVoucherOutletDataResponseTearOff();

  _GetListVoucherOutletDataResponse call(
      {required String name, required String code}) {
    return _GetListVoucherOutletDataResponse(
      name: name,
      code: code,
    );
  }

  GetListVoucherOutletDataResponse fromJson(Map<String, Object> json) {
    return GetListVoucherOutletDataResponse.fromJson(json);
  }
}

/// @nodoc
const $GetListVoucherOutletDataResponse =
    _$GetListVoucherOutletDataResponseTearOff();

/// @nodoc
mixin _$GetListVoucherOutletDataResponse {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetListVoucherOutletDataResponseCopyWith<GetListVoucherOutletDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListVoucherOutletDataResponseCopyWith<$Res> {
  factory $GetListVoucherOutletDataResponseCopyWith(
          GetListVoucherOutletDataResponse value,
          $Res Function(GetListVoucherOutletDataResponse) then) =
      _$GetListVoucherOutletDataResponseCopyWithImpl<$Res>;
  $Res call({String name, String code});
}

/// @nodoc
class _$GetListVoucherOutletDataResponseCopyWithImpl<$Res>
    implements $GetListVoucherOutletDataResponseCopyWith<$Res> {
  _$GetListVoucherOutletDataResponseCopyWithImpl(this._value, this._then);

  final GetListVoucherOutletDataResponse _value;
  // ignore: unused_field
  final $Res Function(GetListVoucherOutletDataResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetListVoucherOutletDataResponseCopyWith<$Res>
    implements $GetListVoucherOutletDataResponseCopyWith<$Res> {
  factory _$GetListVoucherOutletDataResponseCopyWith(
          _GetListVoucherOutletDataResponse value,
          $Res Function(_GetListVoucherOutletDataResponse) then) =
      __$GetListVoucherOutletDataResponseCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code});
}

/// @nodoc
class __$GetListVoucherOutletDataResponseCopyWithImpl<$Res>
    extends _$GetListVoucherOutletDataResponseCopyWithImpl<$Res>
    implements _$GetListVoucherOutletDataResponseCopyWith<$Res> {
  __$GetListVoucherOutletDataResponseCopyWithImpl(
      _GetListVoucherOutletDataResponse _value,
      $Res Function(_GetListVoucherOutletDataResponse) _then)
      : super(_value, (v) => _then(v as _GetListVoucherOutletDataResponse));

  @override
  _GetListVoucherOutletDataResponse get _value =>
      super._value as _GetListVoucherOutletDataResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
  }) {
    return _then(_GetListVoucherOutletDataResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetListVoucherOutletDataResponse
    implements _GetListVoucherOutletDataResponse {
  const _$_GetListVoucherOutletDataResponse(
      {required this.name, required this.code});

  factory _$_GetListVoucherOutletDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetListVoucherOutletDataResponseFromJson(json);

  @override
  final String name;
  @override
  final String code;

  @override
  String toString() {
    return 'GetListVoucherOutletDataResponse(name: $name, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListVoucherOutletDataResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$GetListVoucherOutletDataResponseCopyWith<_GetListVoucherOutletDataResponse>
      get copyWith => __$GetListVoucherOutletDataResponseCopyWithImpl<
          _GetListVoucherOutletDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetListVoucherOutletDataResponseToJson(this);
  }
}

abstract class _GetListVoucherOutletDataResponse
    implements GetListVoucherOutletDataResponse {
  const factory _GetListVoucherOutletDataResponse(
      {required String name,
      required String code}) = _$_GetListVoucherOutletDataResponse;

  factory _GetListVoucherOutletDataResponse.fromJson(
      Map<String, dynamic> json) = _$_GetListVoucherOutletDataResponse.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetListVoucherOutletDataResponseCopyWith<_GetListVoucherOutletDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}
