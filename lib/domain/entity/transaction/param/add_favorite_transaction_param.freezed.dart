// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_favorite_transaction_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddFavoriteTransactionParam _$AddFavoriteTransactionParamFromJson(
    Map<String, dynamic> json) {
  return _AddFavoriteTransactionParam.fromJson(json);
}

/// @nodoc
class _$AddFavoriteTransactionParamTearOff {
  const _$AddFavoriteTransactionParamTearOff();

  _AddFavoriteTransactionParam call(
      {required AddFavoriteTransactionQueryParam queryString,
      required AddFavoriteTransactionBodyParam body}) {
    return _AddFavoriteTransactionParam(
      queryString: queryString,
      body: body,
    );
  }

  AddFavoriteTransactionParam fromJson(Map<String, Object> json) {
    return AddFavoriteTransactionParam.fromJson(json);
  }
}

/// @nodoc
const $AddFavoriteTransactionParam = _$AddFavoriteTransactionParamTearOff();

/// @nodoc
mixin _$AddFavoriteTransactionParam {
  AddFavoriteTransactionQueryParam get queryString =>
      throw _privateConstructorUsedError;
  AddFavoriteTransactionBodyParam get body =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddFavoriteTransactionParamCopyWith<AddFavoriteTransactionParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFavoriteTransactionParamCopyWith<$Res> {
  factory $AddFavoriteTransactionParamCopyWith(
          AddFavoriteTransactionParam value,
          $Res Function(AddFavoriteTransactionParam) then) =
      _$AddFavoriteTransactionParamCopyWithImpl<$Res>;
  $Res call(
      {AddFavoriteTransactionQueryParam queryString,
      AddFavoriteTransactionBodyParam body});

  $AddFavoriteTransactionQueryParamCopyWith<$Res> get queryString;
  $AddFavoriteTransactionBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$AddFavoriteTransactionParamCopyWithImpl<$Res>
    implements $AddFavoriteTransactionParamCopyWith<$Res> {
  _$AddFavoriteTransactionParamCopyWithImpl(this._value, this._then);

  final AddFavoriteTransactionParam _value;
  // ignore: unused_field
  final $Res Function(AddFavoriteTransactionParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as AddFavoriteTransactionQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AddFavoriteTransactionBodyParam,
    ));
  }

  @override
  $AddFavoriteTransactionQueryParamCopyWith<$Res> get queryString {
    return $AddFavoriteTransactionQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $AddFavoriteTransactionBodyParamCopyWith<$Res> get body {
    return $AddFavoriteTransactionBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$AddFavoriteTransactionParamCopyWith<$Res>
    implements $AddFavoriteTransactionParamCopyWith<$Res> {
  factory _$AddFavoriteTransactionParamCopyWith(
          _AddFavoriteTransactionParam value,
          $Res Function(_AddFavoriteTransactionParam) then) =
      __$AddFavoriteTransactionParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {AddFavoriteTransactionQueryParam queryString,
      AddFavoriteTransactionBodyParam body});

  @override
  $AddFavoriteTransactionQueryParamCopyWith<$Res> get queryString;
  @override
  $AddFavoriteTransactionBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$AddFavoriteTransactionParamCopyWithImpl<$Res>
    extends _$AddFavoriteTransactionParamCopyWithImpl<$Res>
    implements _$AddFavoriteTransactionParamCopyWith<$Res> {
  __$AddFavoriteTransactionParamCopyWithImpl(
      _AddFavoriteTransactionParam _value,
      $Res Function(_AddFavoriteTransactionParam) _then)
      : super(_value, (v) => _then(v as _AddFavoriteTransactionParam));

  @override
  _AddFavoriteTransactionParam get _value =>
      super._value as _AddFavoriteTransactionParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_AddFavoriteTransactionParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as AddFavoriteTransactionQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AddFavoriteTransactionBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_AddFavoriteTransactionParam implements _AddFavoriteTransactionParam {
  const _$_AddFavoriteTransactionParam(
      {required this.queryString, required this.body});

  factory _$_AddFavoriteTransactionParam.fromJson(Map<String, dynamic> json) =>
      _$$_AddFavoriteTransactionParamFromJson(json);

  @override
  final AddFavoriteTransactionQueryParam queryString;
  @override
  final AddFavoriteTransactionBodyParam body;

  @override
  String toString() {
    return 'AddFavoriteTransactionParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFavoriteTransactionParam &&
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
  _$AddFavoriteTransactionParamCopyWith<_AddFavoriteTransactionParam>
      get copyWith => __$AddFavoriteTransactionParamCopyWithImpl<
          _AddFavoriteTransactionParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddFavoriteTransactionParamToJson(this);
  }
}

abstract class _AddFavoriteTransactionParam
    implements AddFavoriteTransactionParam {
  const factory _AddFavoriteTransactionParam(
          {required AddFavoriteTransactionQueryParam queryString,
          required AddFavoriteTransactionBodyParam body}) =
      _$_AddFavoriteTransactionParam;

  factory _AddFavoriteTransactionParam.fromJson(Map<String, dynamic> json) =
      _$_AddFavoriteTransactionParam.fromJson;

  @override
  AddFavoriteTransactionQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  AddFavoriteTransactionBodyParam get body =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddFavoriteTransactionParamCopyWith<_AddFavoriteTransactionParam>
      get copyWith => throw _privateConstructorUsedError;
}

AddFavoriteTransactionBodyParam _$AddFavoriteTransactionBodyParamFromJson(
    Map<String, dynamic> json) {
  return _AddFavoriteTransactionBodyParam.fromJson(json);
}

/// @nodoc
class _$AddFavoriteTransactionBodyParamTearOff {
  const _$AddFavoriteTransactionBodyParamTearOff();

  _AddFavoriteTransactionBodyParam call({required String receiptCode}) {
    return _AddFavoriteTransactionBodyParam(
      receiptCode: receiptCode,
    );
  }

  AddFavoriteTransactionBodyParam fromJson(Map<String, Object> json) {
    return AddFavoriteTransactionBodyParam.fromJson(json);
  }
}

/// @nodoc
const $AddFavoriteTransactionBodyParam =
    _$AddFavoriteTransactionBodyParamTearOff();

/// @nodoc
mixin _$AddFavoriteTransactionBodyParam {
  String get receiptCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddFavoriteTransactionBodyParamCopyWith<AddFavoriteTransactionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFavoriteTransactionBodyParamCopyWith<$Res> {
  factory $AddFavoriteTransactionBodyParamCopyWith(
          AddFavoriteTransactionBodyParam value,
          $Res Function(AddFavoriteTransactionBodyParam) then) =
      _$AddFavoriteTransactionBodyParamCopyWithImpl<$Res>;
  $Res call({String receiptCode});
}

/// @nodoc
class _$AddFavoriteTransactionBodyParamCopyWithImpl<$Res>
    implements $AddFavoriteTransactionBodyParamCopyWith<$Res> {
  _$AddFavoriteTransactionBodyParamCopyWithImpl(this._value, this._then);

  final AddFavoriteTransactionBodyParam _value;
  // ignore: unused_field
  final $Res Function(AddFavoriteTransactionBodyParam) _then;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_value.copyWith(
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddFavoriteTransactionBodyParamCopyWith<$Res>
    implements $AddFavoriteTransactionBodyParamCopyWith<$Res> {
  factory _$AddFavoriteTransactionBodyParamCopyWith(
          _AddFavoriteTransactionBodyParam value,
          $Res Function(_AddFavoriteTransactionBodyParam) then) =
      __$AddFavoriteTransactionBodyParamCopyWithImpl<$Res>;
  @override
  $Res call({String receiptCode});
}

/// @nodoc
class __$AddFavoriteTransactionBodyParamCopyWithImpl<$Res>
    extends _$AddFavoriteTransactionBodyParamCopyWithImpl<$Res>
    implements _$AddFavoriteTransactionBodyParamCopyWith<$Res> {
  __$AddFavoriteTransactionBodyParamCopyWithImpl(
      _AddFavoriteTransactionBodyParam _value,
      $Res Function(_AddFavoriteTransactionBodyParam) _then)
      : super(_value, (v) => _then(v as _AddFavoriteTransactionBodyParam));

  @override
  _AddFavoriteTransactionBodyParam get _value =>
      super._value as _AddFavoriteTransactionBodyParam;

  @override
  $Res call({
    Object? receiptCode = freezed,
  }) {
    return _then(_AddFavoriteTransactionBodyParam(
      receiptCode: receiptCode == freezed
          ? _value.receiptCode
          : receiptCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddFavoriteTransactionBodyParam
    implements _AddFavoriteTransactionBodyParam {
  const _$_AddFavoriteTransactionBodyParam({required this.receiptCode});

  factory _$_AddFavoriteTransactionBodyParam.fromJson(
          Map<String, dynamic> json) =>
      _$$_AddFavoriteTransactionBodyParamFromJson(json);

  @override
  final String receiptCode;

  @override
  String toString() {
    return 'AddFavoriteTransactionBodyParam(receiptCode: $receiptCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFavoriteTransactionBodyParam &&
            (identical(other.receiptCode, receiptCode) ||
                const DeepCollectionEquality()
                    .equals(other.receiptCode, receiptCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receiptCode);

  @JsonKey(ignore: true)
  @override
  _$AddFavoriteTransactionBodyParamCopyWith<_AddFavoriteTransactionBodyParam>
      get copyWith => __$AddFavoriteTransactionBodyParamCopyWithImpl<
          _AddFavoriteTransactionBodyParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddFavoriteTransactionBodyParamToJson(this);
  }
}

abstract class _AddFavoriteTransactionBodyParam
    implements AddFavoriteTransactionBodyParam {
  const factory _AddFavoriteTransactionBodyParam(
      {required String receiptCode}) = _$_AddFavoriteTransactionBodyParam;

  factory _AddFavoriteTransactionBodyParam.fromJson(Map<String, dynamic> json) =
      _$_AddFavoriteTransactionBodyParam.fromJson;

  @override
  String get receiptCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddFavoriteTransactionBodyParamCopyWith<_AddFavoriteTransactionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

AddFavoriteTransactionQueryParam _$AddFavoriteTransactionQueryParamFromJson(
    Map<String, dynamic> json) {
  return _AddFavoriteTransactionQueryParam.fromJson(json);
}

/// @nodoc
class _$AddFavoriteTransactionQueryParamTearOff {
  const _$AddFavoriteTransactionQueryParamTearOff();

  _AddFavoriteTransactionQueryParam call() {
    return const _AddFavoriteTransactionQueryParam();
  }

  AddFavoriteTransactionQueryParam fromJson(Map<String, Object> json) {
    return AddFavoriteTransactionQueryParam.fromJson(json);
  }
}

/// @nodoc
const $AddFavoriteTransactionQueryParam =
    _$AddFavoriteTransactionQueryParamTearOff();

/// @nodoc
mixin _$AddFavoriteTransactionQueryParam {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFavoriteTransactionQueryParamCopyWith<$Res> {
  factory $AddFavoriteTransactionQueryParamCopyWith(
          AddFavoriteTransactionQueryParam value,
          $Res Function(AddFavoriteTransactionQueryParam) then) =
      _$AddFavoriteTransactionQueryParamCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddFavoriteTransactionQueryParamCopyWithImpl<$Res>
    implements $AddFavoriteTransactionQueryParamCopyWith<$Res> {
  _$AddFavoriteTransactionQueryParamCopyWithImpl(this._value, this._then);

  final AddFavoriteTransactionQueryParam _value;
  // ignore: unused_field
  final $Res Function(AddFavoriteTransactionQueryParam) _then;
}

/// @nodoc
abstract class _$AddFavoriteTransactionQueryParamCopyWith<$Res> {
  factory _$AddFavoriteTransactionQueryParamCopyWith(
          _AddFavoriteTransactionQueryParam value,
          $Res Function(_AddFavoriteTransactionQueryParam) then) =
      __$AddFavoriteTransactionQueryParamCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddFavoriteTransactionQueryParamCopyWithImpl<$Res>
    extends _$AddFavoriteTransactionQueryParamCopyWithImpl<$Res>
    implements _$AddFavoriteTransactionQueryParamCopyWith<$Res> {
  __$AddFavoriteTransactionQueryParamCopyWithImpl(
      _AddFavoriteTransactionQueryParam _value,
      $Res Function(_AddFavoriteTransactionQueryParam) _then)
      : super(_value, (v) => _then(v as _AddFavoriteTransactionQueryParam));

  @override
  _AddFavoriteTransactionQueryParam get _value =>
      super._value as _AddFavoriteTransactionQueryParam;
}

/// @nodoc
@JsonSerializable()
class _$_AddFavoriteTransactionQueryParam
    implements _AddFavoriteTransactionQueryParam {
  const _$_AddFavoriteTransactionQueryParam();

  factory _$_AddFavoriteTransactionQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$$_AddFavoriteTransactionQueryParamFromJson(json);

  @override
  String toString() {
    return 'AddFavoriteTransactionQueryParam()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddFavoriteTransactionQueryParam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddFavoriteTransactionQueryParamToJson(this);
  }
}

abstract class _AddFavoriteTransactionQueryParam
    implements AddFavoriteTransactionQueryParam {
  const factory _AddFavoriteTransactionQueryParam() =
      _$_AddFavoriteTransactionQueryParam;

  factory _AddFavoriteTransactionQueryParam.fromJson(
      Map<String, dynamic> json) = _$_AddFavoriteTransactionQueryParam.fromJson;
}
