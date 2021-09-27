// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      required GetOutletProductCategoryBodyParam body}) {
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
  GetOutletProductCategoryBodyParam get body =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {GetOutletProductCategoryQueryParam queryString,
      GetOutletProductCategoryBodyParam body});

  $GetOutletProductCategoryQueryParamCopyWith<$Res> get queryString;
  $GetOutletProductCategoryBodyParamCopyWith<$Res> get body;
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
              as GetOutletProductCategoryBodyParam,
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
  $GetOutletProductCategoryBodyParamCopyWith<$Res> get body {
    return $GetOutletProductCategoryBodyParamCopyWith<$Res>(_value.body,
        (value) {
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
  $Res call(
      {GetOutletProductCategoryQueryParam queryString,
      GetOutletProductCategoryBodyParam body});

  @override
  $GetOutletProductCategoryQueryParamCopyWith<$Res> get queryString;
  @override
  $GetOutletProductCategoryBodyParamCopyWith<$Res> get body;
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
              as GetOutletProductCategoryBodyParam,
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
      _$$_GetOutletProductCategoryParamFromJson(json);

  @override
  final GetOutletProductCategoryQueryParam queryString;
  @override
  final GetOutletProductCategoryBodyParam body;

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
    return _$$_GetOutletProductCategoryParamToJson(this);
  }
}

abstract class _GetOutletProductCategoryParam
    implements GetOutletProductCategoryParam {
  const factory _GetOutletProductCategoryParam(
          {required GetOutletProductCategoryQueryParam queryString,
          required GetOutletProductCategoryBodyParam body}) =
      _$_GetOutletProductCategoryParam;

  factory _GetOutletProductCategoryParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletProductCategoryParam.fromJson;

  @override
  GetOutletProductCategoryQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetOutletProductCategoryBodyParam get body =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletProductCategoryParamCopyWith<_GetOutletProductCategoryParam>
      get copyWith => throw _privateConstructorUsedError;
}

GetOutletProductCategoryBodyParam _$GetOutletProductCategoryBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletProductCategoryBodyParam.fromJson(json);
}

/// @nodoc
class _$GetOutletProductCategoryBodyParamTearOff {
  const _$GetOutletProductCategoryBodyParamTearOff();

  _GetOutletProductCategoryBodyParam call() {
    return const _GetOutletProductCategoryBodyParam();
  }

  GetOutletProductCategoryBodyParam fromJson(Map<String, Object> json) {
    return GetOutletProductCategoryBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletProductCategoryBodyParam =
    _$GetOutletProductCategoryBodyParamTearOff();

/// @nodoc
mixin _$GetOutletProductCategoryBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletProductCategoryBodyParamCopyWith<$Res> {
  factory $GetOutletProductCategoryBodyParamCopyWith(
          GetOutletProductCategoryBodyParam value,
          $Res Function(GetOutletProductCategoryBodyParam) then) =
      _$GetOutletProductCategoryBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOutletProductCategoryBodyParamCopyWithImpl<$Res>
    implements $GetOutletProductCategoryBodyParamCopyWith<$Res> {
  _$GetOutletProductCategoryBodyParamCopyWithImpl(this._value, this._then);

  final GetOutletProductCategoryBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletProductCategoryBodyParam) _then;
}

/// @nodoc
abstract class _$GetOutletProductCategoryBodyParamCopyWith<$Res> {
  factory _$GetOutletProductCategoryBodyParamCopyWith(
          _GetOutletProductCategoryBodyParam value,
          $Res Function(_GetOutletProductCategoryBodyParam) then) =
      __$GetOutletProductCategoryBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetOutletProductCategoryBodyParamCopyWithImpl<$Res>
    extends _$GetOutletProductCategoryBodyParamCopyWithImpl<$Res>
    implements _$GetOutletProductCategoryBodyParamCopyWith<$Res> {
  __$GetOutletProductCategoryBodyParamCopyWithImpl(
      _GetOutletProductCategoryBodyParam _value,
      $Res Function(_GetOutletProductCategoryBodyParam) _then)
      : super(_value, (v) => _then(v as _GetOutletProductCategoryBodyParam));

  @override
  _GetOutletProductCategoryBodyParam get _value =>
      super._value as _GetOutletProductCategoryBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetOutletProductCategoryBodyParam
    implements _GetOutletProductCategoryBodyParam {
  const _$_GetOutletProductCategoryBodyParam();

  factory _$_GetOutletProductCategoryBodyParam.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetOutletProductCategoryBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetOutletProductCategoryBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletProductCategoryBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOutletProductCategoryBodyParamToJson(this);
  }
}

abstract class _GetOutletProductCategoryBodyParam
    implements GetOutletProductCategoryBodyParam {
  const factory _GetOutletProductCategoryBodyParam() =
      _$_GetOutletProductCategoryBodyParam;

  factory _GetOutletProductCategoryBodyParam.fromJson(
          Map<String, dynamic> json) =
      _$_GetOutletProductCategoryBodyParam.fromJson;
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
      _$$_GetOutletProductCategoryQueryParamFromJson(json);

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
    return _$$_GetOutletProductCategoryQueryParamToJson(this);
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
