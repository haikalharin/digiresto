// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_list_promo_outlet_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetListPromoOutletParam _$GetListPromoOutletParamFromJson(
    Map<String, dynamic> json) {
  return _GetListPromoOutletParam.fromJson(json);
}

/// @nodoc
class _$GetListPromoOutletParamTearOff {
  const _$GetListPromoOutletParamTearOff();

  _GetListPromoOutletParam call(
      {required GetListPromoOutletQueryParam queryString,
      required GetListPromoOutletBodyParam body}) {
    return _GetListPromoOutletParam(
      queryString: queryString,
      body: body,
    );
  }

  GetListPromoOutletParam fromJson(Map<String, Object> json) {
    return GetListPromoOutletParam.fromJson(json);
  }
}

/// @nodoc
const $GetListPromoOutletParam = _$GetListPromoOutletParamTearOff();

/// @nodoc
mixin _$GetListPromoOutletParam {
  GetListPromoOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetListPromoOutletBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetListPromoOutletParamCopyWith<GetListPromoOutletParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListPromoOutletParamCopyWith<$Res> {
  factory $GetListPromoOutletParamCopyWith(GetListPromoOutletParam value,
          $Res Function(GetListPromoOutletParam) then) =
      _$GetListPromoOutletParamCopyWithImpl<$Res>;
  $Res call(
      {GetListPromoOutletQueryParam queryString,
      GetListPromoOutletBodyParam body});

  $GetListPromoOutletQueryParamCopyWith<$Res> get queryString;
  $GetListPromoOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetListPromoOutletParamCopyWithImpl<$Res>
    implements $GetListPromoOutletParamCopyWith<$Res> {
  _$GetListPromoOutletParamCopyWithImpl(this._value, this._then);

  final GetListPromoOutletParam _value;
  // ignore: unused_field
  final $Res Function(GetListPromoOutletParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetListPromoOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetListPromoOutletBodyParam,
    ));
  }

  @override
  $GetListPromoOutletQueryParamCopyWith<$Res> get queryString {
    return $GetListPromoOutletQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetListPromoOutletBodyParamCopyWith<$Res> get body {
    return $GetListPromoOutletBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetListPromoOutletParamCopyWith<$Res>
    implements $GetListPromoOutletParamCopyWith<$Res> {
  factory _$GetListPromoOutletParamCopyWith(_GetListPromoOutletParam value,
          $Res Function(_GetListPromoOutletParam) then) =
      __$GetListPromoOutletParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetListPromoOutletQueryParam queryString,
      GetListPromoOutletBodyParam body});

  @override
  $GetListPromoOutletQueryParamCopyWith<$Res> get queryString;
  @override
  $GetListPromoOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetListPromoOutletParamCopyWithImpl<$Res>
    extends _$GetListPromoOutletParamCopyWithImpl<$Res>
    implements _$GetListPromoOutletParamCopyWith<$Res> {
  __$GetListPromoOutletParamCopyWithImpl(_GetListPromoOutletParam _value,
      $Res Function(_GetListPromoOutletParam) _then)
      : super(_value, (v) => _then(v as _GetListPromoOutletParam));

  @override
  _GetListPromoOutletParam get _value =>
      super._value as _GetListPromoOutletParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetListPromoOutletParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetListPromoOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetListPromoOutletBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetListPromoOutletParam implements _GetListPromoOutletParam {
  const _$_GetListPromoOutletParam(
      {required this.queryString, required this.body});

  factory _$_GetListPromoOutletParam.fromJson(Map<String, dynamic> json) =>
      _$$_GetListPromoOutletParamFromJson(json);

  @override
  final GetListPromoOutletQueryParam queryString;
  @override
  final GetListPromoOutletBodyParam body;

  @override
  String toString() {
    return 'GetListPromoOutletParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListPromoOutletParam &&
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
  _$GetListPromoOutletParamCopyWith<_GetListPromoOutletParam> get copyWith =>
      __$GetListPromoOutletParamCopyWithImpl<_GetListPromoOutletParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetListPromoOutletParamToJson(this);
  }
}

abstract class _GetListPromoOutletParam implements GetListPromoOutletParam {
  const factory _GetListPromoOutletParam(
      {required GetListPromoOutletQueryParam queryString,
      required GetListPromoOutletBodyParam body}) = _$_GetListPromoOutletParam;

  factory _GetListPromoOutletParam.fromJson(Map<String, dynamic> json) =
      _$_GetListPromoOutletParam.fromJson;

  @override
  GetListPromoOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetListPromoOutletBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetListPromoOutletParamCopyWith<_GetListPromoOutletParam> get copyWith =>
      throw _privateConstructorUsedError;
}

GetListPromoOutletBodyParam _$GetListPromoOutletBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetListPromoOutletBodyParam.fromJson(json);
}

/// @nodoc
class _$GetListPromoOutletBodyParamTearOff {
  const _$GetListPromoOutletBodyParamTearOff();

  _GetListPromoOutletBodyParam call() {
    return const _GetListPromoOutletBodyParam();
  }

  GetListPromoOutletBodyParam fromJson(Map<String, Object> json) {
    return GetListPromoOutletBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetListPromoOutletBodyParam = _$GetListPromoOutletBodyParamTearOff();

/// @nodoc
mixin _$GetListPromoOutletBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListPromoOutletBodyParamCopyWith<$Res> {
  factory $GetListPromoOutletBodyParamCopyWith(
          GetListPromoOutletBodyParam value,
          $Res Function(GetListPromoOutletBodyParam) then) =
      _$GetListPromoOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetListPromoOutletBodyParamCopyWithImpl<$Res>
    implements $GetListPromoOutletBodyParamCopyWith<$Res> {
  _$GetListPromoOutletBodyParamCopyWithImpl(this._value, this._then);

  final GetListPromoOutletBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetListPromoOutletBodyParam) _then;
}

/// @nodoc
abstract class _$GetListPromoOutletBodyParamCopyWith<$Res> {
  factory _$GetListPromoOutletBodyParamCopyWith(
          _GetListPromoOutletBodyParam value,
          $Res Function(_GetListPromoOutletBodyParam) then) =
      __$GetListPromoOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetListPromoOutletBodyParamCopyWithImpl<$Res>
    extends _$GetListPromoOutletBodyParamCopyWithImpl<$Res>
    implements _$GetListPromoOutletBodyParamCopyWith<$Res> {
  __$GetListPromoOutletBodyParamCopyWithImpl(
      _GetListPromoOutletBodyParam _value,
      $Res Function(_GetListPromoOutletBodyParam) _then)
      : super(_value, (v) => _then(v as _GetListPromoOutletBodyParam));

  @override
  _GetListPromoOutletBodyParam get _value =>
      super._value as _GetListPromoOutletBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetListPromoOutletBodyParam implements _GetListPromoOutletBodyParam {
  const _$_GetListPromoOutletBodyParam();

  factory _$_GetListPromoOutletBodyParam.fromJson(Map<String, dynamic> json) =>
      _$$_GetListPromoOutletBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetListPromoOutletBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetListPromoOutletBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetListPromoOutletBodyParamToJson(this);
  }
}

abstract class _GetListPromoOutletBodyParam
    implements GetListPromoOutletBodyParam {
  const factory _GetListPromoOutletBodyParam() = _$_GetListPromoOutletBodyParam;

  factory _GetListPromoOutletBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetListPromoOutletBodyParam.fromJson;
}

GetListPromoOutletQueryParam _$GetListPromoOutletQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetListPromoOutletQueryParam.fromJson(json);
}

/// @nodoc
class _$GetListPromoOutletQueryParamTearOff {
  const _$GetListPromoOutletQueryParamTearOff();

  _GetListPromoOutletQueryParam call(
      {required String outletId, required String merchantId}) {
    return _GetListPromoOutletQueryParam(
      outletId: outletId,
      merchantId: merchantId,
    );
  }

  GetListPromoOutletQueryParam fromJson(Map<String, Object> json) {
    return GetListPromoOutletQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetListPromoOutletQueryParam = _$GetListPromoOutletQueryParamTearOff();

/// @nodoc
mixin _$GetListPromoOutletQueryParam {
  String get outletId => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetListPromoOutletQueryParamCopyWith<GetListPromoOutletQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListPromoOutletQueryParamCopyWith<$Res> {
  factory $GetListPromoOutletQueryParamCopyWith(
          GetListPromoOutletQueryParam value,
          $Res Function(GetListPromoOutletQueryParam) then) =
      _$GetListPromoOutletQueryParamCopyWithImpl<$Res>;
  $Res call({String outletId, String merchantId});
}

/// @nodoc
class _$GetListPromoOutletQueryParamCopyWithImpl<$Res>
    implements $GetListPromoOutletQueryParamCopyWith<$Res> {
  _$GetListPromoOutletQueryParamCopyWithImpl(this._value, this._then);

  final GetListPromoOutletQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetListPromoOutletQueryParam) _then;

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
abstract class _$GetListPromoOutletQueryParamCopyWith<$Res>
    implements $GetListPromoOutletQueryParamCopyWith<$Res> {
  factory _$GetListPromoOutletQueryParamCopyWith(
          _GetListPromoOutletQueryParam value,
          $Res Function(_GetListPromoOutletQueryParam) then) =
      __$GetListPromoOutletQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String outletId, String merchantId});
}

/// @nodoc
class __$GetListPromoOutletQueryParamCopyWithImpl<$Res>
    extends _$GetListPromoOutletQueryParamCopyWithImpl<$Res>
    implements _$GetListPromoOutletQueryParamCopyWith<$Res> {
  __$GetListPromoOutletQueryParamCopyWithImpl(
      _GetListPromoOutletQueryParam _value,
      $Res Function(_GetListPromoOutletQueryParam) _then)
      : super(_value, (v) => _then(v as _GetListPromoOutletQueryParam));

  @override
  _GetListPromoOutletQueryParam get _value =>
      super._value as _GetListPromoOutletQueryParam;

  @override
  $Res call({
    Object? outletId = freezed,
    Object? merchantId = freezed,
  }) {
    return _then(_GetListPromoOutletQueryParam(
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
class _$_GetListPromoOutletQueryParam implements _GetListPromoOutletQueryParam {
  const _$_GetListPromoOutletQueryParam(
      {required this.outletId, required this.merchantId});

  factory _$_GetListPromoOutletQueryParam.fromJson(Map<String, dynamic> json) =>
      _$$_GetListPromoOutletQueryParamFromJson(json);

  @override
  final String outletId;
  @override
  final String merchantId;

  @override
  String toString() {
    return 'GetListPromoOutletQueryParam(outletId: $outletId, merchantId: $merchantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetListPromoOutletQueryParam &&
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
  _$GetListPromoOutletQueryParamCopyWith<_GetListPromoOutletQueryParam>
      get copyWith => __$GetListPromoOutletQueryParamCopyWithImpl<
          _GetListPromoOutletQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetListPromoOutletQueryParamToJson(this);
  }
}

abstract class _GetListPromoOutletQueryParam
    implements GetListPromoOutletQueryParam {
  const factory _GetListPromoOutletQueryParam(
      {required String outletId,
      required String merchantId}) = _$_GetListPromoOutletQueryParam;

  factory _GetListPromoOutletQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetListPromoOutletQueryParam.fromJson;

  @override
  String get outletId => throw _privateConstructorUsedError;
  @override
  String get merchantId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetListPromoOutletQueryParamCopyWith<_GetListPromoOutletQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
