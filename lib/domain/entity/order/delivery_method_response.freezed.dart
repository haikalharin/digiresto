// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'delivery_method_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryMethodResponse _$DeliveryMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryMethodResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryMethodResponseTearOff {
  const _$DeliveryMethodResponseTearOff();

  _DeliveryMethodResponse call(
      {required StatusResponse response,
      required List<DeliveryMethodDataResponse> data,
      required MetaResponse meta}) {
    return _DeliveryMethodResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  DeliveryMethodResponse fromJson(Map<String, Object> json) {
    return DeliveryMethodResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryMethodResponse = _$DeliveryMethodResponseTearOff();

/// @nodoc
mixin _$DeliveryMethodResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  List<DeliveryMethodDataResponse> get data =>
      throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryMethodResponseCopyWith<DeliveryMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodResponseCopyWith<$Res> {
  factory $DeliveryMethodResponseCopyWith(DeliveryMethodResponse value,
          $Res Function(DeliveryMethodResponse) then) =
      _$DeliveryMethodResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response,
      List<DeliveryMethodDataResponse> data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$DeliveryMethodResponseCopyWithImpl<$Res>
    implements $DeliveryMethodResponseCopyWith<$Res> {
  _$DeliveryMethodResponseCopyWithImpl(this._value, this._then);

  final DeliveryMethodResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryMethodResponse) _then;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethodDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }

  @override
  $StatusResponseCopyWith<$Res> get response {
    return $StatusResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }

  @override
  $MetaResponseCopyWith<$Res> get meta {
    return $MetaResponseCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryMethodResponseCopyWith<$Res>
    implements $DeliveryMethodResponseCopyWith<$Res> {
  factory _$DeliveryMethodResponseCopyWith(_DeliveryMethodResponse value,
          $Res Function(_DeliveryMethodResponse) then) =
      __$DeliveryMethodResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      List<DeliveryMethodDataResponse> data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$DeliveryMethodResponseCopyWithImpl<$Res>
    extends _$DeliveryMethodResponseCopyWithImpl<$Res>
    implements _$DeliveryMethodResponseCopyWith<$Res> {
  __$DeliveryMethodResponseCopyWithImpl(_DeliveryMethodResponse _value,
      $Res Function(_DeliveryMethodResponse) _then)
      : super(_value, (v) => _then(v as _DeliveryMethodResponse));

  @override
  _DeliveryMethodResponse get _value => super._value as _DeliveryMethodResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_DeliveryMethodResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethodDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryMethodResponse implements _DeliveryMethodResponse {
  const _$_DeliveryMethodResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_DeliveryMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryMethodResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final List<DeliveryMethodDataResponse> data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'DeliveryMethodResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryMethodResponse &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  _$DeliveryMethodResponseCopyWith<_DeliveryMethodResponse> get copyWith =>
      __$DeliveryMethodResponseCopyWithImpl<_DeliveryMethodResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryMethodResponseToJson(this);
  }
}

abstract class _DeliveryMethodResponse implements DeliveryMethodResponse {
  const factory _DeliveryMethodResponse(
      {required StatusResponse response,
      required List<DeliveryMethodDataResponse> data,
      required MetaResponse meta}) = _$_DeliveryMethodResponse;

  factory _DeliveryMethodResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveryMethodResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  List<DeliveryMethodDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryMethodResponseCopyWith<_DeliveryMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryMethodDataResponse _$DeliveryMethodDataResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryMethodDataResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryMethodDataResponseTearOff {
  const _$DeliveryMethodDataResponseTearOff();

  _DeliveryMethodDataResponse call(
      {required String provider,
      required String name,
      required List<DeliveryMethodDataShipmentMethodResponse> shipmentMethods,
      required DeliveryMethodDataParamResponse param}) {
    return _DeliveryMethodDataResponse(
      provider: provider,
      name: name,
      shipmentMethods: shipmentMethods,
      param: param,
    );
  }

  DeliveryMethodDataResponse fromJson(Map<String, Object> json) {
    return DeliveryMethodDataResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryMethodDataResponse = _$DeliveryMethodDataResponseTearOff();

/// @nodoc
mixin _$DeliveryMethodDataResponse {
  String get provider => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<DeliveryMethodDataShipmentMethodResponse> get shipmentMethods =>
      throw _privateConstructorUsedError;
  DeliveryMethodDataParamResponse get param =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryMethodDataResponseCopyWith<DeliveryMethodDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodDataResponseCopyWith<$Res> {
  factory $DeliveryMethodDataResponseCopyWith(DeliveryMethodDataResponse value,
          $Res Function(DeliveryMethodDataResponse) then) =
      _$DeliveryMethodDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String provider,
      String name,
      List<DeliveryMethodDataShipmentMethodResponse> shipmentMethods,
      DeliveryMethodDataParamResponse param});

  $DeliveryMethodDataParamResponseCopyWith<$Res> get param;
}

/// @nodoc
class _$DeliveryMethodDataResponseCopyWithImpl<$Res>
    implements $DeliveryMethodDataResponseCopyWith<$Res> {
  _$DeliveryMethodDataResponseCopyWithImpl(this._value, this._then);

  final DeliveryMethodDataResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryMethodDataResponse) _then;

  @override
  $Res call({
    Object? provider = freezed,
    Object? name = freezed,
    Object? shipmentMethods = freezed,
    Object? param = freezed,
  }) {
    return _then(_value.copyWith(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentMethods: shipmentMethods == freezed
          ? _value.shipmentMethods
          : shipmentMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethodDataShipmentMethodResponse>,
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as DeliveryMethodDataParamResponse,
    ));
  }

  @override
  $DeliveryMethodDataParamResponseCopyWith<$Res> get param {
    return $DeliveryMethodDataParamResponseCopyWith<$Res>(_value.param,
        (value) {
      return _then(_value.copyWith(param: value));
    });
  }
}

/// @nodoc
abstract class _$DeliveryMethodDataResponseCopyWith<$Res>
    implements $DeliveryMethodDataResponseCopyWith<$Res> {
  factory _$DeliveryMethodDataResponseCopyWith(
          _DeliveryMethodDataResponse value,
          $Res Function(_DeliveryMethodDataResponse) then) =
      __$DeliveryMethodDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String provider,
      String name,
      List<DeliveryMethodDataShipmentMethodResponse> shipmentMethods,
      DeliveryMethodDataParamResponse param});

  @override
  $DeliveryMethodDataParamResponseCopyWith<$Res> get param;
}

/// @nodoc
class __$DeliveryMethodDataResponseCopyWithImpl<$Res>
    extends _$DeliveryMethodDataResponseCopyWithImpl<$Res>
    implements _$DeliveryMethodDataResponseCopyWith<$Res> {
  __$DeliveryMethodDataResponseCopyWithImpl(_DeliveryMethodDataResponse _value,
      $Res Function(_DeliveryMethodDataResponse) _then)
      : super(_value, (v) => _then(v as _DeliveryMethodDataResponse));

  @override
  _DeliveryMethodDataResponse get _value =>
      super._value as _DeliveryMethodDataResponse;

  @override
  $Res call({
    Object? provider = freezed,
    Object? name = freezed,
    Object? shipmentMethods = freezed,
    Object? param = freezed,
  }) {
    return _then(_DeliveryMethodDataResponse(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shipmentMethods: shipmentMethods == freezed
          ? _value.shipmentMethods
          : shipmentMethods // ignore: cast_nullable_to_non_nullable
              as List<DeliveryMethodDataShipmentMethodResponse>,
      param: param == freezed
          ? _value.param
          : param // ignore: cast_nullable_to_non_nullable
              as DeliveryMethodDataParamResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryMethodDataResponse implements _DeliveryMethodDataResponse {
  const _$_DeliveryMethodDataResponse(
      {required this.provider,
      required this.name,
      required this.shipmentMethods,
      required this.param});

  factory _$_DeliveryMethodDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DeliveryMethodDataResponseFromJson(json);

  @override
  final String provider;
  @override
  final String name;
  @override
  final List<DeliveryMethodDataShipmentMethodResponse> shipmentMethods;
  @override
  final DeliveryMethodDataParamResponse param;

  @override
  String toString() {
    return 'DeliveryMethodDataResponse(provider: $provider, name: $name, shipmentMethods: $shipmentMethods, param: $param)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryMethodDataResponse &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.shipmentMethods, shipmentMethods) ||
                const DeepCollectionEquality()
                    .equals(other.shipmentMethods, shipmentMethods)) &&
            (identical(other.param, param) ||
                const DeepCollectionEquality().equals(other.param, param)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(shipmentMethods) ^
      const DeepCollectionEquality().hash(param);

  @JsonKey(ignore: true)
  @override
  _$DeliveryMethodDataResponseCopyWith<_DeliveryMethodDataResponse>
      get copyWith => __$DeliveryMethodDataResponseCopyWithImpl<
          _DeliveryMethodDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryMethodDataResponseToJson(this);
  }
}

abstract class _DeliveryMethodDataResponse
    implements DeliveryMethodDataResponse {
  const factory _DeliveryMethodDataResponse(
      {required String provider,
      required String name,
      required List<DeliveryMethodDataShipmentMethodResponse> shipmentMethods,
      required DeliveryMethodDataParamResponse
          param}) = _$_DeliveryMethodDataResponse;

  factory _DeliveryMethodDataResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveryMethodDataResponse.fromJson;

  @override
  String get provider => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<DeliveryMethodDataShipmentMethodResponse> get shipmentMethods =>
      throw _privateConstructorUsedError;
  @override
  DeliveryMethodDataParamResponse get param =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryMethodDataResponseCopyWith<_DeliveryMethodDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveryMethodDataParamResponse _$DeliveryMethodDataParamResponseFromJson(
    Map<String, dynamic> json) {
  return _DeliveryMethodDataParamResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryMethodDataParamResponseTearOff {
  const _$DeliveryMethodDataParamResponseTearOff();

  _DeliveryMethodDataParamResponse call(
      {required String? provider,
      required String? price,
      required String? address,
      required String? shipmentMethod,
      required List<String> location}) {
    return _DeliveryMethodDataParamResponse(
      provider: provider,
      price: price,
      address: address,
      shipmentMethod: shipmentMethod,
      location: location,
    );
  }

  DeliveryMethodDataParamResponse fromJson(Map<String, Object> json) {
    return DeliveryMethodDataParamResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryMethodDataParamResponse =
    _$DeliveryMethodDataParamResponseTearOff();

/// @nodoc
mixin _$DeliveryMethodDataParamResponse {
  String? get provider => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get shipmentMethod => throw _privateConstructorUsedError;
  List<String> get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryMethodDataParamResponseCopyWith<DeliveryMethodDataParamResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodDataParamResponseCopyWith<$Res> {
  factory $DeliveryMethodDataParamResponseCopyWith(
          DeliveryMethodDataParamResponse value,
          $Res Function(DeliveryMethodDataParamResponse) then) =
      _$DeliveryMethodDataParamResponseCopyWithImpl<$Res>;
  $Res call(
      {String? provider,
      String? price,
      String? address,
      String? shipmentMethod,
      List<String> location});
}

/// @nodoc
class _$DeliveryMethodDataParamResponseCopyWithImpl<$Res>
    implements $DeliveryMethodDataParamResponseCopyWith<$Res> {
  _$DeliveryMethodDataParamResponseCopyWithImpl(this._value, this._then);

  final DeliveryMethodDataParamResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryMethodDataParamResponse) _then;

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
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryMethodDataParamResponseCopyWith<$Res>
    implements $DeliveryMethodDataParamResponseCopyWith<$Res> {
  factory _$DeliveryMethodDataParamResponseCopyWith(
          _DeliveryMethodDataParamResponse value,
          $Res Function(_DeliveryMethodDataParamResponse) then) =
      __$DeliveryMethodDataParamResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? provider,
      String? price,
      String? address,
      String? shipmentMethod,
      List<String> location});
}

/// @nodoc
class __$DeliveryMethodDataParamResponseCopyWithImpl<$Res>
    extends _$DeliveryMethodDataParamResponseCopyWithImpl<$Res>
    implements _$DeliveryMethodDataParamResponseCopyWith<$Res> {
  __$DeliveryMethodDataParamResponseCopyWithImpl(
      _DeliveryMethodDataParamResponse _value,
      $Res Function(_DeliveryMethodDataParamResponse) _then)
      : super(_value, (v) => _then(v as _DeliveryMethodDataParamResponse));

  @override
  _DeliveryMethodDataParamResponse get _value =>
      super._value as _DeliveryMethodDataParamResponse;

  @override
  $Res call({
    Object? provider = freezed,
    Object? price = freezed,
    Object? address = freezed,
    Object? shipmentMethod = freezed,
    Object? location = freezed,
  }) {
    return _then(_DeliveryMethodDataParamResponse(
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      shipmentMethod: shipmentMethod == freezed
          ? _value.shipmentMethod
          : shipmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryMethodDataParamResponse
    implements _DeliveryMethodDataParamResponse {
  const _$_DeliveryMethodDataParamResponse(
      {required this.provider,
      required this.price,
      required this.address,
      required this.shipmentMethod,
      required this.location});

  factory _$_DeliveryMethodDataParamResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_DeliveryMethodDataParamResponseFromJson(json);

  @override
  final String? provider;
  @override
  final String? price;
  @override
  final String? address;
  @override
  final String? shipmentMethod;
  @override
  final List<String> location;

  @override
  String toString() {
    return 'DeliveryMethodDataParamResponse(provider: $provider, price: $price, address: $address, shipmentMethod: $shipmentMethod, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryMethodDataParamResponse &&
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
  _$DeliveryMethodDataParamResponseCopyWith<_DeliveryMethodDataParamResponse>
      get copyWith => __$DeliveryMethodDataParamResponseCopyWithImpl<
          _DeliveryMethodDataParamResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryMethodDataParamResponseToJson(this);
  }
}

abstract class _DeliveryMethodDataParamResponse
    implements DeliveryMethodDataParamResponse {
  const factory _DeliveryMethodDataParamResponse(
      {required String? provider,
      required String? price,
      required String? address,
      required String? shipmentMethod,
      required List<String> location}) = _$_DeliveryMethodDataParamResponse;

  factory _DeliveryMethodDataParamResponse.fromJson(Map<String, dynamic> json) =
      _$_DeliveryMethodDataParamResponse.fromJson;

  @override
  String? get provider => throw _privateConstructorUsedError;
  @override
  String? get price => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  String? get shipmentMethod => throw _privateConstructorUsedError;
  @override
  List<String> get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryMethodDataParamResponseCopyWith<_DeliveryMethodDataParamResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DeliveryMethodDataShipmentMethodResponse
    _$DeliveryMethodDataShipmentMethodResponseFromJson(
        Map<String, dynamic> json) {
  return _DeliveryMethodDataShipmentMethodResponse.fromJson(json);
}

/// @nodoc
class _$DeliveryMethodDataShipmentMethodResponseTearOff {
  const _$DeliveryMethodDataShipmentMethodResponseTearOff();

  _DeliveryMethodDataShipmentMethodResponse call(
      {required String name,
      required String? description,
      required int price,
      required String etd,
      required int? originalPrice}) {
    return _DeliveryMethodDataShipmentMethodResponse(
      name: name,
      description: description,
      price: price,
      etd: etd,
      originalPrice: originalPrice,
    );
  }

  DeliveryMethodDataShipmentMethodResponse fromJson(Map<String, Object> json) {
    return DeliveryMethodDataShipmentMethodResponse.fromJson(json);
  }
}

/// @nodoc
const $DeliveryMethodDataShipmentMethodResponse =
    _$DeliveryMethodDataShipmentMethodResponseTearOff();

/// @nodoc
mixin _$DeliveryMethodDataShipmentMethodResponse {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get etd => throw _privateConstructorUsedError;
  int? get originalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryMethodDataShipmentMethodResponseCopyWith<
          DeliveryMethodDataShipmentMethodResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryMethodDataShipmentMethodResponseCopyWith<$Res> {
  factory $DeliveryMethodDataShipmentMethodResponseCopyWith(
          DeliveryMethodDataShipmentMethodResponse value,
          $Res Function(DeliveryMethodDataShipmentMethodResponse) then) =
      _$DeliveryMethodDataShipmentMethodResponseCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String? description,
      int price,
      String etd,
      int? originalPrice});
}

/// @nodoc
class _$DeliveryMethodDataShipmentMethodResponseCopyWithImpl<$Res>
    implements $DeliveryMethodDataShipmentMethodResponseCopyWith<$Res> {
  _$DeliveryMethodDataShipmentMethodResponseCopyWithImpl(
      this._value, this._then);

  final DeliveryMethodDataShipmentMethodResponse _value;
  // ignore: unused_field
  final $Res Function(DeliveryMethodDataShipmentMethodResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? etd = freezed,
    Object? originalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      etd: etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$DeliveryMethodDataShipmentMethodResponseCopyWith<$Res>
    implements $DeliveryMethodDataShipmentMethodResponseCopyWith<$Res> {
  factory _$DeliveryMethodDataShipmentMethodResponseCopyWith(
          _DeliveryMethodDataShipmentMethodResponse value,
          $Res Function(_DeliveryMethodDataShipmentMethodResponse) then) =
      __$DeliveryMethodDataShipmentMethodResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String? description,
      int price,
      String etd,
      int? originalPrice});
}

/// @nodoc
class __$DeliveryMethodDataShipmentMethodResponseCopyWithImpl<$Res>
    extends _$DeliveryMethodDataShipmentMethodResponseCopyWithImpl<$Res>
    implements _$DeliveryMethodDataShipmentMethodResponseCopyWith<$Res> {
  __$DeliveryMethodDataShipmentMethodResponseCopyWithImpl(
      _DeliveryMethodDataShipmentMethodResponse _value,
      $Res Function(_DeliveryMethodDataShipmentMethodResponse) _then)
      : super(_value,
            (v) => _then(v as _DeliveryMethodDataShipmentMethodResponse));

  @override
  _DeliveryMethodDataShipmentMethodResponse get _value =>
      super._value as _DeliveryMethodDataShipmentMethodResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? etd = freezed,
    Object? originalPrice = freezed,
  }) {
    return _then(_DeliveryMethodDataShipmentMethodResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      etd: etd == freezed
          ? _value.etd
          : etd // ignore: cast_nullable_to_non_nullable
              as String,
      originalPrice: originalPrice == freezed
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryMethodDataShipmentMethodResponse
    implements _DeliveryMethodDataShipmentMethodResponse {
  const _$_DeliveryMethodDataShipmentMethodResponse(
      {required this.name,
      required this.description,
      required this.price,
      required this.etd,
      required this.originalPrice});

  factory _$_DeliveryMethodDataShipmentMethodResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_DeliveryMethodDataShipmentMethodResponseFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final int price;
  @override
  final String etd;
  @override
  final int? originalPrice;

  @override
  String toString() {
    return 'DeliveryMethodDataShipmentMethodResponse(name: $name, description: $description, price: $price, etd: $etd, originalPrice: $originalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryMethodDataShipmentMethodResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.etd, etd) ||
                const DeepCollectionEquality().equals(other.etd, etd)) &&
            (identical(other.originalPrice, originalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.originalPrice, originalPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(etd) ^
      const DeepCollectionEquality().hash(originalPrice);

  @JsonKey(ignore: true)
  @override
  _$DeliveryMethodDataShipmentMethodResponseCopyWith<
          _DeliveryMethodDataShipmentMethodResponse>
      get copyWith => __$DeliveryMethodDataShipmentMethodResponseCopyWithImpl<
          _DeliveryMethodDataShipmentMethodResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeliveryMethodDataShipmentMethodResponseToJson(this);
  }
}

abstract class _DeliveryMethodDataShipmentMethodResponse
    implements DeliveryMethodDataShipmentMethodResponse {
  const factory _DeliveryMethodDataShipmentMethodResponse(
          {required String name,
          required String? description,
          required int price,
          required String etd,
          required int? originalPrice}) =
      _$_DeliveryMethodDataShipmentMethodResponse;

  factory _DeliveryMethodDataShipmentMethodResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DeliveryMethodDataShipmentMethodResponse.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get etd => throw _privateConstructorUsedError;
  @override
  int? get originalPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeliveryMethodDataShipmentMethodResponseCopyWith<
          _DeliveryMethodDataShipmentMethodResponse>
      get copyWith => throw _privateConstructorUsedError;
}
