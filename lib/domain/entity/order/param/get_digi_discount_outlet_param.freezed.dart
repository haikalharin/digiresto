// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_digi_discount_outlet_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDigiDiscountOutletParam _$GetDigiDiscountOutletParamFromJson(
    Map<String, dynamic> json) {
  return _GetDigiDiscountOutletParam.fromJson(json);
}

/// @nodoc
class _$GetDigiDiscountOutletParamTearOff {
  const _$GetDigiDiscountOutletParamTearOff();

  _GetDigiDiscountOutletParam call(
      {required GetDigiDiscountOutletQueryParam queryString,
      required GetDigiDiscountOutletBodyParam body}) {
    return _GetDigiDiscountOutletParam(
      queryString: queryString,
      body: body,
    );
  }

  GetDigiDiscountOutletParam fromJson(Map<String, Object> json) {
    return GetDigiDiscountOutletParam.fromJson(json);
  }
}

/// @nodoc
const $GetDigiDiscountOutletParam = _$GetDigiDiscountOutletParamTearOff();

/// @nodoc
mixin _$GetDigiDiscountOutletParam {
  GetDigiDiscountOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetDigiDiscountOutletBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDigiDiscountOutletParamCopyWith<GetDigiDiscountOutletParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDigiDiscountOutletParamCopyWith<$Res> {
  factory $GetDigiDiscountOutletParamCopyWith(GetDigiDiscountOutletParam value,
          $Res Function(GetDigiDiscountOutletParam) then) =
      _$GetDigiDiscountOutletParamCopyWithImpl<$Res>;
  $Res call(
      {GetDigiDiscountOutletQueryParam queryString,
      GetDigiDiscountOutletBodyParam body});

  $GetDigiDiscountOutletQueryParamCopyWith<$Res> get queryString;
  $GetDigiDiscountOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetDigiDiscountOutletParamCopyWithImpl<$Res>
    implements $GetDigiDiscountOutletParamCopyWith<$Res> {
  _$GetDigiDiscountOutletParamCopyWithImpl(this._value, this._then);

  final GetDigiDiscountOutletParam _value;
  // ignore: unused_field
  final $Res Function(GetDigiDiscountOutletParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetDigiDiscountOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetDigiDiscountOutletBodyParam,
    ));
  }

  @override
  $GetDigiDiscountOutletQueryParamCopyWith<$Res> get queryString {
    return $GetDigiDiscountOutletQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetDigiDiscountOutletBodyParamCopyWith<$Res> get body {
    return $GetDigiDiscountOutletBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetDigiDiscountOutletParamCopyWith<$Res>
    implements $GetDigiDiscountOutletParamCopyWith<$Res> {
  factory _$GetDigiDiscountOutletParamCopyWith(
          _GetDigiDiscountOutletParam value,
          $Res Function(_GetDigiDiscountOutletParam) then) =
      __$GetDigiDiscountOutletParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetDigiDiscountOutletQueryParam queryString,
      GetDigiDiscountOutletBodyParam body});

  @override
  $GetDigiDiscountOutletQueryParamCopyWith<$Res> get queryString;
  @override
  $GetDigiDiscountOutletBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetDigiDiscountOutletParamCopyWithImpl<$Res>
    extends _$GetDigiDiscountOutletParamCopyWithImpl<$Res>
    implements _$GetDigiDiscountOutletParamCopyWith<$Res> {
  __$GetDigiDiscountOutletParamCopyWithImpl(_GetDigiDiscountOutletParam _value,
      $Res Function(_GetDigiDiscountOutletParam) _then)
      : super(_value, (v) => _then(v as _GetDigiDiscountOutletParam));

  @override
  _GetDigiDiscountOutletParam get _value =>
      super._value as _GetDigiDiscountOutletParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetDigiDiscountOutletParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetDigiDiscountOutletQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetDigiDiscountOutletBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetDigiDiscountOutletParam implements _GetDigiDiscountOutletParam {
  const _$_GetDigiDiscountOutletParam(
      {required this.queryString, required this.body});

  factory _$_GetDigiDiscountOutletParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetDigiDiscountOutletParamFromJson(json);

  @override
  final GetDigiDiscountOutletQueryParam queryString;
  @override
  final GetDigiDiscountOutletBodyParam body;

  @override
  String toString() {
    return 'GetDigiDiscountOutletParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDigiDiscountOutletParam &&
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
  _$GetDigiDiscountOutletParamCopyWith<_GetDigiDiscountOutletParam>
      get copyWith => __$GetDigiDiscountOutletParamCopyWithImpl<
          _GetDigiDiscountOutletParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetDigiDiscountOutletParamToJson(this);
  }
}

abstract class _GetDigiDiscountOutletParam
    implements GetDigiDiscountOutletParam {
  const factory _GetDigiDiscountOutletParam(
          {required GetDigiDiscountOutletQueryParam queryString,
          required GetDigiDiscountOutletBodyParam body}) =
      _$_GetDigiDiscountOutletParam;

  factory _GetDigiDiscountOutletParam.fromJson(Map<String, dynamic> json) =
      _$_GetDigiDiscountOutletParam.fromJson;

  @override
  GetDigiDiscountOutletQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetDigiDiscountOutletBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetDigiDiscountOutletParamCopyWith<_GetDigiDiscountOutletParam>
      get copyWith => throw _privateConstructorUsedError;
}

GetDigiDiscountOutletBodyParam _$GetDigiDiscountOutletBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetDigiDiscountOutletBodyParam.fromJson(json);
}

/// @nodoc
class _$GetDigiDiscountOutletBodyParamTearOff {
  const _$GetDigiDiscountOutletBodyParamTearOff();

  _GetDigiDiscountOutletBodyParam call() {
    return const _GetDigiDiscountOutletBodyParam();
  }

  GetDigiDiscountOutletBodyParam fromJson(Map<String, Object> json) {
    return GetDigiDiscountOutletBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetDigiDiscountOutletBodyParam =
    _$GetDigiDiscountOutletBodyParamTearOff();

/// @nodoc
mixin _$GetDigiDiscountOutletBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDigiDiscountOutletBodyParamCopyWith<$Res> {
  factory $GetDigiDiscountOutletBodyParamCopyWith(
          GetDigiDiscountOutletBodyParam value,
          $Res Function(GetDigiDiscountOutletBodyParam) then) =
      _$GetDigiDiscountOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetDigiDiscountOutletBodyParamCopyWithImpl<$Res>
    implements $GetDigiDiscountOutletBodyParamCopyWith<$Res> {
  _$GetDigiDiscountOutletBodyParamCopyWithImpl(this._value, this._then);

  final GetDigiDiscountOutletBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetDigiDiscountOutletBodyParam) _then;
}

/// @nodoc
abstract class _$GetDigiDiscountOutletBodyParamCopyWith<$Res> {
  factory _$GetDigiDiscountOutletBodyParamCopyWith(
          _GetDigiDiscountOutletBodyParam value,
          $Res Function(_GetDigiDiscountOutletBodyParam) then) =
      __$GetDigiDiscountOutletBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetDigiDiscountOutletBodyParamCopyWithImpl<$Res>
    extends _$GetDigiDiscountOutletBodyParamCopyWithImpl<$Res>
    implements _$GetDigiDiscountOutletBodyParamCopyWith<$Res> {
  __$GetDigiDiscountOutletBodyParamCopyWithImpl(
      _GetDigiDiscountOutletBodyParam _value,
      $Res Function(_GetDigiDiscountOutletBodyParam) _then)
      : super(_value, (v) => _then(v as _GetDigiDiscountOutletBodyParam));

  @override
  _GetDigiDiscountOutletBodyParam get _value =>
      super._value as _GetDigiDiscountOutletBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetDigiDiscountOutletBodyParam
    implements _GetDigiDiscountOutletBodyParam {
  const _$_GetDigiDiscountOutletBodyParam();

  factory _$_GetDigiDiscountOutletBodyParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetDigiDiscountOutletBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetDigiDiscountOutletBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetDigiDiscountOutletBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetDigiDiscountOutletBodyParamToJson(this);
  }
}

abstract class _GetDigiDiscountOutletBodyParam
    implements GetDigiDiscountOutletBodyParam {
  const factory _GetDigiDiscountOutletBodyParam() =
      _$_GetDigiDiscountOutletBodyParam;

  factory _GetDigiDiscountOutletBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetDigiDiscountOutletBodyParam.fromJson;
}

GetDigiDiscountOutletQueryParam _$GetDigiDiscountOutletQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetDigiDiscountOutletQueryParam.fromJson(json);
}

/// @nodoc
class _$GetDigiDiscountOutletQueryParamTearOff {
  const _$GetDigiDiscountOutletQueryParamTearOff();

  _GetDigiDiscountOutletQueryParam call(
      {required String location, required int page, required String filter}) {
    return _GetDigiDiscountOutletQueryParam(
      location: location,
      page: page,
      filter: filter,
    );
  }

  GetDigiDiscountOutletQueryParam fromJson(Map<String, Object> json) {
    return GetDigiDiscountOutletQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetDigiDiscountOutletQueryParam =
    _$GetDigiDiscountOutletQueryParamTearOff();

/// @nodoc
mixin _$GetDigiDiscountOutletQueryParam {
  String get location => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDigiDiscountOutletQueryParamCopyWith<GetDigiDiscountOutletQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDigiDiscountOutletQueryParamCopyWith<$Res> {
  factory $GetDigiDiscountOutletQueryParamCopyWith(
          GetDigiDiscountOutletQueryParam value,
          $Res Function(GetDigiDiscountOutletQueryParam) then) =
      _$GetDigiDiscountOutletQueryParamCopyWithImpl<$Res>;
  $Res call({String location, int page, String filter});
}

/// @nodoc
class _$GetDigiDiscountOutletQueryParamCopyWithImpl<$Res>
    implements $GetDigiDiscountOutletQueryParamCopyWith<$Res> {
  _$GetDigiDiscountOutletQueryParamCopyWithImpl(this._value, this._then);

  final GetDigiDiscountOutletQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetDigiDiscountOutletQueryParam) _then;

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
abstract class _$GetDigiDiscountOutletQueryParamCopyWith<$Res>
    implements $GetDigiDiscountOutletQueryParamCopyWith<$Res> {
  factory _$GetDigiDiscountOutletQueryParamCopyWith(
          _GetDigiDiscountOutletQueryParam value,
          $Res Function(_GetDigiDiscountOutletQueryParam) then) =
      __$GetDigiDiscountOutletQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String location, int page, String filter});
}

/// @nodoc
class __$GetDigiDiscountOutletQueryParamCopyWithImpl<$Res>
    extends _$GetDigiDiscountOutletQueryParamCopyWithImpl<$Res>
    implements _$GetDigiDiscountOutletQueryParamCopyWith<$Res> {
  __$GetDigiDiscountOutletQueryParamCopyWithImpl(
      _GetDigiDiscountOutletQueryParam _value,
      $Res Function(_GetDigiDiscountOutletQueryParam) _then)
      : super(_value, (v) => _then(v as _GetDigiDiscountOutletQueryParam));

  @override
  _GetDigiDiscountOutletQueryParam get _value =>
      super._value as _GetDigiDiscountOutletQueryParam;

  @override
  $Res call({
    Object? location = freezed,
    Object? page = freezed,
    Object? filter = freezed,
  }) {
    return _then(_GetDigiDiscountOutletQueryParam(
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
class _$_GetDigiDiscountOutletQueryParam
    implements _GetDigiDiscountOutletQueryParam {
  const _$_GetDigiDiscountOutletQueryParam(
      {required this.location, required this.page, required this.filter});

  factory _$_GetDigiDiscountOutletQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetDigiDiscountOutletQueryParamFromJson(json);

  @override
  final String location;
  @override
  final int page;
  @override
  final String filter;

  @override
  String toString() {
    return 'GetDigiDiscountOutletQueryParam(location: $location, page: $page, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetDigiDiscountOutletQueryParam &&
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
  _$GetDigiDiscountOutletQueryParamCopyWith<_GetDigiDiscountOutletQueryParam>
      get copyWith => __$GetDigiDiscountOutletQueryParamCopyWithImpl<
          _GetDigiDiscountOutletQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetDigiDiscountOutletQueryParamToJson(this);
  }
}

abstract class _GetDigiDiscountOutletQueryParam
    implements GetDigiDiscountOutletQueryParam {
  const factory _GetDigiDiscountOutletQueryParam(
      {required String location,
      required int page,
      required String filter}) = _$_GetDigiDiscountOutletQueryParam;

  factory _GetDigiDiscountOutletQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetDigiDiscountOutletQueryParam.fromJson;

  @override
  String get location => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  String get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetDigiDiscountOutletQueryParamCopyWith<_GetDigiDiscountOutletQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
