// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_outlet_product_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOutletProductParam _$GetOutletProductParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletProductParam.fromJson(json);
}

/// @nodoc
class _$GetOutletProductParamTearOff {
  const _$GetOutletProductParamTearOff();

  _GetOutletProductParam call(
      {required GetOutletProductQueryParam queryString,
      required GetOutletProductBodyParam body}) {
    return _GetOutletProductParam(
      queryString: queryString,
      body: body,
    );
  }

  GetOutletProductParam fromJson(Map<String, Object> json) {
    return GetOutletProductParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletProductParam = _$GetOutletProductParamTearOff();

/// @nodoc
mixin _$GetOutletProductParam {
  GetOutletProductQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetOutletProductBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletProductParamCopyWith<GetOutletProductParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletProductParamCopyWith<$Res> {
  factory $GetOutletProductParamCopyWith(GetOutletProductParam value,
          $Res Function(GetOutletProductParam) then) =
      _$GetOutletProductParamCopyWithImpl<$Res>;
  $Res call(
      {GetOutletProductQueryParam queryString, GetOutletProductBodyParam body});

  $GetOutletProductQueryParamCopyWith<$Res> get queryString;
  $GetOutletProductBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetOutletProductParamCopyWithImpl<$Res>
    implements $GetOutletProductParamCopyWith<$Res> {
  _$GetOutletProductParamCopyWithImpl(this._value, this._then);

  final GetOutletProductParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletProductParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletProductQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetOutletProductBodyParam,
    ));
  }

  @override
  $GetOutletProductQueryParamCopyWith<$Res> get queryString {
    return $GetOutletProductQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetOutletProductBodyParamCopyWith<$Res> get body {
    return $GetOutletProductBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetOutletProductParamCopyWith<$Res>
    implements $GetOutletProductParamCopyWith<$Res> {
  factory _$GetOutletProductParamCopyWith(_GetOutletProductParam value,
          $Res Function(_GetOutletProductParam) then) =
      __$GetOutletProductParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetOutletProductQueryParam queryString, GetOutletProductBodyParam body});

  @override
  $GetOutletProductQueryParamCopyWith<$Res> get queryString;
  @override
  $GetOutletProductBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetOutletProductParamCopyWithImpl<$Res>
    extends _$GetOutletProductParamCopyWithImpl<$Res>
    implements _$GetOutletProductParamCopyWith<$Res> {
  __$GetOutletProductParamCopyWithImpl(_GetOutletProductParam _value,
      $Res Function(_GetOutletProductParam) _then)
      : super(_value, (v) => _then(v as _GetOutletProductParam));

  @override
  _GetOutletProductParam get _value => super._value as _GetOutletProductParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetOutletProductParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletProductQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetOutletProductBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetOutletProductParam implements _GetOutletProductParam {
  const _$_GetOutletProductParam(
      {required this.queryString, required this.body});

  factory _$_GetOutletProductParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetOutletProductParamFromJson(json);

  @override
  final GetOutletProductQueryParam queryString;
  @override
  final GetOutletProductBodyParam body;

  @override
  String toString() {
    return 'GetOutletProductParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletProductParam &&
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
  _$GetOutletProductParamCopyWith<_GetOutletProductParam> get copyWith =>
      __$GetOutletProductParamCopyWithImpl<_GetOutletProductParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletProductParamToJson(this);
  }
}

abstract class _GetOutletProductParam implements GetOutletProductParam {
  const factory _GetOutletProductParam(
      {required GetOutletProductQueryParam queryString,
      required GetOutletProductBodyParam body}) = _$_GetOutletProductParam;

  factory _GetOutletProductParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletProductParam.fromJson;

  @override
  GetOutletProductQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetOutletProductBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletProductParamCopyWith<_GetOutletProductParam> get copyWith =>
      throw _privateConstructorUsedError;
}

GetOutletProductBodyParam _$GetOutletProductBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletProductBodyParam.fromJson(json);
}

/// @nodoc
class _$GetOutletProductBodyParamTearOff {
  const _$GetOutletProductBodyParamTearOff();

  _GetOutletProductBodyParam call() {
    return const _GetOutletProductBodyParam();
  }

  GetOutletProductBodyParam fromJson(Map<String, Object> json) {
    return GetOutletProductBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletProductBodyParam = _$GetOutletProductBodyParamTearOff();

/// @nodoc
mixin _$GetOutletProductBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletProductBodyParamCopyWith<$Res> {
  factory $GetOutletProductBodyParamCopyWith(GetOutletProductBodyParam value,
          $Res Function(GetOutletProductBodyParam) then) =
      _$GetOutletProductBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOutletProductBodyParamCopyWithImpl<$Res>
    implements $GetOutletProductBodyParamCopyWith<$Res> {
  _$GetOutletProductBodyParamCopyWithImpl(this._value, this._then);

  final GetOutletProductBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletProductBodyParam) _then;
}

/// @nodoc
abstract class _$GetOutletProductBodyParamCopyWith<$Res> {
  factory _$GetOutletProductBodyParamCopyWith(_GetOutletProductBodyParam value,
          $Res Function(_GetOutletProductBodyParam) then) =
      __$GetOutletProductBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetOutletProductBodyParamCopyWithImpl<$Res>
    extends _$GetOutletProductBodyParamCopyWithImpl<$Res>
    implements _$GetOutletProductBodyParamCopyWith<$Res> {
  __$GetOutletProductBodyParamCopyWithImpl(_GetOutletProductBodyParam _value,
      $Res Function(_GetOutletProductBodyParam) _then)
      : super(_value, (v) => _then(v as _GetOutletProductBodyParam));

  @override
  _GetOutletProductBodyParam get _value =>
      super._value as _GetOutletProductBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetOutletProductBodyParam implements _GetOutletProductBodyParam {
  const _$_GetOutletProductBodyParam();

  factory _$_GetOutletProductBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetOutletProductBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetOutletProductBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetOutletProductBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletProductBodyParamToJson(this);
  }
}

abstract class _GetOutletProductBodyParam implements GetOutletProductBodyParam {
  const factory _GetOutletProductBodyParam() = _$_GetOutletProductBodyParam;

  factory _GetOutletProductBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletProductBodyParam.fromJson;
}

GetOutletProductQueryParam _$GetOutletProductQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletProductQueryParam.fromJson(json);
}

/// @nodoc
class _$GetOutletProductQueryParamTearOff {
  const _$GetOutletProductQueryParamTearOff();

  _GetOutletProductQueryParam call(
      {required String outletId,
      required String categoryId,
      required String filter,
      required int page,
      required int limit}) {
    return _GetOutletProductQueryParam(
      outletId: outletId,
      categoryId: categoryId,
      filter: filter,
      page: page,
      limit: limit,
    );
  }

  GetOutletProductQueryParam fromJson(Map<String, Object> json) {
    return GetOutletProductQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletProductQueryParam = _$GetOutletProductQueryParamTearOff();

/// @nodoc
mixin _$GetOutletProductQueryParam {
  String get outletId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletProductQueryParamCopyWith<GetOutletProductQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletProductQueryParamCopyWith<$Res> {
  factory $GetOutletProductQueryParamCopyWith(GetOutletProductQueryParam value,
          $Res Function(GetOutletProductQueryParam) then) =
      _$GetOutletProductQueryParamCopyWithImpl<$Res>;
  $Res call(
      {String outletId, String categoryId, String filter, int page, int limit});
}

/// @nodoc
class _$GetOutletProductQueryParamCopyWithImpl<$Res>
    implements $GetOutletProductQueryParamCopyWith<$Res> {
  _$GetOutletProductQueryParamCopyWithImpl(this._value, this._then);

  final GetOutletProductQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletProductQueryParam) _then;

  @override
  $Res call({
    Object? outletId = freezed,
    Object? categoryId = freezed,
    Object? filter = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GetOutletProductQueryParamCopyWith<$Res>
    implements $GetOutletProductQueryParamCopyWith<$Res> {
  factory _$GetOutletProductQueryParamCopyWith(
          _GetOutletProductQueryParam value,
          $Res Function(_GetOutletProductQueryParam) then) =
      __$GetOutletProductQueryParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String outletId, String categoryId, String filter, int page, int limit});
}

/// @nodoc
class __$GetOutletProductQueryParamCopyWithImpl<$Res>
    extends _$GetOutletProductQueryParamCopyWithImpl<$Res>
    implements _$GetOutletProductQueryParamCopyWith<$Res> {
  __$GetOutletProductQueryParamCopyWithImpl(_GetOutletProductQueryParam _value,
      $Res Function(_GetOutletProductQueryParam) _then)
      : super(_value, (v) => _then(v as _GetOutletProductQueryParam));

  @override
  _GetOutletProductQueryParam get _value =>
      super._value as _GetOutletProductQueryParam;

  @override
  $Res call({
    Object? outletId = freezed,
    Object? categoryId = freezed,
    Object? filter = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_GetOutletProductQueryParam(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetOutletProductQueryParam implements _GetOutletProductQueryParam {
  const _$_GetOutletProductQueryParam(
      {required this.outletId,
      required this.categoryId,
      required this.filter,
      required this.page,
      required this.limit});

  factory _$_GetOutletProductQueryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetOutletProductQueryParamFromJson(json);

  @override
  final String outletId;
  @override
  final String categoryId;
  @override
  final String filter;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'GetOutletProductQueryParam(outletId: $outletId, categoryId: $categoryId, filter: $filter, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletProductQueryParam &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.limit, limit) ||
                const DeepCollectionEquality().equals(other.limit, limit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(outletId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(limit);

  @JsonKey(ignore: true)
  @override
  _$GetOutletProductQueryParamCopyWith<_GetOutletProductQueryParam>
      get copyWith => __$GetOutletProductQueryParamCopyWithImpl<
          _GetOutletProductQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletProductQueryParamToJson(this);
  }
}

abstract class _GetOutletProductQueryParam
    implements GetOutletProductQueryParam {
  const factory _GetOutletProductQueryParam(
      {required String outletId,
      required String categoryId,
      required String filter,
      required int page,
      required int limit}) = _$_GetOutletProductQueryParam;

  factory _GetOutletProductQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletProductQueryParam.fromJson;

  @override
  String get outletId => throw _privateConstructorUsedError;
  @override
  String get categoryId => throw _privateConstructorUsedError;
  @override
  String get filter => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletProductQueryParamCopyWith<_GetOutletProductQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
