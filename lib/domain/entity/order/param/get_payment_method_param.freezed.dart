// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_payment_method_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPaymentMethodParam _$GetPaymentMethodParamFromJson(
    Map<String, dynamic> json) {
  return _GetPaymentMethodParam.fromJson(json);
}

/// @nodoc
class _$GetPaymentMethodParamTearOff {
  const _$GetPaymentMethodParamTearOff();

  _GetPaymentMethodParam call(
      {required GetPaymentMethodQueryParam queryString,
      required GetPaymentMethodBodyParam body}) {
    return _GetPaymentMethodParam(
      queryString: queryString,
      body: body,
    );
  }

  GetPaymentMethodParam fromJson(Map<String, Object> json) {
    return GetPaymentMethodParam.fromJson(json);
  }
}

/// @nodoc
const $GetPaymentMethodParam = _$GetPaymentMethodParamTearOff();

/// @nodoc
mixin _$GetPaymentMethodParam {
  GetPaymentMethodQueryParam get queryString =>
      throw _privateConstructorUsedError;
  GetPaymentMethodBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPaymentMethodParamCopyWith<GetPaymentMethodParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPaymentMethodParamCopyWith<$Res> {
  factory $GetPaymentMethodParamCopyWith(GetPaymentMethodParam value,
          $Res Function(GetPaymentMethodParam) then) =
      _$GetPaymentMethodParamCopyWithImpl<$Res>;
  $Res call(
      {GetPaymentMethodQueryParam queryString, GetPaymentMethodBodyParam body});

  $GetPaymentMethodQueryParamCopyWith<$Res> get queryString;
  $GetPaymentMethodBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$GetPaymentMethodParamCopyWithImpl<$Res>
    implements $GetPaymentMethodParamCopyWith<$Res> {
  _$GetPaymentMethodParamCopyWithImpl(this._value, this._then);

  final GetPaymentMethodParam _value;
  // ignore: unused_field
  final $Res Function(GetPaymentMethodParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetPaymentMethodQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetPaymentMethodBodyParam,
    ));
  }

  @override
  $GetPaymentMethodQueryParamCopyWith<$Res> get queryString {
    return $GetPaymentMethodQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $GetPaymentMethodBodyParamCopyWith<$Res> get body {
    return $GetPaymentMethodBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$GetPaymentMethodParamCopyWith<$Res>
    implements $GetPaymentMethodParamCopyWith<$Res> {
  factory _$GetPaymentMethodParamCopyWith(_GetPaymentMethodParam value,
          $Res Function(_GetPaymentMethodParam) then) =
      __$GetPaymentMethodParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {GetPaymentMethodQueryParam queryString, GetPaymentMethodBodyParam body});

  @override
  $GetPaymentMethodQueryParamCopyWith<$Res> get queryString;
  @override
  $GetPaymentMethodBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$GetPaymentMethodParamCopyWithImpl<$Res>
    extends _$GetPaymentMethodParamCopyWithImpl<$Res>
    implements _$GetPaymentMethodParamCopyWith<$Res> {
  __$GetPaymentMethodParamCopyWithImpl(_GetPaymentMethodParam _value,
      $Res Function(_GetPaymentMethodParam) _then)
      : super(_value, (v) => _then(v as _GetPaymentMethodParam));

  @override
  _GetPaymentMethodParam get _value => super._value as _GetPaymentMethodParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_GetPaymentMethodParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as GetPaymentMethodQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetPaymentMethodBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.pascal)
class _$_GetPaymentMethodParam implements _GetPaymentMethodParam {
  const _$_GetPaymentMethodParam(
      {required this.queryString, required this.body});

  factory _$_GetPaymentMethodParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPaymentMethodParamFromJson(json);

  @override
  final GetPaymentMethodQueryParam queryString;
  @override
  final GetPaymentMethodBodyParam body;

  @override
  String toString() {
    return 'GetPaymentMethodParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPaymentMethodParam &&
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
  _$GetPaymentMethodParamCopyWith<_GetPaymentMethodParam> get copyWith =>
      __$GetPaymentMethodParamCopyWithImpl<_GetPaymentMethodParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPaymentMethodParamToJson(this);
  }
}

abstract class _GetPaymentMethodParam implements GetPaymentMethodParam {
  const factory _GetPaymentMethodParam(
      {required GetPaymentMethodQueryParam queryString,
      required GetPaymentMethodBodyParam body}) = _$_GetPaymentMethodParam;

  factory _GetPaymentMethodParam.fromJson(Map<String, dynamic> json) =
      _$_GetPaymentMethodParam.fromJson;

  @override
  GetPaymentMethodQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  GetPaymentMethodBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPaymentMethodParamCopyWith<_GetPaymentMethodParam> get copyWith =>
      throw _privateConstructorUsedError;
}

GetPaymentMethodBodyParam _$GetPaymentMethodBodyParamFromJson(
    Map<String, dynamic> json) {
  return _GetPaymentMethodBodyParam.fromJson(json);
}

/// @nodoc
class _$GetPaymentMethodBodyParamTearOff {
  const _$GetPaymentMethodBodyParamTearOff();

  _GetPaymentMethodBodyParam call(
      {required String customerPhone, required String finalAmount}) {
    return _GetPaymentMethodBodyParam(
      customerPhone: customerPhone,
      finalAmount: finalAmount,
    );
  }

  GetPaymentMethodBodyParam fromJson(Map<String, Object> json) {
    return GetPaymentMethodBodyParam.fromJson(json);
  }
}

/// @nodoc
const $GetPaymentMethodBodyParam = _$GetPaymentMethodBodyParamTearOff();

/// @nodoc
mixin _$GetPaymentMethodBodyParam {
  String get customerPhone => throw _privateConstructorUsedError;
  String get finalAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPaymentMethodBodyParamCopyWith<GetPaymentMethodBodyParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPaymentMethodBodyParamCopyWith<$Res> {
  factory $GetPaymentMethodBodyParamCopyWith(GetPaymentMethodBodyParam value,
          $Res Function(GetPaymentMethodBodyParam) then) =
      _$GetPaymentMethodBodyParamCopyWithImpl<$Res>;
  $Res call({String customerPhone, String finalAmount});
}

/// @nodoc
class _$GetPaymentMethodBodyParamCopyWithImpl<$Res>
    implements $GetPaymentMethodBodyParamCopyWith<$Res> {
  _$GetPaymentMethodBodyParamCopyWithImpl(this._value, this._then);

  final GetPaymentMethodBodyParam _value;
  // ignore: unused_field
  final $Res Function(GetPaymentMethodBodyParam) _then;

  @override
  $Res call({
    Object? customerPhone = freezed,
    Object? finalAmount = freezed,
  }) {
    return _then(_value.copyWith(
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetPaymentMethodBodyParamCopyWith<$Res>
    implements $GetPaymentMethodBodyParamCopyWith<$Res> {
  factory _$GetPaymentMethodBodyParamCopyWith(_GetPaymentMethodBodyParam value,
          $Res Function(_GetPaymentMethodBodyParam) then) =
      __$GetPaymentMethodBodyParamCopyWithImpl<$Res>;
  @override
  $Res call({String customerPhone, String finalAmount});
}

/// @nodoc
class __$GetPaymentMethodBodyParamCopyWithImpl<$Res>
    extends _$GetPaymentMethodBodyParamCopyWithImpl<$Res>
    implements _$GetPaymentMethodBodyParamCopyWith<$Res> {
  __$GetPaymentMethodBodyParamCopyWithImpl(_GetPaymentMethodBodyParam _value,
      $Res Function(_GetPaymentMethodBodyParam) _then)
      : super(_value, (v) => _then(v as _GetPaymentMethodBodyParam));

  @override
  _GetPaymentMethodBodyParam get _value =>
      super._value as _GetPaymentMethodBodyParam;

  @override
  $Res call({
    Object? customerPhone = freezed,
    Object? finalAmount = freezed,
  }) {
    return _then(_GetPaymentMethodBodyParam(
      customerPhone: customerPhone == freezed
          ? _value.customerPhone
          : customerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      finalAmount: finalAmount == freezed
          ? _value.finalAmount
          : finalAmount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPaymentMethodBodyParam implements _GetPaymentMethodBodyParam {
  const _$_GetPaymentMethodBodyParam(
      {required this.customerPhone, required this.finalAmount});

  factory _$_GetPaymentMethodBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPaymentMethodBodyParamFromJson(json);

  @override
  final String customerPhone;
  @override
  final String finalAmount;

  @override
  String toString() {
    return 'GetPaymentMethodBodyParam(customerPhone: $customerPhone, finalAmount: $finalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPaymentMethodBodyParam &&
            (identical(other.customerPhone, customerPhone) ||
                const DeepCollectionEquality()
                    .equals(other.customerPhone, customerPhone)) &&
            (identical(other.finalAmount, finalAmount) ||
                const DeepCollectionEquality()
                    .equals(other.finalAmount, finalAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerPhone) ^
      const DeepCollectionEquality().hash(finalAmount);

  @JsonKey(ignore: true)
  @override
  _$GetPaymentMethodBodyParamCopyWith<_GetPaymentMethodBodyParam>
      get copyWith =>
          __$GetPaymentMethodBodyParamCopyWithImpl<_GetPaymentMethodBodyParam>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPaymentMethodBodyParamToJson(this);
  }
}

abstract class _GetPaymentMethodBodyParam implements GetPaymentMethodBodyParam {
  const factory _GetPaymentMethodBodyParam(
      {required String customerPhone,
      required String finalAmount}) = _$_GetPaymentMethodBodyParam;

  factory _GetPaymentMethodBodyParam.fromJson(Map<String, dynamic> json) =
      _$_GetPaymentMethodBodyParam.fromJson;

  @override
  String get customerPhone => throw _privateConstructorUsedError;
  @override
  String get finalAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPaymentMethodBodyParamCopyWith<_GetPaymentMethodBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

GetPaymentMethodQueryParam _$GetPaymentMethodQueryParamFromJson(
    Map<String, dynamic> json) {
  return _GetPaymentMethodQueryParam.fromJson(json);
}

/// @nodoc
class _$GetPaymentMethodQueryParamTearOff {
  const _$GetPaymentMethodQueryParamTearOff();

  _GetPaymentMethodQueryParam call({required String bankCode}) {
    return _GetPaymentMethodQueryParam(
      bankCode: bankCode,
    );
  }

  GetPaymentMethodQueryParam fromJson(Map<String, Object> json) {
    return GetPaymentMethodQueryParam.fromJson(json);
  }
}

/// @nodoc
const $GetPaymentMethodQueryParam = _$GetPaymentMethodQueryParamTearOff();

/// @nodoc
mixin _$GetPaymentMethodQueryParam {
  String get bankCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPaymentMethodQueryParamCopyWith<GetPaymentMethodQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPaymentMethodQueryParamCopyWith<$Res> {
  factory $GetPaymentMethodQueryParamCopyWith(GetPaymentMethodQueryParam value,
          $Res Function(GetPaymentMethodQueryParam) then) =
      _$GetPaymentMethodQueryParamCopyWithImpl<$Res>;
  $Res call({String bankCode});
}

/// @nodoc
class _$GetPaymentMethodQueryParamCopyWithImpl<$Res>
    implements $GetPaymentMethodQueryParamCopyWith<$Res> {
  _$GetPaymentMethodQueryParamCopyWithImpl(this._value, this._then);

  final GetPaymentMethodQueryParam _value;
  // ignore: unused_field
  final $Res Function(GetPaymentMethodQueryParam) _then;

  @override
  $Res call({
    Object? bankCode = freezed,
  }) {
    return _then(_value.copyWith(
      bankCode: bankCode == freezed
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GetPaymentMethodQueryParamCopyWith<$Res>
    implements $GetPaymentMethodQueryParamCopyWith<$Res> {
  factory _$GetPaymentMethodQueryParamCopyWith(
          _GetPaymentMethodQueryParam value,
          $Res Function(_GetPaymentMethodQueryParam) then) =
      __$GetPaymentMethodQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String bankCode});
}

/// @nodoc
class __$GetPaymentMethodQueryParamCopyWithImpl<$Res>
    extends _$GetPaymentMethodQueryParamCopyWithImpl<$Res>
    implements _$GetPaymentMethodQueryParamCopyWith<$Res> {
  __$GetPaymentMethodQueryParamCopyWithImpl(_GetPaymentMethodQueryParam _value,
      $Res Function(_GetPaymentMethodQueryParam) _then)
      : super(_value, (v) => _then(v as _GetPaymentMethodQueryParam));

  @override
  _GetPaymentMethodQueryParam get _value =>
      super._value as _GetPaymentMethodQueryParam;

  @override
  $Res call({
    Object? bankCode = freezed,
  }) {
    return _then(_GetPaymentMethodQueryParam(
      bankCode: bankCode == freezed
          ? _value.bankCode
          : bankCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPaymentMethodQueryParam implements _GetPaymentMethodQueryParam {
  const _$_GetPaymentMethodQueryParam({required this.bankCode});

  factory _$_GetPaymentMethodQueryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_GetPaymentMethodQueryParamFromJson(json);

  @override
  final String bankCode;

  @override
  String toString() {
    return 'GetPaymentMethodQueryParam(bankCode: $bankCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPaymentMethodQueryParam &&
            (identical(other.bankCode, bankCode) ||
                const DeepCollectionEquality()
                    .equals(other.bankCode, bankCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bankCode);

  @JsonKey(ignore: true)
  @override
  _$GetPaymentMethodQueryParamCopyWith<_GetPaymentMethodQueryParam>
      get copyWith => __$GetPaymentMethodQueryParamCopyWithImpl<
          _GetPaymentMethodQueryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GetPaymentMethodQueryParamToJson(this);
  }
}

abstract class _GetPaymentMethodQueryParam
    implements GetPaymentMethodQueryParam {
  const factory _GetPaymentMethodQueryParam({required String bankCode}) =
      _$_GetPaymentMethodQueryParam;

  factory _GetPaymentMethodQueryParam.fromJson(Map<String, dynamic> json) =
      _$_GetPaymentMethodQueryParam.fromJson;

  @override
  String get bankCode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GetPaymentMethodQueryParamCopyWith<_GetPaymentMethodQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
