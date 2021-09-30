// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_detail_outlet_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDetailOutletParam _$GetDetailOutletParamFromJson(Map<String, dynamic> json) {
  return _GetDetailOutletParam.fromJson(json);
}

/// @nodoc
class _$GetDetailOutletParamTearOff {
  const _$GetDetailOutletParamTearOff();

  _GetDetailOutletParam call(
      {required GetDetailOutletQueryParam queryString,
      required GetDetailOutletBodyParam body}) {
    return _GetDetailOutletParam(
      queryString: queryString,
      body: body,
    );
  }

  GetDetailOutletParam fromJson(Map<String, Object> json) {
    return GetDetailOutletParam.fromJson(json);
  }
}

/// @nodoc
const $GetDetailOutletParam = _$GetDetailOutletParamTearOff();

/// @nodoc
mixin _$GetDetailOutletParam {
  GetDetailOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetDetailOutletBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDetailOutletParamCopyWith<GetDetailOutletParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailOutletParamCopyWith<$Res> {
  factory $GetDetailOutletParamCopyWith(GetDetailOutletParam value,
          $Res Function(GetDetailOutletParam) then) =
      _$GetDetailOutletParamCopyWithImpl<$Res>;
  $Res call(
      {GetDetailOutletQueryParam queryString, GetDetailOutletBodyParam body});

  $GetDetailOutletQueryParamCopyWith<$Res> get queryString;
  $GetDetailOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetDetailOutletParamCopyWithImpl<$Res>
    implements $GetDetailOutletParamCopyWith<$Res> {
  _$GetDetailOutletParamCopyWithImpl(this._value, this._then);

  final GetDetailOutletParam _value;
  // ignore: unused_field
  final $Res Function(GetDetailOutletParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetDetailOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetDetailOutletBodyParam,
    ));
  }

  @override
  $GetDetailOutletQueryParamCopyWith<$Res> get queryString {
    return $GetDetailOutletQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetDetailOutletBodyParamCopyWith<$Res> get body {
    return $GetDetailOutletBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetDetailOutletParamCopyWith<$Res>
    implements $GetDetailOutletParamCopyWith<$Res> {
  factory _$GetDetailOutletParamCopyWith(_GetDetailOutletParam value,
          $Res Function(_GetDetailOutletParam) then) =
      __$GetDetailOutletParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetDetailOutletQueryParam queryString, GetDetailOutletBodyParam body});

  @override
  $GetDetailOutletQueryParamCopyWith<$Res> get queryString;
  @override
  $GetDetailOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetDetailOutletParamCopyWithImpl<$Res>
    extends _$GetDetailOutletParamCopyWithImpl<$Res>
    implements _$GetDetailOutletParamCopyWith<$Res> {
  __$GetDetailOutletParamCopyWithImpl(
      _GetDetailOutletParam _value, $Res Function(_GetDetailOutletParam) _then)
      : super(_value, (v) => _then(v as _GetDetailOutletParam));

  @override
  _GetDetailOutletParam get _value => super._value as _GetDetailOutletParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetDetailOutletParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetDetailOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetDetailOutletBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetDetailOutletParam implements _GetDetailOutletParam {
  const _$_GetDetailOutletParam(
      {required this.queryString, required this.body});

  factory _$_GetDetailOutletParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetDetailOutletParamFromJson(json);

  @override
  final GetDetailOutletQueryParam queryString;
  @override
  final GetDetailOutletBodyParam body;

  @override
  String toString() {
    return 'GetDetailOutletParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDetailOutletParam &&
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
  _$GetDetailOutletParamCopyWith<_GetDetailOutletParam> get copyWith =>
      __$GetDetailOutletParamCopyWithImpl<_GetDetailOutletParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetDetailOutletParamToJson(this);
  }
}

abstract class _GetDetailOutletParam implements GetDetailOutletParam {
  const factory _GetDetailOutletParam(
      {required GetDetailOutletQueryParam queryString,
      required GetDetailOutletBodyParam body}) = _$_GetDetailOutletParam;

  factory _GetDetailOutletParam.fromJson(Map<String, dynamic> json) =
      _$_GetDetailOutletParam.fromJson;

  @override
  GetDetailOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetDetailOutletBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetDetailOutletParamCopyWith<_GetDetailOutletParam> get copyWith =>
      throw _privateConstructorUsedError;
}

GetDetailOutletBodyParam _$GetDetailOutletBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetDetailOutletBodyParam.fromJson(json);
}

/// @nodoc
class _$GetDetailOutletBodyParamTearOff {
  const _$GetDetailOutletBodyParamTearOff();

  _GetDetailOutletBodyParam call() {
    return const _GetDetailOutletBodyParam();
  }

  GetDetailOutletBodyParam fromJson(Map<String, Object> json) {
    return GetDetailOutletBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetDetailOutletBodyParam = _$GetDetailOutletBodyParamTearOff();

/// @nodoc
mixin _$GetDetailOutletBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailOutletBodyParamCopyWith<$Res> {
  factory $GetDetailOutletBodyParamCopyWith(GetDetailOutletBodyParam value,
          $Res Function(GetDetailOutletBodyParam) then) =
      _$GetDetailOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetDetailOutletBodyParamCopyWithImpl<$Res>
    implements $GetDetailOutletBodyParamCopyWith<$Res> {
  _$GetDetailOutletBodyParamCopyWithImpl(this._value, this._then);

  final GetDetailOutletBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetDetailOutletBodyParam) _then;
}

/// @nodoc
abstract class _$GetDetailOutletBodyParamCopyWith<$Res> {
  factory _$GetDetailOutletBodyParamCopyWith(_GetDetailOutletBodyParam value,
          $Res Function(_GetDetailOutletBodyParam) then) =
      __$GetDetailOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDetailOutletBodyParamCopyWithImpl<$Res>
    extends _$GetDetailOutletBodyParamCopyWithImpl<$Res>
    implements _$GetDetailOutletBodyParamCopyWith<$Res> {
  __$GetDetailOutletBodyParamCopyWithImpl(_GetDetailOutletBodyParam _value,
      $Res Function(_GetDetailOutletBodyParam) _then)
      : super(_value, (v) => _then(v as _GetDetailOutletBodyParam));

  @override
  _GetDetailOutletBodyParam get _value =>
      super._value as _GetDetailOutletBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetDetailOutletBodyParam implements _GetDetailOutletBodyParam {
  const _$_GetDetailOutletBodyParam();

  factory _$_GetDetailOutletBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetDetailOutletBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetDetailOutletBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetDetailOutletBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetDetailOutletBodyParamToJson(this);
  }
}

abstract class _GetDetailOutletBodyParam implements GetDetailOutletBodyParam {
  const factory _GetDetailOutletBodyParam() = _$_GetDetailOutletBodyParam;

  factory _GetDetailOutletBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetDetailOutletBodyParam.fromJson;
}

GetDetailOutletQueryParam _$GetDetailOutletQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetDetailOutletQueryParam.fromJson(json);
}

/// @nodoc
class _$GetDetailOutletQueryParamTearOff {
  const _$GetDetailOutletQueryParamTearOff();

  _GetDetailOutletQueryParam call({required String outletId}) {
    return _GetDetailOutletQueryParam(
      outletId: outletId,
    );
  }

  GetDetailOutletQueryParam fromJson(Map<String, Object> json) {
    return GetDetailOutletQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetDetailOutletQueryParam = _$GetDetailOutletQueryParamTearOff();

/// @nodoc
mixin _$GetDetailOutletQueryParam {
  String get outletId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDetailOutletQueryParamCopyWith<GetDetailOutletQueryParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDetailOutletQueryParamCopyWith<$Res> {
  factory $GetDetailOutletQueryParamCopyWith(GetDetailOutletQueryParam value,
          $Res Function(GetDetailOutletQueryParam) then) =
      _$GetDetailOutletQueryParamCopyWithImpl<$Res>;
  $Res call({String outletId});
}

/// @nodoc
class _$GetDetailOutletQueryParamCopyWithImpl<$Res>
    implements $GetDetailOutletQueryParamCopyWith<$Res> {
  _$GetDetailOutletQueryParamCopyWithImpl(this._value, this._then);

  final GetDetailOutletQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetDetailOutletQueryParam) _then;

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
abstract class _$GetDetailOutletQueryParamCopyWith<$Res>
    implements $GetDetailOutletQueryParamCopyWith<$Res> {
  factory _$GetDetailOutletQueryParamCopyWith(_GetDetailOutletQueryParam value,
          $Res Function(_GetDetailOutletQueryParam) then) =
      __$GetDetailOutletQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String outletId});
}

/// @nodoc
class __$GetDetailOutletQueryParamCopyWithImpl<$Res>
    extends _$GetDetailOutletQueryParamCopyWithImpl<$Res>
    implements _$GetDetailOutletQueryParamCopyWith<$Res> {
  __$GetDetailOutletQueryParamCopyWithImpl(_GetDetailOutletQueryParam _value,
      $Res Function(_GetDetailOutletQueryParam) _then)
      : super(_value, (v) => _then(v as _GetDetailOutletQueryParam));

  @override
  _GetDetailOutletQueryParam get _value =>
      super._value as _GetDetailOutletQueryParam;

  @override
  $Res call({
    Object? outletId = freezed,
  }) {
    return _then(_GetDetailOutletQueryParam(
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDetailOutletQueryParam implements _GetDetailOutletQueryParam {
  const _$_GetDetailOutletQueryParam({required this.outletId});

  factory _$_GetDetailOutletQueryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetDetailOutletQueryParamFromJson(json);

  @override
  final String outletId;

  @override
  String toString() {
    return 'GetDetailOutletQueryParam(outletId: $outletId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDetailOutletQueryParam &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(outletId);

  @JsonKey(ignore: true)
  @override
  _$GetDetailOutletQueryParamCopyWith<_GetDetailOutletQueryParam>
      get copyWith =>
          __$GetDetailOutletQueryParamCopyWithImpl<_GetDetailOutletQueryParam>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetDetailOutletQueryParamToJson(this);
  }
}

abstract class _GetDetailOutletQueryParam implements GetDetailOutletQueryParam {
  const factory _GetDetailOutletQueryParam({required String outletId}) =
      _$_GetDetailOutletQueryParam;

  factory _GetDetailOutletQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetDetailOutletQueryParam.fromJson;

  @override
  String get outletId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetDetailOutletQueryParamCopyWith<_GetDetailOutletQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
