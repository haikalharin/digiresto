// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_outlet_by_location_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOutletByLocationParam _$GetOutletByLocationParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByLocationParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByLocationParamTearOff {
  const _$GetOutletByLocationParamTearOff();

  _GetOutletByLocationParam call(
      {required GetOutletByLocationQueryParam queryString,
      required GetOutletByLocationBodyParam body}) {
    return _GetOutletByLocationParam(
      queryString: queryString,
      body: body,
    );
  }

  GetOutletByLocationParam fromJson(Map<String, Object> json) {
    return GetOutletByLocationParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByLocationParam = _$GetOutletByLocationParamTearOff();

/// @nodoc
mixin _$GetOutletByLocationParam {
  GetOutletByLocationQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetOutletByLocationBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletByLocationParamCopyWith<GetOutletByLocationParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByLocationParamCopyWith<$Res> {
  factory $GetOutletByLocationParamCopyWith(GetOutletByLocationParam value,
          $Res Function(GetOutletByLocationParam) then) =
      _$GetOutletByLocationParamCopyWithImpl<$Res>;
  $Res call(
      {GetOutletByLocationQueryParam queryString,
      GetOutletByLocationBodyParam body});

  $GetOutletByLocationQueryParamCopyWith<$Res> get queryString;
  $GetOutletByLocationBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetOutletByLocationParamCopyWithImpl<$Res>
    implements $GetOutletByLocationParamCopyWith<$Res> {
  _$GetOutletByLocationParamCopyWithImpl(this._value, this._then);

  final GetOutletByLocationParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByLocationParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletByLocationQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetOutletByLocationBodyParam,
    ));
  }

  @override
  $GetOutletByLocationQueryParamCopyWith<$Res> get queryString {
    return $GetOutletByLocationQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetOutletByLocationBodyParamCopyWith<$Res> get body {
    return $GetOutletByLocationBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetOutletByLocationParamCopyWith<$Res>
    implements $GetOutletByLocationParamCopyWith<$Res> {
  factory _$GetOutletByLocationParamCopyWith(_GetOutletByLocationParam value,
          $Res Function(_GetOutletByLocationParam) then) =
      __$GetOutletByLocationParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetOutletByLocationQueryParam queryString,
      GetOutletByLocationBodyParam body});

  @override
  $GetOutletByLocationQueryParamCopyWith<$Res> get queryString;
  @override
  $GetOutletByLocationBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetOutletByLocationParamCopyWithImpl<$Res>
    extends _$GetOutletByLocationParamCopyWithImpl<$Res>
    implements _$GetOutletByLocationParamCopyWith<$Res> {
  __$GetOutletByLocationParamCopyWithImpl(_GetOutletByLocationParam _value,
      $Res Function(_GetOutletByLocationParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByLocationParam));

  @override
  _GetOutletByLocationParam get _value =>
      super._value as _GetOutletByLocationParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetOutletByLocationParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletByLocationQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetOutletByLocationBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetOutletByLocationParam implements _GetOutletByLocationParam {
  const _$_GetOutletByLocationParam(
      {required this.queryString, required this.body});

  factory _$_GetOutletByLocationParam.fromJson(Map<String, dynamic> json) =>
      _$$_GetOutletByLocationParamFromJson(json);

  @override
  final GetOutletByLocationQueryParam queryString;
  @override
  final GetOutletByLocationBodyParam body;

  @override
  String toString() {
    return 'GetOutletByLocationParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByLocationParam &&
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
  _$GetOutletByLocationParamCopyWith<_GetOutletByLocationParam> get copyWith =>
      __$GetOutletByLocationParamCopyWithImpl<_GetOutletByLocationParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOutletByLocationParamToJson(this);
  }
}

abstract class _GetOutletByLocationParam implements GetOutletByLocationParam {
  const factory _GetOutletByLocationParam(
          {required GetOutletByLocationQueryParam queryString,
          required GetOutletByLocationBodyParam body}) =
      _$_GetOutletByLocationParam;

  factory _GetOutletByLocationParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByLocationParam.fromJson;

  @override
  GetOutletByLocationQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetOutletByLocationBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletByLocationParamCopyWith<_GetOutletByLocationParam> get copyWith =>
      throw _privateConstructorUsedError;
}

GetOutletByLocationBodyParam _$GetOutletByLocationBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByLocationBodyParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByLocationBodyParamTearOff {
  const _$GetOutletByLocationBodyParamTearOff();

  _GetOutletByLocationBodyParam call() {
    return const _GetOutletByLocationBodyParam();
  }

  GetOutletByLocationBodyParam fromJson(Map<String, Object> json) {
    return GetOutletByLocationBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByLocationBodyParam = _$GetOutletByLocationBodyParamTearOff();

/// @nodoc
mixin _$GetOutletByLocationBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByLocationBodyParamCopyWith<$Res> {
  factory $GetOutletByLocationBodyParamCopyWith(
          GetOutletByLocationBodyParam value,
          $Res Function(GetOutletByLocationBodyParam) then) =
      _$GetOutletByLocationBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOutletByLocationBodyParamCopyWithImpl<$Res>
    implements $GetOutletByLocationBodyParamCopyWith<$Res> {
  _$GetOutletByLocationBodyParamCopyWithImpl(this._value, this._then);

  final GetOutletByLocationBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByLocationBodyParam) _then;
}

/// @nodoc
abstract class _$GetOutletByLocationBodyParamCopyWith<$Res> {
  factory _$GetOutletByLocationBodyParamCopyWith(
          _GetOutletByLocationBodyParam value,
          $Res Function(_GetOutletByLocationBodyParam) then) =
      __$GetOutletByLocationBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetOutletByLocationBodyParamCopyWithImpl<$Res>
    extends _$GetOutletByLocationBodyParamCopyWithImpl<$Res>
    implements _$GetOutletByLocationBodyParamCopyWith<$Res> {
  __$GetOutletByLocationBodyParamCopyWithImpl(
      _GetOutletByLocationBodyParam _value,
      $Res Function(_GetOutletByLocationBodyParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByLocationBodyParam));

  @override
  _GetOutletByLocationBodyParam get _value =>
      super._value as _GetOutletByLocationBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetOutletByLocationBodyParam implements _GetOutletByLocationBodyParam {
  const _$_GetOutletByLocationBodyParam();

  factory _$_GetOutletByLocationBodyParam.fromJson(Map<String, dynamic> json) =>
      _$$_GetOutletByLocationBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetOutletByLocationBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetOutletByLocationBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOutletByLocationBodyParamToJson(this);
  }
}

abstract class _GetOutletByLocationBodyParam
    implements GetOutletByLocationBodyParam {
  const factory _GetOutletByLocationBodyParam() =
      _$_GetOutletByLocationBodyParam;

  factory _GetOutletByLocationBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByLocationBodyParam.fromJson;
}

GetOutletByLocationQueryParam _$GetOutletByLocationQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByLocationQueryParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByLocationQueryParamTearOff {
  const _$GetOutletByLocationQueryParamTearOff();

  _GetOutletByLocationQueryParam call(
      {required String location, required int page, required String filter}) {
    return _GetOutletByLocationQueryParam(
      location: location,
      page: page,
      filter: filter,
    );
  }

  GetOutletByLocationQueryParam fromJson(Map<String, Object> json) {
    return GetOutletByLocationQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByLocationQueryParam = _$GetOutletByLocationQueryParamTearOff();

/// @nodoc
mixin _$GetOutletByLocationQueryParam {
  String get location => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletByLocationQueryParamCopyWith<GetOutletByLocationQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByLocationQueryParamCopyWith<$Res> {
  factory $GetOutletByLocationQueryParamCopyWith(
          GetOutletByLocationQueryParam value,
          $Res Function(GetOutletByLocationQueryParam) then) =
      _$GetOutletByLocationQueryParamCopyWithImpl<$Res>;
  $Res call({String location, int page, String filter});
}

/// @nodoc
class _$GetOutletByLocationQueryParamCopyWithImpl<$Res>
    implements $GetOutletByLocationQueryParamCopyWith<$Res> {
  _$GetOutletByLocationQueryParamCopyWithImpl(this._value, this._then);

  final GetOutletByLocationQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByLocationQueryParam) _then;

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
abstract class _$GetOutletByLocationQueryParamCopyWith<$Res>
    implements $GetOutletByLocationQueryParamCopyWith<$Res> {
  factory _$GetOutletByLocationQueryParamCopyWith(
          _GetOutletByLocationQueryParam value,
          $Res Function(_GetOutletByLocationQueryParam) then) =
      __$GetOutletByLocationQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String location, int page, String filter});
}

/// @nodoc
class __$GetOutletByLocationQueryParamCopyWithImpl<$Res>
    extends _$GetOutletByLocationQueryParamCopyWithImpl<$Res>
    implements _$GetOutletByLocationQueryParamCopyWith<$Res> {
  __$GetOutletByLocationQueryParamCopyWithImpl(
      _GetOutletByLocationQueryParam _value,
      $Res Function(_GetOutletByLocationQueryParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByLocationQueryParam));

  @override
  _GetOutletByLocationQueryParam get _value =>
      super._value as _GetOutletByLocationQueryParam;

  @override
  $Res call({
    Object? location = freezed,
    Object? page = freezed,
    Object? filter = freezed,
  }) {
    return _then(_GetOutletByLocationQueryParam(
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
class _$_GetOutletByLocationQueryParam
    implements _GetOutletByLocationQueryParam {
  const _$_GetOutletByLocationQueryParam(
      {required this.location, required this.page, required this.filter});

  factory _$_GetOutletByLocationQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$$_GetOutletByLocationQueryParamFromJson(json);

  @override
  final String location;
  @override
  final int page;
  @override
  final String filter;

  @override
  String toString() {
    return 'GetOutletByLocationQueryParam(location: $location, page: $page, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByLocationQueryParam &&
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
  _$GetOutletByLocationQueryParamCopyWith<_GetOutletByLocationQueryParam>
      get copyWith => __$GetOutletByLocationQueryParamCopyWithImpl<
          _GetOutletByLocationQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetOutletByLocationQueryParamToJson(this);
  }
}

abstract class _GetOutletByLocationQueryParam
    implements GetOutletByLocationQueryParam {
  const factory _GetOutletByLocationQueryParam(
      {required String location,
      required int page,
      required String filter}) = _$_GetOutletByLocationQueryParam;

  factory _GetOutletByLocationQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByLocationQueryParam.fromJson;

  @override
  String get location => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  String get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletByLocationQueryParamCopyWith<_GetOutletByLocationQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
