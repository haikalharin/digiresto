// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_outlet_by_merchant_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOutletByMerchantParam _$GetOutletByMerchantParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByMerchantParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByMerchantParamTearOff {
  const _$GetOutletByMerchantParamTearOff();

  _GetOutletByMerchantParam call(
      {required GetOutletByMerchantQueryParam queryString,
      required GetOutletByMerchantBodyParam body}) {
    return _GetOutletByMerchantParam(
      queryString: queryString,
      body: body,
    );
  }

  GetOutletByMerchantParam fromJson(Map<String, Object> json) {
    return GetOutletByMerchantParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByMerchantParam = _$GetOutletByMerchantParamTearOff();

/// @nodoc
mixin _$GetOutletByMerchantParam {
  GetOutletByMerchantQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetOutletByMerchantBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletByMerchantParamCopyWith<GetOutletByMerchantParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByMerchantParamCopyWith<$Res> {
  factory $GetOutletByMerchantParamCopyWith(GetOutletByMerchantParam value,
          $Res Function(GetOutletByMerchantParam) then) =
      _$GetOutletByMerchantParamCopyWithImpl<$Res>;
  $Res call(
      {GetOutletByMerchantQueryParam queryString,
      GetOutletByMerchantBodyParam body});

  $GetOutletByMerchantQueryParamCopyWith<$Res> get queryString;
  $GetOutletByMerchantBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetOutletByMerchantParamCopyWithImpl<$Res>
    implements $GetOutletByMerchantParamCopyWith<$Res> {
  _$GetOutletByMerchantParamCopyWithImpl(this._value, this._then);

  final GetOutletByMerchantParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByMerchantParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletByMerchantQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetOutletByMerchantBodyParam,
    ));
  }

  @override
  $GetOutletByMerchantQueryParamCopyWith<$Res> get queryString {
    return $GetOutletByMerchantQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetOutletByMerchantBodyParamCopyWith<$Res> get body {
    return $GetOutletByMerchantBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetOutletByMerchantParamCopyWith<$Res>
    implements $GetOutletByMerchantParamCopyWith<$Res> {
  factory _$GetOutletByMerchantParamCopyWith(_GetOutletByMerchantParam value,
          $Res Function(_GetOutletByMerchantParam) then) =
      __$GetOutletByMerchantParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetOutletByMerchantQueryParam queryString,
      GetOutletByMerchantBodyParam body});

  @override
  $GetOutletByMerchantQueryParamCopyWith<$Res> get queryString;
  @override
  $GetOutletByMerchantBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetOutletByMerchantParamCopyWithImpl<$Res>
    extends _$GetOutletByMerchantParamCopyWithImpl<$Res>
    implements _$GetOutletByMerchantParamCopyWith<$Res> {
  __$GetOutletByMerchantParamCopyWithImpl(_GetOutletByMerchantParam _value,
      $Res Function(_GetOutletByMerchantParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByMerchantParam));

  @override
  _GetOutletByMerchantParam get _value =>
      super._value as _GetOutletByMerchantParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetOutletByMerchantParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletByMerchantQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetOutletByMerchantBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetOutletByMerchantParam implements _GetOutletByMerchantParam {
  const _$_GetOutletByMerchantParam(
      {required this.queryString, required this.body});

  factory _$_GetOutletByMerchantParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetOutletByMerchantParamFromJson(json);

  @override
  final GetOutletByMerchantQueryParam queryString;
  @override
  final GetOutletByMerchantBodyParam body;

  @override
  String toString() {
    return 'GetOutletByMerchantParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByMerchantParam &&
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
  _$GetOutletByMerchantParamCopyWith<_GetOutletByMerchantParam> get copyWith =>
      __$GetOutletByMerchantParamCopyWithImpl<_GetOutletByMerchantParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletByMerchantParamToJson(this);
  }
}

abstract class _GetOutletByMerchantParam implements GetOutletByMerchantParam {
  const factory _GetOutletByMerchantParam(
          {required GetOutletByMerchantQueryParam queryString,
          required GetOutletByMerchantBodyParam body}) =
      _$_GetOutletByMerchantParam;

  factory _GetOutletByMerchantParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByMerchantParam.fromJson;

  @override
  GetOutletByMerchantQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetOutletByMerchantBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletByMerchantParamCopyWith<_GetOutletByMerchantParam> get copyWith =>
      throw _privateConstructorUsedError;
}

GetOutletByMerchantBodyParam _$GetOutletByMerchantBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByMerchantBodyParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByMerchantBodyParamTearOff {
  const _$GetOutletByMerchantBodyParamTearOff();

  _GetOutletByMerchantBodyParam call() {
    return const _GetOutletByMerchantBodyParam();
  }

  GetOutletByMerchantBodyParam fromJson(Map<String, Object> json) {
    return GetOutletByMerchantBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByMerchantBodyParam = _$GetOutletByMerchantBodyParamTearOff();

/// @nodoc
mixin _$GetOutletByMerchantBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByMerchantBodyParamCopyWith<$Res> {
  factory $GetOutletByMerchantBodyParamCopyWith(
          GetOutletByMerchantBodyParam value,
          $Res Function(GetOutletByMerchantBodyParam) then) =
      _$GetOutletByMerchantBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOutletByMerchantBodyParamCopyWithImpl<$Res>
    implements $GetOutletByMerchantBodyParamCopyWith<$Res> {
  _$GetOutletByMerchantBodyParamCopyWithImpl(this._value, this._then);

  final GetOutletByMerchantBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByMerchantBodyParam) _then;
}

/// @nodoc
abstract class _$GetOutletByMerchantBodyParamCopyWith<$Res> {
  factory _$GetOutletByMerchantBodyParamCopyWith(
          _GetOutletByMerchantBodyParam value,
          $Res Function(_GetOutletByMerchantBodyParam) then) =
      __$GetOutletByMerchantBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetOutletByMerchantBodyParamCopyWithImpl<$Res>
    extends _$GetOutletByMerchantBodyParamCopyWithImpl<$Res>
    implements _$GetOutletByMerchantBodyParamCopyWith<$Res> {
  __$GetOutletByMerchantBodyParamCopyWithImpl(
      _GetOutletByMerchantBodyParam _value,
      $Res Function(_GetOutletByMerchantBodyParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByMerchantBodyParam));

  @override
  _GetOutletByMerchantBodyParam get _value =>
      super._value as _GetOutletByMerchantBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetOutletByMerchantBodyParam implements _GetOutletByMerchantBodyParam {
  const _$_GetOutletByMerchantBodyParam();

  factory _$_GetOutletByMerchantBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetOutletByMerchantBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetOutletByMerchantBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetOutletByMerchantBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletByMerchantBodyParamToJson(this);
  }
}

abstract class _GetOutletByMerchantBodyParam
    implements GetOutletByMerchantBodyParam {
  const factory _GetOutletByMerchantBodyParam() =
      _$_GetOutletByMerchantBodyParam;

  factory _GetOutletByMerchantBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByMerchantBodyParam.fromJson;
}

GetOutletByMerchantQueryParam _$GetOutletByMerchantQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByMerchantQueryParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByMerchantQueryParamTearOff {
  const _$GetOutletByMerchantQueryParamTearOff();

  _GetOutletByMerchantQueryParam call(
      {required String location,
      required int page,
      required String merchantId,
      required String filter}) {
    return _GetOutletByMerchantQueryParam(
      location: location,
      page: page,
      merchantId: merchantId,
      filter: filter,
    );
  }

  GetOutletByMerchantQueryParam fromJson(Map<String, Object> json) {
    return GetOutletByMerchantQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByMerchantQueryParam = _$GetOutletByMerchantQueryParamTearOff();

/// @nodoc
mixin _$GetOutletByMerchantQueryParam {
  String get location => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletByMerchantQueryParamCopyWith<GetOutletByMerchantQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByMerchantQueryParamCopyWith<$Res> {
  factory $GetOutletByMerchantQueryParamCopyWith(
          GetOutletByMerchantQueryParam value,
          $Res Function(GetOutletByMerchantQueryParam) then) =
      _$GetOutletByMerchantQueryParamCopyWithImpl<$Res>;
  $Res call({String location, int page, String merchantId, String filter});
}

/// @nodoc
class _$GetOutletByMerchantQueryParamCopyWithImpl<$Res>
    implements $GetOutletByMerchantQueryParamCopyWith<$Res> {
  _$GetOutletByMerchantQueryParamCopyWithImpl(this._value, this._then);

  final GetOutletByMerchantQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByMerchantQueryParam) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? page = freezed,
    Object? merchantId = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetOutletByMerchantQueryParamCopyWith<$Res>
    implements $GetOutletByMerchantQueryParamCopyWith<$Res> {
  factory _$GetOutletByMerchantQueryParamCopyWith(
          _GetOutletByMerchantQueryParam value,
          $Res Function(_GetOutletByMerchantQueryParam) then) =
      __$GetOutletByMerchantQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String location, int page, String merchantId, String filter});
}

/// @nodoc
class __$GetOutletByMerchantQueryParamCopyWithImpl<$Res>
    extends _$GetOutletByMerchantQueryParamCopyWithImpl<$Res>
    implements _$GetOutletByMerchantQueryParamCopyWith<$Res> {
  __$GetOutletByMerchantQueryParamCopyWithImpl(
      _GetOutletByMerchantQueryParam _value,
      $Res Function(_GetOutletByMerchantQueryParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByMerchantQueryParam));

  @override
  _GetOutletByMerchantQueryParam get _value =>
      super._value as _GetOutletByMerchantQueryParam;

  @override
  $Res call({
    Object? location = freezed,
    Object? page = freezed,
    Object? merchantId = freezed,
    Object? filter = freezed,
  }) {
    return _then(_GetOutletByMerchantQueryParam(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetOutletByMerchantQueryParam
    implements _GetOutletByMerchantQueryParam {
  const _$_GetOutletByMerchantQueryParam(
      {required this.location,
      required this.page,
      required this.merchantId,
      required this.filter});

  factory _$_GetOutletByMerchantQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetOutletByMerchantQueryParamFromJson(json);

  @override
  final String location;
  @override
  final int page;
  @override
  final String merchantId;
  @override
  final String filter;

  @override
  String toString() {
    return 'GetOutletByMerchantQueryParam(location: $location, page: $page, merchantId: $merchantId, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByMerchantQueryParam &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.merchantId, merchantId) ||
                const DeepCollectionEquality()
                    .equals(other.merchantId, merchantId)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(merchantId) ^
      const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$GetOutletByMerchantQueryParamCopyWith<_GetOutletByMerchantQueryParam>
      get copyWith => __$GetOutletByMerchantQueryParamCopyWithImpl<
          _GetOutletByMerchantQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletByMerchantQueryParamToJson(this);
  }
}

abstract class _GetOutletByMerchantQueryParam
    implements GetOutletByMerchantQueryParam {
  const factory _GetOutletByMerchantQueryParam(
      {required String location,
      required int page,
      required String merchantId,
      required String filter}) = _$_GetOutletByMerchantQueryParam;

  factory _GetOutletByMerchantQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByMerchantQueryParam.fromJson;

  @override
  String get location => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  String get merchantId => throw _privateConstructorUsedError;
  @override
  String get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletByMerchantQueryParamCopyWith<_GetOutletByMerchantQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
