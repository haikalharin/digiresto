// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_outlet_product_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOutletProductCategoryParam _$GetOutletProductCategoryParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletProductCategoryParam.fromJson(json);
}

/// @nodoc
class _$GetOutletProductCategoryParamTearOff {
  const _$GetOutletProductCategoryParamTearOff();

  _GetOutletProductCategoryParam call(
      {required GetOutletProductCategoryQueryParam queryString,
      required Body body}) {
    return _GetOutletProductCategoryParam(
      queryString: queryString,
      body: body,
    );
  }

  GetOutletProductCategoryParam fromJson(Map<String, Object> json) {
    return GetOutletProductCategoryParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletProductCategoryParam = _$GetOutletProductCategoryParamTearOff();

/// @nodoc
mixin _$GetOutletProductCategoryParam {
  GetOutletProductCategoryQueryParam get queryString =>
      throw _privateConstructorUsedError;
  Body get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletProductCategoryParamCopyWith<GetOutletProductCategoryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletProductCategoryParamCopyWith<$Res> {
  factory $GetOutletProductCategoryParamCopyWith(
          GetOutletProductCategoryParam value,
          $Res Function(GetOutletProductCategoryParam) then) =
      _$GetOutletProductCategoryParamCopyWithImpl<$Res>;
  $Res call({GetOutletProductCategoryQueryParam queryString, Body body});

  $GetOutletProductCategoryQueryParamCopyWith<$Res> get queryString;
  $BodyCopyWith<$Res> get body;
}

/// @nodoc
class _$GetOutletProductCategoryParamCopyWithImpl<$Res>
    implements $GetOutletProductCategoryParamCopyWith<$Res> {
  _$GetOutletProductCategoryParamCopyWithImpl(this._value, this._then);

  final GetOutletProductCategoryParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletProductCategoryParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletProductCategoryQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
    ));
  }

  @override
  $GetOutletProductCategoryQueryParamCopyWith<$Res> get queryString {
    return $GetOutletProductCategoryQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $BodyCopyWith<$Res> get body {
    return $BodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetOutletProductCategoryParamCopyWith<$Res>
    implements $GetOutletProductCategoryParamCopyWith<$Res> {
  factory _$GetOutletProductCategoryParamCopyWith(
          _GetOutletProductCategoryParam value,
          $Res Function(_GetOutletProductCategoryParam) then) =
      __$GetOutletProductCategoryParamCopyWithImpl<$Res>;
  @override
  $Res call({GetOutletProductCategoryQueryParam queryString, Body body});

  @override
  $GetOutletProductCategoryQueryParamCopyWith<$Res> get queryString;
  @override
  $BodyCopyWith<$Res> get body;
}

/// @nodoc
class __$GetOutletProductCategoryParamCopyWithImpl<$Res>
    extends _$GetOutletProductCategoryParamCopyWithImpl<$Res>
    implements _$GetOutletProductCategoryParamCopyWith<$Res> {
  __$GetOutletProductCategoryParamCopyWithImpl(
      _GetOutletProductCategoryParam _value,
      $Res Function(_GetOutletProductCategoryParam) _then)
      : super(_value, (v) => _then(v as _GetOutletProductCategoryParam));

  @override
  _GetOutletProductCategoryParam get _value =>
      super._value as _GetOutletProductCategoryParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetOutletProductCategoryParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletProductCategoryQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Body,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetOutletProductCategoryParam
    implements _GetOutletProductCategoryParam {
  const _$_GetOutletProductCategoryParam(
      {required this.queryString, required this.body});

  factory _$_GetOutletProductCategoryParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetOutletProductCategoryParamFromJson(json);

  @override
  final GetOutletProductCategoryQueryParam queryString;
  @override
  final Body body;

  @override
  String toString() {
    return 'GetOutletProductCategoryParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletProductCategoryParam &&
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
  _$GetOutletProductCategoryParamCopyWith<_GetOutletProductCategoryParam>
      get copyWith => __$GetOutletProductCategoryParamCopyWithImpl<
          _GetOutletProductCategoryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletProductCategoryParamToJson(this);
  }
}

abstract class _GetOutletProductCategoryParam
    implements GetOutletProductCategoryParam {
  const factory _GetOutletProductCategoryParam(
      {required GetOutletProductCategoryQueryParam queryString,
      required Body body}) = _$_GetOutletProductCategoryParam;

  factory _GetOutletProductCategoryParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletProductCategoryParam.fromJson;

  @override
  GetOutletProductCategoryQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  Body get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletProductCategoryParamCopyWith<_GetOutletProductCategoryParam>
      get copyWith => throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
class _$BodyTearOff {
  const _$BodyTearOff();

  _Body call() {
    return const _Body();
  }

  Body fromJson(Map<String, Object> json) {
    return Body.fromJson(json);
  }
}

/// @nodoc
const $Body = _$BodyTearOff();

/// @nodoc
mixin _$Body {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res>;
}

/// @nodoc
class _$BodyCopyWithImpl<$Res> implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  final Body _value;
  // ignore: unused_field
  final $Res Function(Body) _then;
}

/// @nodoc
abstract class _$BodyCopyWith<$Res> {
  factory _$BodyCopyWith(_Body value, $Res Function(_Body) then) =
      __$BodyCopyWithImpl<$Res>;
}

/// @nodoc
class __$BodyCopyWithImpl<$Res> extends _$BodyCopyWithImpl<$Res>
    implements _$BodyCopyWith<$Res> {
  __$BodyCopyWithImpl(_Body _value, $Res Function(_Body) _then)
      : super(_value, (v) => _then(v as _Body));

  @override
  _Body get _value => super._value as _Body;
}

/// @nodoc
@JsonSerializable()
class _$_Body implements _Body {
  const _$_Body();

  factory _$_Body.fromJson(Map<String, dynamic> json) =>
      _$_$_BodyFromJson(json);

  @override
  String toString() {
    return 'Body()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Body);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BodyToJson(this);
  }
}

abstract class _Body implements Body {
  const factory _Body() = _$_Body;

  factory _Body.fromJson(Map<String, dynamic> json) = _$_Body.fromJson;
}

GetOutletProductCategoryQueryParam _$GetOutletProductCategoryQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletProductCategoryQueryParam.fromJson(json);
}

/// @nodoc
class _$GetOutletProductCategoryQueryParamTearOff {
  const _$GetOutletProductCategoryQueryParamTearOff();

  _GetOutletProductCategoryQueryParam call({required String outletId}) {
    return _GetOutletProductCategoryQueryParam(
      outletId: outletId,
    );
  }

  GetOutletProductCategoryQueryParam fromJson(Map<String, Object> json) {
    return GetOutletProductCategoryQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletProductCategoryQueryParam =
    _$GetOutletProductCategoryQueryParamTearOff();

/// @nodoc
mixin _$GetOutletProductCategoryQueryParam {
  String get outletId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletProductCategoryQueryParamCopyWith<
          GetOutletProductCategoryQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletProductCategoryQueryParamCopyWith<$Res> {
  factory $GetOutletProductCategoryQueryParamCopyWith(
          GetOutletProductCategoryQueryParam value,
          $Res Function(GetOutletProductCategoryQueryParam) then) =
      _$GetOutletProductCategoryQueryParamCopyWithImpl<$Res>;
  $Res call({String outletId});
}

/// @nodoc
class _$GetOutletProductCategoryQueryParamCopyWithImpl<$Res>
    implements $GetOutletProductCategoryQueryParamCopyWith<$Res> {
  _$GetOutletProductCategoryQueryParamCopyWithImpl(this._value, this._then);

  final GetOutletProductCategoryQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletProductCategoryQueryParam) _then;

  @override
  $Res call({
    Object? outletId = freezed,
  }) {
    return _then(_value.copyWith(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetOutletProductCategoryQueryParamCopyWith<$Res>
    implements $GetOutletProductCategoryQueryParamCopyWith<$Res> {
  factory _$GetOutletProductCategoryQueryParamCopyWith(
          _GetOutletProductCategoryQueryParam value,
          $Res Function(_GetOutletProductCategoryQueryParam) then) =
      __$GetOutletProductCategoryQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String outletId});
}

/// @nodoc
class __$GetOutletProductCategoryQueryParamCopyWithImpl<$Res>
    extends _$GetOutletProductCategoryQueryParamCopyWithImpl<$Res>
    implements _$GetOutletProductCategoryQueryParamCopyWith<$Res> {
  __$GetOutletProductCategoryQueryParamCopyWithImpl(
      _GetOutletProductCategoryQueryParam _value,
      $Res Function(_GetOutletProductCategoryQueryParam) _then)
      : super(_value, (v) => _then(v as _GetOutletProductCategoryQueryParam));

  @override
  _GetOutletProductCategoryQueryParam get _value =>
      super._value as _GetOutletProductCategoryQueryParam;

  @override
  $Res call({
    Object? outletId = freezed,
  }) {
    return _then(_GetOutletProductCategoryQueryParam(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetOutletProductCategoryQueryParam
    implements _GetOutletProductCategoryQueryParam {
  const _$_GetOutletProductCategoryQueryParam({required this.outletId});

  factory _$_GetOutletProductCategoryQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetOutletProductCategoryQueryParamFromJson(json);

  @override
  final String outletId;

  @override
  String toString() {
    return 'GetOutletProductCategoryQueryParam(outletId: $outletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletProductCategoryQueryParam &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(outletId);

  @JsonKey(ignore: true)
  @override
  _$GetOutletProductCategoryQueryParamCopyWith<
          _GetOutletProductCategoryQueryParam>
      get copyWith => __$GetOutletProductCategoryQueryParamCopyWithImpl<
          _GetOutletProductCategoryQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletProductCategoryQueryParamToJson(this);
  }
}

abstract class _GetOutletProductCategoryQueryParam
    implements GetOutletProductCategoryQueryParam {
  const factory _GetOutletProductCategoryQueryParam(
      {required String outletId}) = _$_GetOutletProductCategoryQueryParam;

  factory _GetOutletProductCategoryQueryParam.fromJson(
          Map<String, dynamic> json) =
      _$_GetOutletProductCategoryQueryParam.fromJson;

  @override
  String get outletId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletProductCategoryQueryParamCopyWith<
          _GetOutletProductCategoryQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
