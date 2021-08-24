// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_outlet_by_category_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOutletByCategoryParam _$GetOutletByCategoryParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByCategoryParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByCategoryParamTearOff {
  const _$GetOutletByCategoryParamTearOff();

  _GetOutletByCategoryParam call(
      {required GetOutletByCategoryQueryParam queryString,
      required GetOutletByCategoryBodyParam body}) {
    return _GetOutletByCategoryParam(
      queryString: queryString,
      body: body,
    );
  }

  GetOutletByCategoryParam fromJson(Map<String, Object> json) {
    return GetOutletByCategoryParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByCategoryParam = _$GetOutletByCategoryParamTearOff();

/// @nodoc
mixin _$GetOutletByCategoryParam {
  GetOutletByCategoryQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetOutletByCategoryBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletByCategoryParamCopyWith<GetOutletByCategoryParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByCategoryParamCopyWith<$Res> {
  factory $GetOutletByCategoryParamCopyWith(GetOutletByCategoryParam value,
          $Res Function(GetOutletByCategoryParam) then) =
      _$GetOutletByCategoryParamCopyWithImpl<$Res>;
  $Res call(
      {GetOutletByCategoryQueryParam queryString,
      GetOutletByCategoryBodyParam body});

  $GetOutletByCategoryQueryParamCopyWith<$Res> get queryString;
  $GetOutletByCategoryBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetOutletByCategoryParamCopyWithImpl<$Res>
    implements $GetOutletByCategoryParamCopyWith<$Res> {
  _$GetOutletByCategoryParamCopyWithImpl(this._value, this._then);

  final GetOutletByCategoryParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByCategoryParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletByCategoryQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetOutletByCategoryBodyParam,
    ));
  }

  @override
  $GetOutletByCategoryQueryParamCopyWith<$Res> get queryString {
    return $GetOutletByCategoryQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetOutletByCategoryBodyParamCopyWith<$Res> get body {
    return $GetOutletByCategoryBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetOutletByCategoryParamCopyWith<$Res>
    implements $GetOutletByCategoryParamCopyWith<$Res> {
  factory _$GetOutletByCategoryParamCopyWith(_GetOutletByCategoryParam value,
          $Res Function(_GetOutletByCategoryParam) then) =
      __$GetOutletByCategoryParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetOutletByCategoryQueryParam queryString,
      GetOutletByCategoryBodyParam body});

  @override
  $GetOutletByCategoryQueryParamCopyWith<$Res> get queryString;
  @override
  $GetOutletByCategoryBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetOutletByCategoryParamCopyWithImpl<$Res>
    extends _$GetOutletByCategoryParamCopyWithImpl<$Res>
    implements _$GetOutletByCategoryParamCopyWith<$Res> {
  __$GetOutletByCategoryParamCopyWithImpl(_GetOutletByCategoryParam _value,
      $Res Function(_GetOutletByCategoryParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByCategoryParam));

  @override
  _GetOutletByCategoryParam get _value =>
      super._value as _GetOutletByCategoryParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetOutletByCategoryParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetOutletByCategoryQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetOutletByCategoryBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_GetOutletByCategoryParam implements _GetOutletByCategoryParam {
  const _$_GetOutletByCategoryParam(
      {required this.queryString, required this.body});

  factory _$_GetOutletByCategoryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetOutletByCategoryParamFromJson(json);

  @override
  final GetOutletByCategoryQueryParam queryString;
  @override
  final GetOutletByCategoryBodyParam body;

  @override
  String toString() {
    return 'GetOutletByCategoryParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByCategoryParam &&
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
  _$GetOutletByCategoryParamCopyWith<_GetOutletByCategoryParam> get copyWith =>
      __$GetOutletByCategoryParamCopyWithImpl<_GetOutletByCategoryParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletByCategoryParamToJson(this);
  }
}

abstract class _GetOutletByCategoryParam implements GetOutletByCategoryParam {
  const factory _GetOutletByCategoryParam(
          {required GetOutletByCategoryQueryParam queryString,
          required GetOutletByCategoryBodyParam body}) =
      _$_GetOutletByCategoryParam;

  factory _GetOutletByCategoryParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByCategoryParam.fromJson;

  @override
  GetOutletByCategoryQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetOutletByCategoryBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletByCategoryParamCopyWith<_GetOutletByCategoryParam> get copyWith =>
      throw _privateConstructorUsedError;
}

GetOutletByCategoryBodyParam _$GetOutletByCategoryBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByCategoryBodyParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByCategoryBodyParamTearOff {
  const _$GetOutletByCategoryBodyParamTearOff();

  _GetOutletByCategoryBodyParam call() {
    return const _GetOutletByCategoryBodyParam();
  }

  GetOutletByCategoryBodyParam fromJson(Map<String, Object> json) {
    return GetOutletByCategoryBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByCategoryBodyParam = _$GetOutletByCategoryBodyParamTearOff();

/// @nodoc
mixin _$GetOutletByCategoryBodyParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByCategoryBodyParamCopyWith<$Res> {
  factory $GetOutletByCategoryBodyParamCopyWith(
          GetOutletByCategoryBodyParam value,
          $Res Function(GetOutletByCategoryBodyParam) then) =
      _$GetOutletByCategoryBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOutletByCategoryBodyParamCopyWithImpl<$Res>
    implements $GetOutletByCategoryBodyParamCopyWith<$Res> {
  _$GetOutletByCategoryBodyParamCopyWithImpl(this._value, this._then);

  final GetOutletByCategoryBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByCategoryBodyParam) _then;
}

/// @nodoc
abstract class _$GetOutletByCategoryBodyParamCopyWith<$Res> {
  factory _$GetOutletByCategoryBodyParamCopyWith(
          _GetOutletByCategoryBodyParam value,
          $Res Function(_GetOutletByCategoryBodyParam) then) =
      __$GetOutletByCategoryBodyParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetOutletByCategoryBodyParamCopyWithImpl<$Res>
    extends _$GetOutletByCategoryBodyParamCopyWithImpl<$Res>
    implements _$GetOutletByCategoryBodyParamCopyWith<$Res> {
  __$GetOutletByCategoryBodyParamCopyWithImpl(
      _GetOutletByCategoryBodyParam _value,
      $Res Function(_GetOutletByCategoryBodyParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByCategoryBodyParam));

  @override
  _GetOutletByCategoryBodyParam get _value =>
      super._value as _GetOutletByCategoryBodyParam;
}

/// @nodoc
@JsonSerializable()
class _$_GetOutletByCategoryBodyParam implements _GetOutletByCategoryBodyParam {
  const _$_GetOutletByCategoryBodyParam();

  factory _$_GetOutletByCategoryBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetOutletByCategoryBodyParamFromJson(json);

  @override
  String toString() {
    return 'GetOutletByCategoryBodyParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetOutletByCategoryBodyParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletByCategoryBodyParamToJson(this);
  }
}

abstract class _GetOutletByCategoryBodyParam
    implements GetOutletByCategoryBodyParam {
  const factory _GetOutletByCategoryBodyParam() =
      _$_GetOutletByCategoryBodyParam;

  factory _GetOutletByCategoryBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByCategoryBodyParam.fromJson;
}

GetOutletByCategoryQueryParam _$GetOutletByCategoryQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetOutletByCategoryQueryParam.fromJson(json);
}

/// @nodoc
class _$GetOutletByCategoryQueryParamTearOff {
  const _$GetOutletByCategoryQueryParamTearOff();

  _GetOutletByCategoryQueryParam call(
      {required String location,
      required int page,
      required String category,
      required String filter}) {
    return _GetOutletByCategoryQueryParam(
      location: location,
      page: page,
      category: category,
      filter: filter,
    );
  }

  GetOutletByCategoryQueryParam fromJson(Map<String, Object> json) {
    return GetOutletByCategoryQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetOutletByCategoryQueryParam = _$GetOutletByCategoryQueryParamTearOff();

/// @nodoc
mixin _$GetOutletByCategoryQueryParam {
  String get location => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get filter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOutletByCategoryQueryParamCopyWith<GetOutletByCategoryQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOutletByCategoryQueryParamCopyWith<$Res> {
  factory $GetOutletByCategoryQueryParamCopyWith(
          GetOutletByCategoryQueryParam value,
          $Res Function(GetOutletByCategoryQueryParam) then) =
      _$GetOutletByCategoryQueryParamCopyWithImpl<$Res>;
  $Res call({String location, int page, String category, String filter});
}

/// @nodoc
class _$GetOutletByCategoryQueryParamCopyWithImpl<$Res>
    implements $GetOutletByCategoryQueryParamCopyWith<$Res> {
  _$GetOutletByCategoryQueryParamCopyWithImpl(this._value, this._then);

  final GetOutletByCategoryQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetOutletByCategoryQueryParam) _then;

  @override
  $Res call({
    Object? location = freezed,
    Object? page = freezed,
    Object? category = freezed,
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
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetOutletByCategoryQueryParamCopyWith<$Res>
    implements $GetOutletByCategoryQueryParamCopyWith<$Res> {
  factory _$GetOutletByCategoryQueryParamCopyWith(
          _GetOutletByCategoryQueryParam value,
          $Res Function(_GetOutletByCategoryQueryParam) then) =
      __$GetOutletByCategoryQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String location, int page, String category, String filter});
}

/// @nodoc
class __$GetOutletByCategoryQueryParamCopyWithImpl<$Res>
    extends _$GetOutletByCategoryQueryParamCopyWithImpl<$Res>
    implements _$GetOutletByCategoryQueryParamCopyWith<$Res> {
  __$GetOutletByCategoryQueryParamCopyWithImpl(
      _GetOutletByCategoryQueryParam _value,
      $Res Function(_GetOutletByCategoryQueryParam) _then)
      : super(_value, (v) => _then(v as _GetOutletByCategoryQueryParam));

  @override
  _GetOutletByCategoryQueryParam get _value =>
      super._value as _GetOutletByCategoryQueryParam;

  @override
  $Res call({
    Object? location = freezed,
    Object? page = freezed,
    Object? category = freezed,
    Object? filter = freezed,
  }) {
    return _then(_GetOutletByCategoryQueryParam(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
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
class _$_GetOutletByCategoryQueryParam
    implements _GetOutletByCategoryQueryParam {
  const _$_GetOutletByCategoryQueryParam(
      {required this.location,
      required this.page,
      required this.category,
      required this.filter});

  factory _$_GetOutletByCategoryQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_GetOutletByCategoryQueryParamFromJson(json);

  @override
  final String location;
  @override
  final int page;
  @override
  final String category;
  @override
  final String filter;

  @override
  String toString() {
    return 'GetOutletByCategoryQueryParam(location: $location, page: $page, category: $category, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetOutletByCategoryQueryParam &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$GetOutletByCategoryQueryParamCopyWith<_GetOutletByCategoryQueryParam>
      get copyWith => __$GetOutletByCategoryQueryParamCopyWithImpl<
          _GetOutletByCategoryQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetOutletByCategoryQueryParamToJson(this);
  }
}

abstract class _GetOutletByCategoryQueryParam
    implements GetOutletByCategoryQueryParam {
  const factory _GetOutletByCategoryQueryParam(
      {required String location,
      required int page,
      required String category,
      required String filter}) = _$_GetOutletByCategoryQueryParam;

  factory _GetOutletByCategoryQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetOutletByCategoryQueryParam.fromJson;

  @override
  String get location => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetOutletByCategoryQueryParamCopyWith<_GetOutletByCategoryQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
