// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_cart_session_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateCartSessionParam _$UpdateCartSessionParamFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartSessionParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionParamTearOff {
  const _$UpdateCartSessionParamTearOff();

  _UpdateCartSessionParam call(
      {required UpdateCartSessionQueryParam queryString,
      required UpdateCartSessionBodyParam body}) {
    return _UpdateCartSessionParam(
      queryString: queryString,
      body: body,
    );
  }

  UpdateCartSessionParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionParam = _$UpdateCartSessionParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionParam {
  UpdateCartSessionQueryParam get queryString =>
      throw _privateConstructorUsedError;
  UpdateCartSessionBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionParamCopyWith<UpdateCartSessionParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionParamCopyWith<$Res> {
  factory $UpdateCartSessionParamCopyWith(UpdateCartSessionParam value,
          $Res Function(UpdateCartSessionParam) then) =
      _$UpdateCartSessionParamCopyWithImpl<$Res>;
  $Res call(
      {UpdateCartSessionQueryParam queryString,
      UpdateCartSessionBodyParam body});

  $UpdateCartSessionQueryParamCopyWith<$Res> get queryString;
  $UpdateCartSessionBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$UpdateCartSessionParamCopyWithImpl<$Res>
    implements $UpdateCartSessionParamCopyWith<$Res> {
  _$UpdateCartSessionParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionBodyParam,
    ));
  }

  @override
  $UpdateCartSessionQueryParamCopyWith<$Res> get queryString {
    return $UpdateCartSessionQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $UpdateCartSessionBodyParamCopyWith<$Res> get body {
    return $UpdateCartSessionBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateCartSessionParamCopyWith<$Res>
    implements $UpdateCartSessionParamCopyWith<$Res> {
  factory _$UpdateCartSessionParamCopyWith(_UpdateCartSessionParam value,
          $Res Function(_UpdateCartSessionParam) then) =
      __$UpdateCartSessionParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {UpdateCartSessionQueryParam queryString,
      UpdateCartSessionBodyParam body});

  @override
  $UpdateCartSessionQueryParamCopyWith<$Res> get queryString;
  @override
  $UpdateCartSessionBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$UpdateCartSessionParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionParamCopyWith<$Res> {
  __$UpdateCartSessionParamCopyWithImpl(_UpdateCartSessionParam _value,
      $Res Function(_UpdateCartSessionParam) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionParam));

  @override
  _UpdateCartSessionParam get _value => super._value as _UpdateCartSessionParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_UpdateCartSessionParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_UpdateCartSessionParam implements _UpdateCartSessionParam {
  const _$_UpdateCartSessionParam(
      {required this.queryString, required this.body});

  factory _$_UpdateCartSessionParam.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateCartSessionParamFromJson(json);

  @override
  final UpdateCartSessionQueryParam queryString;
  @override
  final UpdateCartSessionBodyParam body;

  @override
  String toString() {
    return 'UpdateCartSessionParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionParam &&
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
  _$UpdateCartSessionParamCopyWith<_UpdateCartSessionParam> get copyWith =>
      __$UpdateCartSessionParamCopyWithImpl<_UpdateCartSessionParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartSessionParamToJson(this);
  }
}

abstract class _UpdateCartSessionParam implements UpdateCartSessionParam {
  const factory _UpdateCartSessionParam(
      {required UpdateCartSessionQueryParam queryString,
      required UpdateCartSessionBodyParam body}) = _$_UpdateCartSessionParam;

  factory _UpdateCartSessionParam.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartSessionParam.fromJson;

  @override
  UpdateCartSessionQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  UpdateCartSessionBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionParamCopyWith<_UpdateCartSessionParam> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateCartSessionBodyParam _$UpdateCartSessionBodyParamFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartSessionBodyParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionBodyParamTearOff {
  const _$UpdateCartSessionBodyParamTearOff();

  _UpdateCartSessionBodyParam call(
      {required String? paymentType,
      required String? customerNote,
      required List<CreateUpdateCartSessionItemParam>? items}) {
    return _UpdateCartSessionBodyParam(
      paymentType: paymentType,
      customerNote: customerNote,
      items: items,
    );
  }

  UpdateCartSessionBodyParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionBodyParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionBodyParam = _$UpdateCartSessionBodyParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionBodyParam {
  String? get paymentType => throw _privateConstructorUsedError;
  String? get customerNote => throw _privateConstructorUsedError;
  List<CreateUpdateCartSessionItemParam>? get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionBodyParamCopyWith<UpdateCartSessionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionBodyParamCopyWith<$Res> {
  factory $UpdateCartSessionBodyParamCopyWith(UpdateCartSessionBodyParam value,
          $Res Function(UpdateCartSessionBodyParam) then) =
      _$UpdateCartSessionBodyParamCopyWithImpl<$Res>;
  $Res call(
      {String? paymentType,
      String? customerNote,
      List<CreateUpdateCartSessionItemParam>? items});
}

/// @nodoc
class _$UpdateCartSessionBodyParamCopyWithImpl<$Res>
    implements $UpdateCartSessionBodyParamCopyWith<$Res> {
  _$UpdateCartSessionBodyParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionBodyParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionBodyParam) _then;

  @override
  $Res call({
    Object? paymentType = freezed,
    Object? customerNote = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNote: customerNote == freezed
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateUpdateCartSessionItemParam>?,
    ));
  }
}

/// @nodoc
abstract class _$UpdateCartSessionBodyParamCopyWith<$Res>
    implements $UpdateCartSessionBodyParamCopyWith<$Res> {
  factory _$UpdateCartSessionBodyParamCopyWith(
          _UpdateCartSessionBodyParam value,
          $Res Function(_UpdateCartSessionBodyParam) then) =
      __$UpdateCartSessionBodyParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? paymentType,
      String? customerNote,
      List<CreateUpdateCartSessionItemParam>? items});
}

/// @nodoc
class __$UpdateCartSessionBodyParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionBodyParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionBodyParamCopyWith<$Res> {
  __$UpdateCartSessionBodyParamCopyWithImpl(_UpdateCartSessionBodyParam _value,
      $Res Function(_UpdateCartSessionBodyParam) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionBodyParam));

  @override
  _UpdateCartSessionBodyParam get _value =>
      super._value as _UpdateCartSessionBodyParam;

  @override
  $Res call({
    Object? paymentType = freezed,
    Object? customerNote = freezed,
    Object? items = freezed,
  }) {
    return _then(_UpdateCartSessionBodyParam(
      paymentType: paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNote: customerNote == freezed
          ? _value.customerNote
          : customerNote // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateUpdateCartSessionItemParam>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCartSessionBodyParam implements _UpdateCartSessionBodyParam {
  const _$_UpdateCartSessionBodyParam(
      {required this.paymentType,
      required this.customerNote,
      required this.items});

  factory _$_UpdateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateCartSessionBodyParamFromJson(json);

  @override
  final String? paymentType;
  @override
  final String? customerNote;
  @override
  final List<CreateUpdateCartSessionItemParam>? items;

  @override
  String toString() {
    return 'UpdateCartSessionBodyParam(paymentType: $paymentType, customerNote: $customerNote, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionBodyParam &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.customerNote, customerNote) ||
                const DeepCollectionEquality()
                    .equals(other.customerNote, customerNote)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(customerNote) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartSessionBodyParamCopyWith<_UpdateCartSessionBodyParam>
      get copyWith => __$UpdateCartSessionBodyParamCopyWithImpl<
          _UpdateCartSessionBodyParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartSessionBodyParamToJson(this);
  }
}

abstract class _UpdateCartSessionBodyParam
    implements UpdateCartSessionBodyParam {
  const factory _UpdateCartSessionBodyParam(
          {required String? paymentType,
          required String? customerNote,
          required List<CreateUpdateCartSessionItemParam>? items}) =
      _$_UpdateCartSessionBodyParam;

  factory _UpdateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartSessionBodyParam.fromJson;

  @override
  String? get paymentType => throw _privateConstructorUsedError;
  @override
  String? get customerNote => throw _privateConstructorUsedError;
  @override
  List<CreateUpdateCartSessionItemParam>? get items =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionBodyParamCopyWith<_UpdateCartSessionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateCartSessionQueryParam _$UpdateCartSessionQueryParamFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartSessionQueryParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionQueryParamTearOff {
  const _$UpdateCartSessionQueryParamTearOff();

  _UpdateCartSessionQueryParam call({required String sessionId}) {
    return _UpdateCartSessionQueryParam(
      sessionId: sessionId,
    );
  }

  UpdateCartSessionQueryParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionQueryParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionQueryParam = _$UpdateCartSessionQueryParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionQueryParam {
  String get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionQueryParamCopyWith<UpdateCartSessionQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionQueryParamCopyWith<$Res> {
  factory $UpdateCartSessionQueryParamCopyWith(
          UpdateCartSessionQueryParam value,
          $Res Function(UpdateCartSessionQueryParam) then) =
      _$UpdateCartSessionQueryParamCopyWithImpl<$Res>;
  $Res call({String sessionId});
}

/// @nodoc
class _$UpdateCartSessionQueryParamCopyWithImpl<$Res>
    implements $UpdateCartSessionQueryParamCopyWith<$Res> {
  _$UpdateCartSessionQueryParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionQueryParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionQueryParam) _then;

  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateCartSessionQueryParamCopyWith<$Res>
    implements $UpdateCartSessionQueryParamCopyWith<$Res> {
  factory _$UpdateCartSessionQueryParamCopyWith(
          _UpdateCartSessionQueryParam value,
          $Res Function(_UpdateCartSessionQueryParam) then) =
      __$UpdateCartSessionQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String sessionId});
}

/// @nodoc
class __$UpdateCartSessionQueryParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionQueryParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionQueryParamCopyWith<$Res> {
  __$UpdateCartSessionQueryParamCopyWithImpl(
      _UpdateCartSessionQueryParam _value,
      $Res Function(_UpdateCartSessionQueryParam) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionQueryParam));

  @override
  _UpdateCartSessionQueryParam get _value =>
      super._value as _UpdateCartSessionQueryParam;

  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_UpdateCartSessionQueryParam(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCartSessionQueryParam implements _UpdateCartSessionQueryParam {
  const _$_UpdateCartSessionQueryParam({required this.sessionId});

  factory _$_UpdateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateCartSessionQueryParamFromJson(json);

  @override
  final String sessionId;

  @override
  String toString() {
    return 'UpdateCartSessionQueryParam(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionQueryParam &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sessionId);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartSessionQueryParamCopyWith<_UpdateCartSessionQueryParam>
      get copyWith => __$UpdateCartSessionQueryParamCopyWithImpl<
          _UpdateCartSessionQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateCartSessionQueryParamToJson(this);
  }
}

abstract class _UpdateCartSessionQueryParam
    implements UpdateCartSessionQueryParam {
  const factory _UpdateCartSessionQueryParam({required String sessionId}) =
      _$_UpdateCartSessionQueryParam;

  factory _UpdateCartSessionQueryParam.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartSessionQueryParam.fromJson;

  @override
  String get sessionId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionQueryParamCopyWith<_UpdateCartSessionQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
