// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_list_voucher_outlet_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetListVoucherOutletParam _$GetListVoucherOutletParamFromJson(
    Map<String, dynamic> json) {
  return _GetListVoucherOutletParam.fromJson(json);
}

/// @nodoc
class _$GetListVoucherOutletParamTearOff {
  const _$GetListVoucherOutletParamTearOff();

  _GetListVoucherOutletParam call(
      {required GetListVoucherOutletQueryParam queryString,
      required GetListVoucherOutletBodyParam body}) {
    return _GetListVoucherOutletParam(
      queryString: queryString,
      body: body,
    );
  }

  GetListVoucherOutletParam fromJson(Map<String, Object> json) {
    return GetListVoucherOutletParam.fromJson(json);
  }
}

/// @nodoc
const $GetListVoucherOutletParam = _$GetListVoucherOutletParamTearOff();

/// @nodoc
mixin _$GetListVoucherOutletParam {
  GetListVoucherOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetListVoucherOutletBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetListVoucherOutletParamCopyWith<GetListVoucherOutletParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListVoucherOutletParamCopyWith<$Res> {
  factory $GetListVoucherOutletParamCopyWith(GetListVoucherOutletParam value,
          $Res Function(GetListVoucherOutletParam) then) =
      _$GetListVoucherOutletParamCopyWithImpl<$Res>;
  $Res call(
      {GetListVoucherOutletQueryParam queryString,
      GetListVoucherOutletBodyParam body});

  $GetListVoucherOutletQueryParamCopyWith<$Res> get queryString;
  $GetListVoucherOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetListVoucherOutletParamCopyWithImpl<$Res>
    implements $GetListVoucherOutletParamCopyWith<$Res> {
  _$GetListVoucherOutletParamCopyWithImpl(this._value, this._then);

  final GetListVoucherOutletParam _value;
  // ignore: unused_field
  final $Res Function(GetListVoucherOutletParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetListVoucherOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetListVoucherOutletBodyParam,
    ));
  }

  @override
  $GetListVoucherOutletQueryParamCopyWith<$Res> get queryString {
    return $GetListVoucherOutletQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetListVoucherOutletBodyParamCopyWith<$Res> get body {
    return $GetListVoucherOutletBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetListVoucherOutletParamCopyWith<$Res>
    implements $GetListVoucherOutletParamCopyWith<$Res> {
  factory _$GetListVoucherOutletParamCopyWith(_GetListVoucherOutletParam value,
          $Res Function(_GetListVoucherOutletParam) then) =
      __$GetListVoucherOutletParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetListVoucherOutletQueryParam queryString,
      GetListVoucherOutletBodyParam body});

  @override
  $GetListVoucherOutletQueryParamCopyWith<$Res> get queryString;
  @override
  $GetListVoucherOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetListVoucherOutletParamCopyWithImpl<$Res>
    extends _$GetListVoucherOutletParamCopyWithImpl<$Res>
    implements _$GetListVoucherOutletParamCopyWith<$Res> {
  __$GetListVoucherOutletParamCopyWithImpl(_GetListVoucherOutletParam _value,
      $Res Function(_GetListVoucherOutletParam) _then)
      : super(_value, (v) => _then(v as _GetListVoucherOutletParam));

  @override
  _GetListVoucherOutletParam get _value =>
      super._value as _GetListVoucherOutletParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetListVoucherOutletParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetListVoucherOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetListVoucherOutletBodyParam,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetListVoucherOutletParam implements _GetListVoucherOutletParam {
  const _$_GetListVoucherOutletParam(
      {required this.queryString, required this.body});

  factory _$_GetListVoucherOutletParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetListVoucherOutletParamFromJson(json);

  @override
  final GetListVoucherOutletQueryParam queryString;
  @override
  final GetListVoucherOutletBodyParam body;

  @override
  String toString() {
    return 'GetListVoucherOutletParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListVoucherOutletParam &&
            (identical(other.queryString, queryString) ||
                const DeepCollectionEquality()
                    .equals(other.queryString, queryString)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(queryString) ^
      const DeepCollectionEquality().hash(body);

  @JsonKey(ignore: true)
  @override
  _$GetListVoucherOutletParamCopyWith<_GetListVoucherOutletParam>
      get copyWith =>
          __$GetListVoucherOutletParamCopyWithImpl<_GetListVoucherOutletParam>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetListVoucherOutletParamToJson(this);
  }
}

abstract class _GetListVoucherOutletParam implements GetListVoucherOutletParam {
  const factory _GetListVoucherOutletParam(
          {required GetListVoucherOutletQueryParam queryString,
          required GetListVoucherOutletBodyParam body}) =
      _$_GetListVoucherOutletParam;

  factory _GetListVoucherOutletParam.fromJson(Map<String, dynamic> json) =
      _$_GetListVoucherOutletParam.fromJson;

  @override
  GetListVoucherOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetListVoucherOutletBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetListVoucherOutletParamCopyWith<_GetListVoucherOutletParam>
      get copyWith => throw _privateConstructorUsedError;
}

GetListVoucherOutletBodyParam _$GetListVoucherOutletBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetListVoucherOutletBodyParam.fromJson(json);
}

/// @nodoc
class _$GetListVoucherOutletBodyParamTearOff {
  const _$GetListVoucherOutletBodyParamTearOff();

  _GetListVoucherOutletBodyParam call() {
    return const _GetListVoucherOutletBodyParam();
  }

  GetListVoucherOutletBodyParam fromJson(Map<String, Object> json) {
    return GetListVoucherOutletBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetListVoucherOutletBodyParam = _$GetListVoucherOutletBodyParamTearOff();

/// @nodoc
mixin _$GetListVoucherOutletBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListVoucherOutletBodyParamCopyWith<$Res> {
  factory $GetListVoucherOutletBodyParamCopyWith(
          GetListVoucherOutletBodyParam value,
          $Res Function(GetListVoucherOutletBodyParam) then) =
      _$GetListVoucherOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetListVoucherOutletBodyParamCopyWithImpl<$Res>
    implements $GetListVoucherOutletBodyParamCopyWith<$Res> {
  _$GetListVoucherOutletBodyParamCopyWithImpl(this._value, this._then);

  final GetListVoucherOutletBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetListVoucherOutletBodyParam) _then;
}

/// @nodoc
abstract class _$GetListVoucherOutletBodyParamCopyWith<$Res> {
  factory _$GetListVoucherOutletBodyParamCopyWith(
          _GetListVoucherOutletBodyParam value,
          $Res Function(_GetListVoucherOutletBodyParam) then) =
      __$GetListVoucherOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetListVoucherOutletBodyParamCopyWithImpl<$Res>
    extends _$GetListVoucherOutletBodyParamCopyWithImpl<$Res>
    implements _$GetListVoucherOutletBodyParamCopyWith<$Res> {
  __$GetListVoucherOutletBodyParamCopyWithImpl(
      _GetListVoucherOutletBodyParam _value,
      $Res Function(_GetListVoucherOutletBodyParam) _then)
      : super(_value, (v) => _then(v as _GetListVoucherOutletBodyParam));

  @override
  _GetListVoucherOutletBodyParam get _value =>
      super._value as _GetListVoucherOutletBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetListVoucherOutletBodyParam
    implements _GetListVoucherOutletBodyParam {
  const _$_GetListVoucherOutletBodyParam();

  factory _$_GetListVoucherOutletBodyParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetListVoucherOutletBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetListVoucherOutletBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetListVoucherOutletBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetListVoucherOutletBodyParamToJson(this);
  }
}

abstract class _GetListVoucherOutletBodyParam
    implements GetListVoucherOutletBodyParam {
  const factory _GetListVoucherOutletBodyParam() =
      _$_GetListVoucherOutletBodyParam;

  factory _GetListVoucherOutletBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetListVoucherOutletBodyParam.fromJson;
}

GetListVoucherOutletQueryParam _$GetListVoucherOutletQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetListVoucherOutletQueryParam.fromJson(json);
}

/// @nodoc
class _$GetListVoucherOutletQueryParamTearOff {
  const _$GetListVoucherOutletQueryParamTearOff();

  _GetListVoucherOutletQueryParam call(
      {required String outletId, required String merchantId}) {
    return _GetListVoucherOutletQueryParam(
      outletId: outletId,
      merchantId: merchantId,
    );
  }

  GetListVoucherOutletQueryParam fromJson(Map<String, Object> json) {
    return GetListVoucherOutletQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetListVoucherOutletQueryParam =
    _$GetListVoucherOutletQueryParamTearOff();

/// @nodoc
mixin _$GetListVoucherOutletQueryParam {
  String get outletId => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetListVoucherOutletQueryParamCopyWith<GetListVoucherOutletQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListVoucherOutletQueryParamCopyWith<$Res> {
  factory $GetListVoucherOutletQueryParamCopyWith(
          GetListVoucherOutletQueryParam value,
          $Res Function(GetListVoucherOutletQueryParam) then) =
      _$GetListVoucherOutletQueryParamCopyWithImpl<$Res>;
  $Res call({String outletId, String merchantId});
}

/// @nodoc
class _$GetListVoucherOutletQueryParamCopyWithImpl<$Res>
    implements $GetListVoucherOutletQueryParamCopyWith<$Res> {
  _$GetListVoucherOutletQueryParamCopyWithImpl(this._value, this._then);

  final GetListVoucherOutletQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetListVoucherOutletQueryParam) _then;

  @override
  $Res call({
    Object? outletId = freezed,
    Object? merchantId = freezed,
  }) {
    return _then(_value.copyWith(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetListVoucherOutletQueryParamCopyWith<$Res>
    implements $GetListVoucherOutletQueryParamCopyWith<$Res> {
  factory _$GetListVoucherOutletQueryParamCopyWith(
          _GetListVoucherOutletQueryParam value,
          $Res Function(_GetListVoucherOutletQueryParam) then) =
      __$GetListVoucherOutletQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String outletId, String merchantId});
}

/// @nodoc
class __$GetListVoucherOutletQueryParamCopyWithImpl<$Res>
    extends _$GetListVoucherOutletQueryParamCopyWithImpl<$Res>
    implements _$GetListVoucherOutletQueryParamCopyWith<$Res> {
  __$GetListVoucherOutletQueryParamCopyWithImpl(
      _GetListVoucherOutletQueryParam _value,
      $Res Function(_GetListVoucherOutletQueryParam) _then)
      : super(_value, (v) => _then(v as _GetListVoucherOutletQueryParam));

  @override
  _GetListVoucherOutletQueryParam get _value =>
      super._value as _GetListVoucherOutletQueryParam;

  @override
  $Res call({
    Object? outletId = freezed,
    Object? merchantId = freezed,
  }) {
    return _then(_GetListVoucherOutletQueryParam(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetListVoucherOutletQueryParam
    implements _GetListVoucherOutletQueryParam {
  const _$_GetListVoucherOutletQueryParam(
      {required this.outletId, required this.merchantId});

  factory _$_GetListVoucherOutletQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetListVoucherOutletQueryParamFromJson(json);

  @override
  final String outletId;
  @override
  final String merchantId;

  @override
  String toString() {
    return 'GetListVoucherOutletQueryParam(outletId: $outletId, merchantId: $merchantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListVoucherOutletQueryParam &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)) &&
            (identical(other.merchantId, merchantId) ||
                const DeepCollectionEquality()
                    .equals(other.merchantId, merchantId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(outletId) ^
      const DeepCollectionEquality().hash(merchantId);

  @JsonKey(ignore: true)
  @override
  _$GetListVoucherOutletQueryParamCopyWith<_GetListVoucherOutletQueryParam>
      get copyWith => __$GetListVoucherOutletQueryParamCopyWithImpl<
          _GetListVoucherOutletQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetListVoucherOutletQueryParamToJson(this);
  }
}

abstract class _GetListVoucherOutletQueryParam
    implements GetListVoucherOutletQueryParam {
  const factory _GetListVoucherOutletQueryParam(
      {required String outletId,
      required String merchantId}) = _$_GetListVoucherOutletQueryParam;

  factory _GetListVoucherOutletQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetListVoucherOutletQueryParam.fromJson;

  @override
  String get outletId => throw _privateConstructorUsedError;
  @override
  String get merchantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetListVoucherOutletQueryParamCopyWith<_GetListVoucherOutletQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
