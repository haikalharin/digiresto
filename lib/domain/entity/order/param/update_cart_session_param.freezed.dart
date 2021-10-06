// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$$_UpdateCartSessionParamFromJson(json);

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
    return _$$_UpdateCartSessionParamToJson(this);
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
      required String? customerPax,
      required bool? customerSmoking,
      required UpdateCartSessionBodyDeliveryParam? delivery,
      required String? eta,
      required List<String>? promos,
      required String? salesType,
      required List<CreateUpdateCartSessionItemParam>? items}) {
    return _UpdateCartSessionBodyParam(
      paymentType: paymentType,
      customerNote: customerNote,
      customerPax: customerPax,
      customerSmoking: customerSmoking,
      delivery: delivery,
      eta: eta,
      promos: promos,
      salesType: salesType,
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
  String? get customerPax => throw _privateConstructorUsedError;
  bool? get customerSmoking => throw _privateConstructorUsedError;
  UpdateCartSessionBodyDeliveryParam? get delivery =>
      throw _privateConstructorUsedError;
  String? get eta => throw _privateConstructorUsedError;
  List<String>? get promos => throw _privateConstructorUsedError;
  String? get salesType => throw _privateConstructorUsedError;
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
      String? customerPax,
      bool? customerSmoking,
      UpdateCartSessionBodyDeliveryParam? delivery,
      String? eta,
      List<String>? promos,
      String? salesType,
      List<CreateUpdateCartSessionItemParam>? items});

  $UpdateCartSessionBodyDeliveryParamCopyWith<$Res>? get delivery;
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
    Object? customerPax = freezed,
    Object? customerSmoking = freezed,
    Object? delivery = freezed,
    Object? eta = freezed,
    Object? promos = freezed,
    Object? salesType = freezed,
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
      customerPax: customerPax == freezed
          ? _value.customerPax
          : customerPax // ignore: cast_nullable_to_non_nullable
              as String?,
      customerSmoking: customerSmoking == freezed
          ? _value.customerSmoking
          : customerSmoking // ignore: cast_nullable_to_non_nullable
              as bool?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionBodyDeliveryParam?,
      eta: eta == freezed
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String?,
      promos: promos == freezed
          ? _value.promos
          : promos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
              as String?,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CreateUpdateCartSessionItemParam>?,
    ));
  }

  @override
  $UpdateCartSessionBodyDeliveryParamCopyWith<$Res>? get delivery {
    if (_value.delivery == null) {
      return null;
    }

    return $UpdateCartSessionBodyDeliveryParamCopyWith<$Res>(_value.delivery!,
        (value) {
      return _then(_value.copyWith(delivery: value));
    });
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
      String? customerPax,
      bool? customerSmoking,
      UpdateCartSessionBodyDeliveryParam? delivery,
      String? eta,
      List<String>? promos,
      String? salesType,
      List<CreateUpdateCartSessionItemParam>? items});

  @override
  $UpdateCartSessionBodyDeliveryParamCopyWith<$Res>? get delivery;
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
    Object? customerPax = freezed,
    Object? customerSmoking = freezed,
    Object? delivery = freezed,
    Object? eta = freezed,
    Object? promos = freezed,
    Object? salesType = freezed,
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
      customerPax: customerPax == freezed
          ? _value.customerPax
          : customerPax // ignore: cast_nullable_to_non_nullable
              as String?,
      customerSmoking: customerSmoking == freezed
          ? _value.customerSmoking
          : customerSmoking // ignore: cast_nullable_to_non_nullable
              as bool?,
      delivery: delivery == freezed
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as UpdateCartSessionBodyDeliveryParam?,
      eta: eta == freezed
          ? _value.eta
          : eta // ignore: cast_nullable_to_non_nullable
              as String?,
      promos: promos == freezed
          ? _value.promos
          : promos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salesType: salesType == freezed
          ? _value.salesType
          : salesType // ignore: cast_nullable_to_non_nullable
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
      required this.customerPax,
      required this.customerSmoking,
      required this.delivery,
      required this.eta,
      required this.promos,
      required this.salesType,
      required this.items});

  factory _$_UpdateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateCartSessionBodyParamFromJson(json);

  @override
  final String? paymentType;
  @override
  final String? customerNote;
  @override
  final String? customerPax;
  @override
  final bool? customerSmoking;
  @override
  final UpdateCartSessionBodyDeliveryParam? delivery;
  @override
  final String? eta;
  @override
  final List<String>? promos;
  @override
  final String? salesType;
  @override
  final List<CreateUpdateCartSessionItemParam>? items;

  @override
  String toString() {
    return 'UpdateCartSessionBodyParam(paymentType: $paymentType, customerNote: $customerNote, customerPax: $customerPax, customerSmoking: $customerSmoking, delivery: $delivery, eta: $eta, promos: $promos, salesType: $salesType, items: $items)';
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
            (identical(other.customerPax, customerPax) ||
                const DeepCollectionEquality()
                    .equals(other.customerPax, customerPax)) &&
            (identical(other.customerSmoking, customerSmoking) ||
                const DeepCollectionEquality()
                    .equals(other.customerSmoking, customerSmoking)) &&
            (identical(other.delivery, delivery) ||
                const DeepCollectionEquality()
                    .equals(other.delivery, delivery)) &&
            (identical(other.eta, eta) ||
                const DeepCollectionEquality().equals(other.eta, eta)) &&
            (identical(other.promos, promos) ||
                const DeepCollectionEquality().equals(other.promos, promos)) &&
            (identical(other.salesType, salesType) ||
                const DeepCollectionEquality()
                    .equals(other.salesType, salesType)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(customerNote) ^
      const DeepCollectionEquality().hash(customerPax) ^
      const DeepCollectionEquality().hash(customerSmoking) ^
      const DeepCollectionEquality().hash(delivery) ^
      const DeepCollectionEquality().hash(eta) ^
      const DeepCollectionEquality().hash(promos) ^
      const DeepCollectionEquality().hash(salesType) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartSessionBodyParamCopyWith<_UpdateCartSessionBodyParam>
      get copyWith => __$UpdateCartSessionBodyParamCopyWithImpl<
          _UpdateCartSessionBodyParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCartSessionBodyParamToJson(this);
  }
}

abstract class _UpdateCartSessionBodyParam
    implements UpdateCartSessionBodyParam {
  const factory _UpdateCartSessionBodyParam(
          {required String? paymentType,
          required String? customerNote,
          required String? customerPax,
          required bool? customerSmoking,
          required UpdateCartSessionBodyDeliveryParam? delivery,
          required String? eta,
          required List<String>? promos,
          required String? salesType,
          required List<CreateUpdateCartSessionItemParam>? items}) =
      _$_UpdateCartSessionBodyParam;

  factory _UpdateCartSessionBodyParam.fromJson(Map<String, dynamic> json) =
      _$_UpdateCartSessionBodyParam.fromJson;

  @override
  String? get paymentType => throw _privateConstructorUsedError;
  @override
  String? get customerNote => throw _privateConstructorUsedError;
  @override
  String? get customerPax => throw _privateConstructorUsedError;
  @override
  bool? get customerSmoking => throw _privateConstructorUsedError;
  @override
  UpdateCartSessionBodyDeliveryParam? get delivery =>
      throw _privateConstructorUsedError;
  @override
  String? get eta => throw _privateConstructorUsedError;
  @override
  List<String>? get promos => throw _privateConstructorUsedError;
  @override
  String? get salesType => throw _privateConstructorUsedError;
  @override
  List<CreateUpdateCartSessionItemParam>? get items =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionBodyParamCopyWith<_UpdateCartSessionBodyParam>
      get copyWith => throw _privateConstructorUsedError;
}

UpdateCartSessionBodyDeliveryParam _$UpdateCartSessionBodyDeliveryParamFromJson(
    Map<String, dynamic> json) {
  return _UpdateCartSessionBodyDeliveryParam.fromJson(json);
}

/// @nodoc
class _$UpdateCartSessionBodyDeliveryParamTearOff {
  const _$UpdateCartSessionBodyDeliveryParamTearOff();

  _UpdateCartSessionBodyDeliveryParam call(
      {required String provider,
      required int price,
      required String address,
      required String shipmentMethod,
      required List<String> location}) {
    return _UpdateCartSessionBodyDeliveryParam(
      provider: provider,
      price: price,
      address: address,
      shipmentMethod: shipmentMethod,
      location: location,
    );
  }

  UpdateCartSessionBodyDeliveryParam fromJson(Map<String, Object> json) {
    return UpdateCartSessionBodyDeliveryParam.fromJson(json);
  }
}

/// @nodoc
const $UpdateCartSessionBodyDeliveryParam =
    _$UpdateCartSessionBodyDeliveryParamTearOff();

/// @nodoc
mixin _$UpdateCartSessionBodyDeliveryParam {
  String get provider => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get shipmentMethod => throw _privateConstructorUsedError;
  List<String> get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCartSessionBodyDeliveryParamCopyWith<
          UpdateCartSessionBodyDeliveryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCartSessionBodyDeliveryParamCopyWith<$Res> {
  factory $UpdateCartSessionBodyDeliveryParamCopyWith(
          UpdateCartSessionBodyDeliveryParam value,
          $Res Function(UpdateCartSessionBodyDeliveryParam) then) =
      _$UpdateCartSessionBodyDeliveryParamCopyWithImpl<$Res>;
  $Res call(
      {String provider,
      int price,
      String address,
      String shipmentMethod,
      List<String> location});
}

/// @nodoc
class _$UpdateCartSessionBodyDeliveryParamCopyWithImpl<$Res>
    implements $UpdateCartSessionBodyDeliveryParamCopyWith<$Res> {
  _$UpdateCartSessionBodyDeliveryParamCopyWithImpl(this._value, this._then);

  final UpdateCartSessionBodyDeliveryParam _value;
  // ignore: unused_field
  final $Res Function(UpdateCartSessionBodyDeliveryParam) _then;

  @override
  $Res call({
    Object? provider = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? shipmentMethod = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$UpdateCartSessionBodyDeliveryParamCopyWith<$Res>
    implements $UpdateCartSessionBodyDeliveryParamCopyWith<$Res> {
  factory _$UpdateCartSessionBodyDeliveryParamCopyWith(
          _UpdateCartSessionBodyDeliveryParam value,
          $Res Function(_UpdateCartSessionBodyDeliveryParam) then) =
      __$UpdateCartSessionBodyDeliveryParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String provider,
      int price,
      String address,
      String shipmentMethod,
      List<String> location});
}

/// @nodoc
class __$UpdateCartSessionBodyDeliveryParamCopyWithImpl<$Res>
    extends _$UpdateCartSessionBodyDeliveryParamCopyWithImpl<$Res>
    implements _$UpdateCartSessionBodyDeliveryParamCopyWith<$Res> {
  __$UpdateCartSessionBodyDeliveryParamCopyWithImpl(
      _UpdateCartSessionBodyDeliveryParam _value,
      $Res Function(_UpdateCartSessionBodyDeliveryParam) _then)
      : super(_value, (v) => _then(v as _UpdateCartSessionBodyDeliveryParam));

  @override
  _UpdateCartSessionBodyDeliveryParam get _value =>
      super._value as _UpdateCartSessionBodyDeliveryParam;

  @override
  $Res call({
    Object? provider = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? shipmentMethod = freezed,
    Object? location = freezed,
  }) {
    return _then(_UpdateCartSessionBodyDeliveryParam(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateCartSessionBodyDeliveryParam
    implements _UpdateCartSessionBodyDeliveryParam {
  const _$_UpdateCartSessionBodyDeliveryParam(
      {required this.provider,
      required this.price,
      required this.address,
      required this.shipmentMethod,
      required this.location});

  factory _$_UpdateCartSessionBodyDeliveryParam.fromJson(
          Map<String, dynamic> json) =>
      _$$_UpdateCartSessionBodyDeliveryParamFromJson(json);

  @override
  final String provider;
  @override
  final int price;
  @override
  final String address;
  @override
  final String shipmentMethod;
  @override
  final List<String> location;

  @override
  String toString() {
    return 'UpdateCartSessionBodyDeliveryParam(provider: $provider, price: $price, address: $address, shipmentMethod: $shipmentMethod, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCartSessionBodyDeliveryParam &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.shipmentMethod, shipmentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.shipmentMethod, shipmentMethod)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(shipmentMethod) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$UpdateCartSessionBodyDeliveryParamCopyWith<
          _UpdateCartSessionBodyDeliveryParam>
      get copyWith => __$UpdateCartSessionBodyDeliveryParamCopyWithImpl<
          _UpdateCartSessionBodyDeliveryParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateCartSessionBodyDeliveryParamToJson(this);
  }
}

abstract class _UpdateCartSessionBodyDeliveryParam
    implements UpdateCartSessionBodyDeliveryParam {
  const factory _UpdateCartSessionBodyDeliveryParam(
      {required String provider,
      required int price,
      required String address,
      required String shipmentMethod,
      required List<String> location}) = _$_UpdateCartSessionBodyDeliveryParam;

  factory _UpdateCartSessionBodyDeliveryParam.fromJson(
          Map<String, dynamic> json) =
      _$_UpdateCartSessionBodyDeliveryParam.fromJson;

  @override
  String get provider => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get shipmentMethod => throw _privateConstructorUsedError;
  @override
  List<String> get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateCartSessionBodyDeliveryParamCopyWith<
          _UpdateCartSessionBodyDeliveryParam>
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
      _$$_UpdateCartSessionQueryParamFromJson(json);

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
    return _$$_UpdateCartSessionQueryParamToJson(this);
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
