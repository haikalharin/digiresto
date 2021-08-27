// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_promo_outlet_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPromoOutletParam _$GetPromoOutletParamFromJson(Map<String, dynamic> json) {
  return _GetPromoOutletParam.fromJson(json);
}

/// @nodoc
class _$GetPromoOutletParamTearOff {
  const _$GetPromoOutletParamTearOff();

  _GetPromoOutletParam call(
      {required GetPromoOutletQueryParam queryString,
      required GetPromoOutletBodyParam body}) {
    return _GetPromoOutletParam(
      queryString: queryString,
      body: body,
    );
  }

  GetPromoOutletParam fromJson(Map<String, Object> json) {
    return GetPromoOutletParam.fromJson(json);
  }
}

/// @nodoc
const $GetPromoOutletParam = _$GetPromoOutletParamTearOff();

/// @nodoc
mixin _$GetPromoOutletParam {
  GetPromoOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetPromoOutletBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPromoOutletParamCopyWith<GetPromoOutletParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPromoOutletParamCopyWith<$Res> {
  factory $GetPromoOutletParamCopyWith(
          GetPromoOutletParam value, $Res Function(GetPromoOutletParam) then) =
      _$GetPromoOutletParamCopyWithImpl<$Res>;
  $Res call(
      {GetPromoOutletQueryParam queryString, GetPromoOutletBodyParam body});

  $GetPromoOutletQueryParamCopyWith<$Res> get queryString;
  $GetPromoOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetPromoOutletParamCopyWithImpl<$Res>
    implements $GetPromoOutletParamCopyWith<$Res> {
  _$GetPromoOutletParamCopyWithImpl(this._value, this._then);

  final GetPromoOutletParam _value;
  // ignore: unused_field
  final $Res Function(GetPromoOutletParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetPromoOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetPromoOutletBodyParam,
    ));
  }

  @override
  $GetPromoOutletQueryParamCopyWith<$Res> get queryString {
    return $GetPromoOutletQueryParamCopyWith<$Res>(_value.queryString, (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetPromoOutletBodyParamCopyWith<$Res> get body {
    return $GetPromoOutletBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetPromoOutletParamCopyWith<$Res>
    implements $GetPromoOutletParamCopyWith<$Res> {
  factory _$GetPromoOutletParamCopyWith(_GetPromoOutletParam value,
          $Res Function(_GetPromoOutletParam) then) =
      __$GetPromoOutletParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetPromoOutletQueryParam queryString, GetPromoOutletBodyParam body});

  @override
  $GetPromoOutletQueryParamCopyWith<$Res> get queryString;
  @override
  $GetPromoOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetPromoOutletParamCopyWithImpl<$Res>
    extends _$GetPromoOutletParamCopyWithImpl<$Res>
    implements _$GetPromoOutletParamCopyWith<$Res> {
  __$GetPromoOutletParamCopyWithImpl(
      _GetPromoOutletParam _value, $Res Function(_GetPromoOutletParam) _then)
      : super(_value, (v) => _then(v as _GetPromoOutletParam));

  @override
  _GetPromoOutletParam get _value => super._value as _GetPromoOutletParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetPromoOutletParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetPromoOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetPromoOutletBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetPromoOutletParam implements _GetPromoOutletParam {
  const _$_GetPromoOutletParam({required this.queryString, required this.body});

  factory _$_GetPromoOutletParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPromoOutletParamFromJson(json);

  @override
  final GetPromoOutletQueryParam queryString;
  @override
  final GetPromoOutletBodyParam body;

  @override
  String toString() {
    return 'GetPromoOutletParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPromoOutletParam &&
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
  _$GetPromoOutletParamCopyWith<_GetPromoOutletParam> get copyWith =>
      __$GetPromoOutletParamCopyWithImpl<_GetPromoOutletParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPromoOutletParamToJson(this);
  }
}

abstract class _GetPromoOutletParam implements GetPromoOutletParam {
  const factory _GetPromoOutletParam(
      {required GetPromoOutletQueryParam queryString,
      required GetPromoOutletBodyParam body}) = _$_GetPromoOutletParam;

  factory _GetPromoOutletParam.fromJson(Map<String, dynamic> json) =
      _$_GetPromoOutletParam.fromJson;

  @override
  GetPromoOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetPromoOutletBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPromoOutletParamCopyWith<_GetPromoOutletParam> get copyWith =>
      throw _privateConstructorUsedError;
}

GetPromoOutletBodyParam _$GetPromoOutletBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetPromoOutletBodyParam.fromJson(json);
}

/// @nodoc
class _$GetPromoOutletBodyParamTearOff {
  const _$GetPromoOutletBodyParamTearOff();

  _GetPromoOutletBodyParam call() {
    return const _GetPromoOutletBodyParam();
  }

  GetPromoOutletBodyParam fromJson(Map<String, Object> json) {
    return GetPromoOutletBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetPromoOutletBodyParam = _$GetPromoOutletBodyParamTearOff();

/// @nodoc
mixin _$GetPromoOutletBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPromoOutletBodyParamCopyWith<$Res> {
  factory $GetPromoOutletBodyParamCopyWith(GetPromoOutletBodyParam value,
          $Res Function(GetPromoOutletBodyParam) then) =
      _$GetPromoOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetPromoOutletBodyParamCopyWithImpl<$Res>
    implements $GetPromoOutletBodyParamCopyWith<$Res> {
  _$GetPromoOutletBodyParamCopyWithImpl(this._value, this._then);

  final GetPromoOutletBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetPromoOutletBodyParam) _then;
}

/// @nodoc
abstract class _$GetPromoOutletBodyParamCopyWith<$Res> {
  factory _$GetPromoOutletBodyParamCopyWith(_GetPromoOutletBodyParam value,
          $Res Function(_GetPromoOutletBodyParam) then) =
      __$GetPromoOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPromoOutletBodyParamCopyWithImpl<$Res>
    extends _$GetPromoOutletBodyParamCopyWithImpl<$Res>
    implements _$GetPromoOutletBodyParamCopyWith<$Res> {
  __$GetPromoOutletBodyParamCopyWithImpl(_GetPromoOutletBodyParam _value,
      $Res Function(_GetPromoOutletBodyParam) _then)
      : super(_value, (v) => _then(v as _GetPromoOutletBodyParam));

  @override
  _GetPromoOutletBodyParam get _value =>
      super._value as _GetPromoOutletBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetPromoOutletBodyParam implements _GetPromoOutletBodyParam {
  const _$_GetPromoOutletBodyParam();

  factory _$_GetPromoOutletBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPromoOutletBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetPromoOutletBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetPromoOutletBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPromoOutletBodyParamToJson(this);
  }
}

abstract class _GetPromoOutletBodyParam implements GetPromoOutletBodyParam {
  const factory _GetPromoOutletBodyParam() = _$_GetPromoOutletBodyParam;

  factory _GetPromoOutletBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetPromoOutletBodyParam.fromJson;
}

GetPromoOutletQueryParam _$GetPromoOutletQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetPromoOutletQueryParam.fromJson(json);
}

/// @nodoc
class _$GetPromoOutletQueryParamTearOff {
  const _$GetPromoOutletQueryParamTearOff();

  _GetPromoOutletQueryParam call(
      {required String location, required int page, required String filter}) {
    return _GetPromoOutletQueryParam(
      location: location,
      page: page,
      filter: filter,
    );
  }

  GetPromoOutletQueryParam fromJson(Map<String, Object> json) {
    return GetPromoOutletQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetPromoOutletQueryParam = _$GetPromoOutletQueryParamTearOff();

/// @nodoc
mixin _$GetPromoOutletQueryParam {
  String get location => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPromoOutletQueryParamCopyWith<GetPromoOutletQueryParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPromoOutletQueryParamCopyWith<$Res> {
  factory $GetPromoOutletQueryParamCopyWith(GetPromoOutletQueryParam value,
          $Res Function(GetPromoOutletQueryParam) then) =
      _$GetPromoOutletQueryParamCopyWithImpl<$Res>;
  $Res call({String location, int page, String filter});
}

/// @nodoc
class _$GetPromoOutletQueryParamCopyWithImpl<$Res>
    implements $GetPromoOutletQueryParamCopyWith<$Res> {
  _$GetPromoOutletQueryParamCopyWithImpl(this._value, this._then);

  final GetPromoOutletQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetPromoOutletQueryParam) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? page = freezed,
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
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetPromoOutletQueryParamCopyWith<$Res>
    implements $GetPromoOutletQueryParamCopyWith<$Res> {
  factory _$GetPromoOutletQueryParamCopyWith(_GetPromoOutletQueryParam value,
          $Res Function(_GetPromoOutletQueryParam) then) =
      __$GetPromoOutletQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String location, int page, String filter});
}

/// @nodoc
class __$GetPromoOutletQueryParamCopyWithImpl<$Res>
    extends _$GetPromoOutletQueryParamCopyWithImpl<$Res>
    implements _$GetPromoOutletQueryParamCopyWith<$Res> {
  __$GetPromoOutletQueryParamCopyWithImpl(_GetPromoOutletQueryParam _value,
      $Res Function(_GetPromoOutletQueryParam) _then)
      : super(_value, (v) => _then(v as _GetPromoOutletQueryParam));

  @override
  _GetPromoOutletQueryParam get _value =>
      super._value as _GetPromoOutletQueryParam;

  @override
  $Res call({
    Object? location = freezed,
    Object? page = freezed,
    Object? filter = freezed,
  }) {
    return _then(_GetPromoOutletQueryParam(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPromoOutletQueryParam implements _GetPromoOutletQueryParam {
  const _$_GetPromoOutletQueryParam(
      {required this.location, required this.page, required this.filter});

  factory _$_GetPromoOutletQueryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPromoOutletQueryParamFromJson(json);

  @override
  final String location;
  @override
  final int page;
  @override
  final String filter;

  @override
  String toString() {
    return 'GetPromoOutletQueryParam(location: $location, page: $page, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPromoOutletQueryParam &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$GetPromoOutletQueryParamCopyWith<_GetPromoOutletQueryParam> get copyWith =>
      __$GetPromoOutletQueryParamCopyWithImpl<_GetPromoOutletQueryParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPromoOutletQueryParamToJson(this);
  }
}

abstract class _GetPromoOutletQueryParam implements GetPromoOutletQueryParam {
  const factory _GetPromoOutletQueryParam(
      {required String location,
      required int page,
      required String filter}) = _$_GetPromoOutletQueryParam;

  factory _GetPromoOutletQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetPromoOutletQueryParam.fromJson;

  @override
  String get location => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  String get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPromoOutletQueryParamCopyWith<_GetPromoOutletQueryParam> get copyWith =>
      throw _privateConstructorUsedError;
}
