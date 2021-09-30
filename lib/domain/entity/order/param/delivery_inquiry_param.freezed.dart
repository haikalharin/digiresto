// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delivery_inquiry_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryInquiryParam _$DeliveryInquiryParamFromJson(Map<String, dynamic> json) {
  return _DeliveryInquiryParam.fromJson(json);
}

/// @nodoc
class _$DeliveryInquiryParamTearOff {
  const _$DeliveryInquiryParamTearOff();

  _DeliveryInquiryParam call(
      {required DeliveryInquiryQueryParam queryString,
      required DeliveryInquiryBodyParam body}) {
    return _DeliveryInquiryParam(
      queryString: queryString,
      body: body,
    );
  }

  DeliveryInquiryParam fromJson(Map<String, Object> json) {
    return DeliveryInquiryParam.fromJson(json);
  }
}

/// @nodoc
const $DeliveryInquiryParam = _$DeliveryInquiryParamTearOff();

/// @nodoc
mixin _$DeliveryInquiryParam {
  DeliveryInquiryQueryParam get queryString =>
      throw _privateConstructorUsedError;
  DeliveryInquiryBodyParam get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInquiryParamCopyWith<DeliveryInquiryParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInquiryParamCopyWith<$Res> {
  factory $DeliveryInquiryParamCopyWith(DeliveryInquiryParam value,
          $Res Function(DeliveryInquiryParam) then) =
      _$DeliveryInquiryParamCopyWithImpl<$Res>;
  $Res call(
      {DeliveryInquiryQueryParam queryString, DeliveryInquiryBodyParam body});

  $DeliveryInquiryQueryParamCopyWith<$Res> get queryString;
  $DeliveryInquiryBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class _$DeliveryInquiryParamCopyWithImpl<$Res>
    implements $DeliveryInquiryParamCopyWith<$Res> {
  _$DeliveryInquiryParamCopyWithImpl(this._value, this._then);

  final DeliveryInquiryParam _value;
  // ignore: unused_field
  final $Res Function(DeliveryInquiryParam) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as DeliveryInquiryQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as DeliveryInquiryBodyParam,
    ));
  }

  @override
  $DeliveryInquiryQueryParamCopyWith<$Res> get queryString {
    return $DeliveryInquiryQueryParamCopyWith<$Res>(_value.queryString,
        (value) {
      return _then(_value.copyWith(queryString: value));
    });
  }

  @override
  $DeliveryInquiryBodyParamCopyWith<$Res> get body {
    return $DeliveryInquiryBodyParamCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryInquiryParamCopyWith<$Res>
    implements $DeliveryInquiryParamCopyWith<$Res> {
  factory _$DeliveryInquiryParamCopyWith(_DeliveryInquiryParam value,
          $Res Function(_DeliveryInquiryParam) then) =
      __$DeliveryInquiryParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {DeliveryInquiryQueryParam queryString, DeliveryInquiryBodyParam body});

  @override
  $DeliveryInquiryQueryParamCopyWith<$Res> get queryString;
  @override
  $DeliveryInquiryBodyParamCopyWith<$Res> get body;
}

/// @nodoc
class __$DeliveryInquiryParamCopyWithImpl<$Res>
    extends _$DeliveryInquiryParamCopyWithImpl<$Res>
    implements _$DeliveryInquiryParamCopyWith<$Res> {
  __$DeliveryInquiryParamCopyWithImpl(
      _DeliveryInquiryParam _value, $Res Function(_DeliveryInquiryParam) _then)
      : super(_value, (v) => _then(v as _DeliveryInquiryParam));

  @override
  _DeliveryInquiryParam get _value => super._value as _DeliveryInquiryParam;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? body = freezed,
  }) {
    return _then(_DeliveryInquiryParam(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as DeliveryInquiryQueryParam,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as DeliveryInquiryBodyParam,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DeliveryInquiryParam implements _DeliveryInquiryParam {
  const _$_DeliveryInquiryParam(
      {required this.queryString, required this.body});

  factory _$_DeliveryInquiryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryInquiryParamFromJson(json);

  @override
  final DeliveryInquiryQueryParam queryString;
  @override
  final DeliveryInquiryBodyParam body;

  @override
  String toString() {
    return 'DeliveryInquiryParam(queryString: $queryString, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryInquiryParam &&
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
  _$DeliveryInquiryParamCopyWith<_DeliveryInquiryParam> get copyWith =>
      __$DeliveryInquiryParamCopyWithImpl<_DeliveryInquiryParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryInquiryParamToJson(this);
  }
}

abstract class _DeliveryInquiryParam implements DeliveryInquiryParam {
  const factory _DeliveryInquiryParam(
      {required DeliveryInquiryQueryParam queryString,
      required DeliveryInquiryBodyParam body}) = _$_DeliveryInquiryParam;

  factory _DeliveryInquiryParam.fromJson(Map<String, dynamic> json) =
      _$_DeliveryInquiryParam.fromJson;

  @override
  DeliveryInquiryQueryParam get queryString =>
      throw _privateConstructorUsedError;
  @override
  DeliveryInquiryBodyParam get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryInquiryParamCopyWith<_DeliveryInquiryParam> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryInquiryBodyParam _$DeliveryInquiryBodyParamFromJson(
    Map<String, dynamic> json) {
  return _DeliveryInquiryBodyParam.fromJson(json);
}

/// @nodoc
class _$DeliveryInquiryBodyParamTearOff {
  const _$DeliveryInquiryBodyParamTearOff();

  _DeliveryInquiryBodyParam call(
      {required DeliveryInquiryBodyCustomerParam customer,
      required int weight}) {
    return _DeliveryInquiryBodyParam(
      customer: customer,
      weight: weight,
    );
  }

  DeliveryInquiryBodyParam fromJson(Map<String, Object> json) {
    return DeliveryInquiryBodyParam.fromJson(json);
  }
}

/// @nodoc
const $DeliveryInquiryBodyParam = _$DeliveryInquiryBodyParamTearOff();

/// @nodoc
mixin _$DeliveryInquiryBodyParam {
  DeliveryInquiryBodyCustomerParam get customer =>
      throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInquiryBodyParamCopyWith<DeliveryInquiryBodyParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInquiryBodyParamCopyWith<$Res> {
  factory $DeliveryInquiryBodyParamCopyWith(DeliveryInquiryBodyParam value,
          $Res Function(DeliveryInquiryBodyParam) then) =
      _$DeliveryInquiryBodyParamCopyWithImpl<$Res>;
  $Res call({DeliveryInquiryBodyCustomerParam customer, int weight});

  $DeliveryInquiryBodyCustomerParamCopyWith<$Res> get customer;
}

/// @nodoc
class _$DeliveryInquiryBodyParamCopyWithImpl<$Res>
    implements $DeliveryInquiryBodyParamCopyWith<$Res> {
  _$DeliveryInquiryBodyParamCopyWithImpl(this._value, this._then);

  final DeliveryInquiryBodyParam _value;
  // ignore: unused_field
  final $Res Function(DeliveryInquiryBodyParam) _then;

  @override
  $Res call({
    Object? customer = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as DeliveryInquiryBodyCustomerParam,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $DeliveryInquiryBodyCustomerParamCopyWith<$Res> get customer {
    return $DeliveryInquiryBodyCustomerParamCopyWith<$Res>(_value.customer,
        (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryInquiryBodyParamCopyWith<$Res>
    implements $DeliveryInquiryBodyParamCopyWith<$Res> {
  factory _$DeliveryInquiryBodyParamCopyWith(_DeliveryInquiryBodyParam value,
          $Res Function(_DeliveryInquiryBodyParam) then) =
      __$DeliveryInquiryBodyParamCopyWithImpl<$Res>;
  @override
  $Res call({DeliveryInquiryBodyCustomerParam customer, int weight});

  @override
  $DeliveryInquiryBodyCustomerParamCopyWith<$Res> get customer;
}

/// @nodoc
class __$DeliveryInquiryBodyParamCopyWithImpl<$Res>
    extends _$DeliveryInquiryBodyParamCopyWithImpl<$Res>
    implements _$DeliveryInquiryBodyParamCopyWith<$Res> {
  __$DeliveryInquiryBodyParamCopyWithImpl(_DeliveryInquiryBodyParam _value,
      $Res Function(_DeliveryInquiryBodyParam) _then)
      : super(_value, (v) => _then(v as _DeliveryInquiryBodyParam));

  @override
  _DeliveryInquiryBodyParam get _value =>
      super._value as _DeliveryInquiryBodyParam;

  @override
  $Res call({
    Object? customer = freezed,
    Object? weight = freezed,
  }) {
    return _then(_DeliveryInquiryBodyParam(
      customer: customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as DeliveryInquiryBodyCustomerParam,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DeliveryInquiryBodyParam implements _DeliveryInquiryBodyParam {
  const _$_DeliveryInquiryBodyParam(
      {required this.customer, required this.weight});

  factory _$_DeliveryInquiryBodyParam.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryInquiryBodyParamFromJson(json);

  @override
  final DeliveryInquiryBodyCustomerParam customer;
  @override
  final int weight;

  @override
  String toString() {
    return 'DeliveryInquiryBodyParam(customer: $customer, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryInquiryBodyParam &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(weight);

  @JsonKey(ignore: true)
  @override
  _$DeliveryInquiryBodyParamCopyWith<_DeliveryInquiryBodyParam> get copyWith =>
      __$DeliveryInquiryBodyParamCopyWithImpl<_DeliveryInquiryBodyParam>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryInquiryBodyParamToJson(this);
  }
}

abstract class _DeliveryInquiryBodyParam implements DeliveryInquiryBodyParam {
  const factory _DeliveryInquiryBodyParam(
      {required DeliveryInquiryBodyCustomerParam customer,
      required int weight}) = _$_DeliveryInquiryBodyParam;

  factory _DeliveryInquiryBodyParam.fromJson(Map<String, dynamic> json) =
      _$_DeliveryInquiryBodyParam.fromJson;

  @override
  DeliveryInquiryBodyCustomerParam get customer =>
      throw _privateConstructorUsedError;
  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryInquiryBodyParamCopyWith<_DeliveryInquiryBodyParam> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryInquiryBodyCustomerParam _$DeliveryInquiryBodyCustomerParamFromJson(
    Map<String, dynamic> json) {
  return _DeliveryInquiryBodyCustomerParam.fromJson(json);
}

/// @nodoc
class _$DeliveryInquiryBodyCustomerParamTearOff {
  const _$DeliveryInquiryBodyCustomerParamTearOff();

  _DeliveryInquiryBodyCustomerParam call({required List<String> location}) {
    return _DeliveryInquiryBodyCustomerParam(
      location: location,
    );
  }

  DeliveryInquiryBodyCustomerParam fromJson(Map<String, Object> json) {
    return DeliveryInquiryBodyCustomerParam.fromJson(json);
  }
}

/// @nodoc
const $DeliveryInquiryBodyCustomerParam =
    _$DeliveryInquiryBodyCustomerParamTearOff();

/// @nodoc
mixin _$DeliveryInquiryBodyCustomerParam {
  List<String> get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInquiryBodyCustomerParamCopyWith<DeliveryInquiryBodyCustomerParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInquiryBodyCustomerParamCopyWith<$Res> {
  factory $DeliveryInquiryBodyCustomerParamCopyWith(
          DeliveryInquiryBodyCustomerParam value,
          $Res Function(DeliveryInquiryBodyCustomerParam) then) =
      _$DeliveryInquiryBodyCustomerParamCopyWithImpl<$Res>;
  $Res call({List<String> location});
}

/// @nodoc
class _$DeliveryInquiryBodyCustomerParamCopyWithImpl<$Res>
    implements $DeliveryInquiryBodyCustomerParamCopyWith<$Res> {
  _$DeliveryInquiryBodyCustomerParamCopyWithImpl(this._value, this._then);

  final DeliveryInquiryBodyCustomerParam _value;
  // ignore: unused_field
  final $Res Function(DeliveryInquiryBodyCustomerParam) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryInquiryBodyCustomerParamCopyWith<$Res>
    implements $DeliveryInquiryBodyCustomerParamCopyWith<$Res> {
  factory _$DeliveryInquiryBodyCustomerParamCopyWith(
          _DeliveryInquiryBodyCustomerParam value,
          $Res Function(_DeliveryInquiryBodyCustomerParam) then) =
      __$DeliveryInquiryBodyCustomerParamCopyWithImpl<$Res>;
  @override
  $Res call({List<String> location});
}

/// @nodoc
class __$DeliveryInquiryBodyCustomerParamCopyWithImpl<$Res>
    extends _$DeliveryInquiryBodyCustomerParamCopyWithImpl<$Res>
    implements _$DeliveryInquiryBodyCustomerParamCopyWith<$Res> {
  __$DeliveryInquiryBodyCustomerParamCopyWithImpl(
      _DeliveryInquiryBodyCustomerParam _value,
      $Res Function(_DeliveryInquiryBodyCustomerParam) _then)
      : super(_value, (v) => _then(v as _DeliveryInquiryBodyCustomerParam));

  @override
  _DeliveryInquiryBodyCustomerParam get _value =>
      super._value as _DeliveryInquiryBodyCustomerParam;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_DeliveryInquiryBodyCustomerParam(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryInquiryBodyCustomerParam
    implements _DeliveryInquiryBodyCustomerParam {
  const _$_DeliveryInquiryBodyCustomerParam({required this.location});

  factory _$_DeliveryInquiryBodyCustomerParam.fromJson(
          Map<String, dynamic> json) =>
      _$_$_DeliveryInquiryBodyCustomerParamFromJson(json);

  @override
  final List<String> location;

  @override
  String toString() {
    return 'DeliveryInquiryBodyCustomerParam(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryInquiryBodyCustomerParam &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$DeliveryInquiryBodyCustomerParamCopyWith<_DeliveryInquiryBodyCustomerParam>
      get copyWith => __$DeliveryInquiryBodyCustomerParamCopyWithImpl<
          _DeliveryInquiryBodyCustomerParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryInquiryBodyCustomerParamToJson(this);
  }
}

abstract class _DeliveryInquiryBodyCustomerParam
    implements DeliveryInquiryBodyCustomerParam {
  const factory _DeliveryInquiryBodyCustomerParam(
      {required List<String> location}) = _$_DeliveryInquiryBodyCustomerParam;

  factory _DeliveryInquiryBodyCustomerParam.fromJson(
      Map<String, dynamic> json) = _$_DeliveryInquiryBodyCustomerParam.fromJson;

  @override
  List<String> get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryInquiryBodyCustomerParamCopyWith<_DeliveryInquiryBodyCustomerParam>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveryInquiryQueryParam _$DeliveryInquiryQueryParamFromJson(
    Map<String, dynamic> json) {
  return _DeliveryInquiryQueryParam.fromJson(json);
}

/// @nodoc
class _$DeliveryInquiryQueryParamTearOff {
  const _$DeliveryInquiryQueryParamTearOff();

  _DeliveryInquiryQueryParam call({required String outletName}) {
    return _DeliveryInquiryQueryParam(
      outletName: outletName,
    );
  }

  DeliveryInquiryQueryParam fromJson(Map<String, Object> json) {
    return DeliveryInquiryQueryParam.fromJson(json);
  }
}

/// @nodoc
const $DeliveryInquiryQueryParam = _$DeliveryInquiryQueryParamTearOff();

/// @nodoc
mixin _$DeliveryInquiryQueryParam {
  String get outletName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryInquiryQueryParamCopyWith<DeliveryInquiryQueryParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryInquiryQueryParamCopyWith<$Res> {
  factory $DeliveryInquiryQueryParamCopyWith(DeliveryInquiryQueryParam value,
          $Res Function(DeliveryInquiryQueryParam) then) =
      _$DeliveryInquiryQueryParamCopyWithImpl<$Res>;
  $Res call({String outletName});
}

/// @nodoc
class _$DeliveryInquiryQueryParamCopyWithImpl<$Res>
    implements $DeliveryInquiryQueryParamCopyWith<$Res> {
  _$DeliveryInquiryQueryParamCopyWithImpl(this._value, this._then);

  final DeliveryInquiryQueryParam _value;
  // ignore: unused_field
  final $Res Function(DeliveryInquiryQueryParam) _then;

  @override
  $Res call({
    Object? outletName = freezed,
  }) {
    return _then(_value.copyWith(
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryInquiryQueryParamCopyWith<$Res>
    implements $DeliveryInquiryQueryParamCopyWith<$Res> {
  factory _$DeliveryInquiryQueryParamCopyWith(_DeliveryInquiryQueryParam value,
          $Res Function(_DeliveryInquiryQueryParam) then) =
      __$DeliveryInquiryQueryParamCopyWithImpl<$Res>;
  @override
  $Res call({String outletName});
}

/// @nodoc
class __$DeliveryInquiryQueryParamCopyWithImpl<$Res>
    extends _$DeliveryInquiryQueryParamCopyWithImpl<$Res>
    implements _$DeliveryInquiryQueryParamCopyWith<$Res> {
  __$DeliveryInquiryQueryParamCopyWithImpl(_DeliveryInquiryQueryParam _value,
      $Res Function(_DeliveryInquiryQueryParam) _then)
      : super(_value, (v) => _then(v as _DeliveryInquiryQueryParam));

  @override
  _DeliveryInquiryQueryParam get _value =>
      super._value as _DeliveryInquiryQueryParam;

  @override
  $Res call({
    Object? outletName = freezed,
  }) {
    return _then(_DeliveryInquiryQueryParam(
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryInquiryQueryParam implements _DeliveryInquiryQueryParam {
  const _$_DeliveryInquiryQueryParam({required this.outletName});

  factory _$_DeliveryInquiryQueryParam.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryInquiryQueryParamFromJson(json);

  @override
  final String outletName;

  @override
  String toString() {
    return 'DeliveryInquiryQueryParam(outletName: $outletName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryInquiryQueryParam &&
            (identical(other.outletName, outletName) ||
                const DeepCollectionEquality()
                    .equals(other.outletName, outletName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(outletName);

  @JsonKey(ignore: true)
  @override
  _$DeliveryInquiryQueryParamCopyWith<_DeliveryInquiryQueryParam>
      get copyWith =>
          __$DeliveryInquiryQueryParamCopyWithImpl<_DeliveryInquiryQueryParam>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryInquiryQueryParamToJson(this);
  }
}

abstract class _DeliveryInquiryQueryParam implements DeliveryInquiryQueryParam {
  const factory _DeliveryInquiryQueryParam({required String outletName}) =
      _$_DeliveryInquiryQueryParam;

  factory _DeliveryInquiryQueryParam.fromJson(Map<String, dynamic> json) =
      _$_DeliveryInquiryQueryParam.fromJson;

  @override
  String get outletName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryInquiryQueryParamCopyWith<_DeliveryInquiryQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}
