// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'outlet_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OutletCategoryResponse _$OutletCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletCategoryResponse.fromJson(json);
}

/// @nodoc
class _$OutletCategoryResponseTearOff {
  const _$OutletCategoryResponseTearOff();

  _OutletCategoryResponse call(
      {required OutletCategoryResponses response,
      required List<OutletCategoryDataResponse> data,
      required OutletCategoryMetaResponse meta}) {
    return _OutletCategoryResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  OutletCategoryResponse fromJson(Map<String, Object> json) {
    return OutletCategoryResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletCategoryResponse = _$OutletCategoryResponseTearOff();

/// @nodoc
mixin _$OutletCategoryResponse {
  OutletCategoryResponses get response => throw _privateConstructorUsedError;
  List<OutletCategoryDataResponse> get data =>
      throw _privateConstructorUsedError;
  OutletCategoryMetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCategoryResponseCopyWith<OutletCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCategoryResponseCopyWith<$Res> {
  factory $OutletCategoryResponseCopyWith(OutletCategoryResponse value,
          $Res Function(OutletCategoryResponse) then) =
      _$OutletCategoryResponseCopyWithImpl<$Res>;
  $Res call(
      {OutletCategoryResponses response,
      List<OutletCategoryDataResponse> data,
      OutletCategoryMetaResponse meta});

  $OutletCategoryResponsesCopyWith<$Res> get response;
  $OutletCategoryMetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$OutletCategoryResponseCopyWithImpl<$Res>
    implements $OutletCategoryResponseCopyWith<$Res> {
  _$OutletCategoryResponseCopyWithImpl(this._value, this._then);

  final OutletCategoryResponse _value;
  // ignore: unused_field
  final $Res Function(OutletCategoryResponse) _then;

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
              as OutletCategoryResponses,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletCategoryDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as OutletCategoryMetaResponse,
    ));
  }

  @override
  $OutletCategoryResponsesCopyWith<$Res> get response {
    return $OutletCategoryResponsesCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }

  @override
  $OutletCategoryMetaResponseCopyWith<$Res> get meta {
    return $OutletCategoryMetaResponseCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$OutletCategoryResponseCopyWith<$Res>
    implements $OutletCategoryResponseCopyWith<$Res> {
  factory _$OutletCategoryResponseCopyWith(_OutletCategoryResponse value,
          $Res Function(_OutletCategoryResponse) then) =
      __$OutletCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {OutletCategoryResponses response,
      List<OutletCategoryDataResponse> data,
      OutletCategoryMetaResponse meta});

  @override
  $OutletCategoryResponsesCopyWith<$Res> get response;
  @override
  $OutletCategoryMetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$OutletCategoryResponseCopyWithImpl<$Res>
    extends _$OutletCategoryResponseCopyWithImpl<$Res>
    implements _$OutletCategoryResponseCopyWith<$Res> {
  __$OutletCategoryResponseCopyWithImpl(_OutletCategoryResponse _value,
      $Res Function(_OutletCategoryResponse) _then)
      : super(_value, (v) => _then(v as _OutletCategoryResponse));

  @override
  _OutletCategoryResponse get _value => super._value as _OutletCategoryResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_OutletCategoryResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OutletCategoryResponses,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletCategoryDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as OutletCategoryMetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletCategoryResponse implements _OutletCategoryResponse {
  const _$_OutletCategoryResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_OutletCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletCategoryResponseFromJson(json);

  @override
  final OutletCategoryResponses response;
  @override
  final List<OutletCategoryDataResponse> data;
  @override
  final OutletCategoryMetaResponse meta;

  @override
  String toString() {
    return 'OutletCategoryResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletCategoryResponse &&
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
  _$OutletCategoryResponseCopyWith<_OutletCategoryResponse> get copyWith =>
      __$OutletCategoryResponseCopyWithImpl<_OutletCategoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletCategoryResponseToJson(this);
  }
}

abstract class _OutletCategoryResponse implements OutletCategoryResponse {
  const factory _OutletCategoryResponse(
      {required OutletCategoryResponses response,
      required List<OutletCategoryDataResponse> data,
      required OutletCategoryMetaResponse meta}) = _$_OutletCategoryResponse;

  factory _OutletCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletCategoryResponse.fromJson;

  @override
  OutletCategoryResponses get response => throw _privateConstructorUsedError;
  @override
  List<OutletCategoryDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  OutletCategoryMetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCategoryResponseCopyWith<_OutletCategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

OutletCategoryDataResponse _$OutletCategoryDataResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletCategoryDataResponse.fromJson(json);
}

/// @nodoc
class _$OutletCategoryDataResponseTearOff {
  const _$OutletCategoryDataResponseTearOff();

  _OutletCategoryDataResponse call(
      {required String endpointName,
      required String id,
      required String name,
      required String city,
      required List<String> salesTypes,
      required bool isOpen,
      required String? logo,
      required int countOutlet,
      required String merchantId,
      required String merchantName,
      required String? merchantLogo,
      required String callbackUrl,
      required OutletCategoryDataDistanceResponse distance}) {
    return _OutletCategoryDataResponse(
      endpointName: endpointName,
      id: id,
      name: name,
      city: city,
      salesTypes: salesTypes,
      isOpen: isOpen,
      logo: logo,
      countOutlet: countOutlet,
      merchantId: merchantId,
      merchantName: merchantName,
      merchantLogo: merchantLogo,
      callbackUrl: callbackUrl,
      distance: distance,
    );
  }

  OutletCategoryDataResponse fromJson(Map<String, Object> json) {
    return OutletCategoryDataResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletCategoryDataResponse = _$OutletCategoryDataResponseTearOff();

/// @nodoc
mixin _$OutletCategoryDataResponse {
  String get endpointName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  List<String> get salesTypes => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  int get countOutlet => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  String get merchantName => throw _privateConstructorUsedError;
  String? get merchantLogo => throw _privateConstructorUsedError;
  String get callbackUrl => throw _privateConstructorUsedError;
  OutletCategoryDataDistanceResponse get distance =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCategoryDataResponseCopyWith<OutletCategoryDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCategoryDataResponseCopyWith<$Res> {
  factory $OutletCategoryDataResponseCopyWith(OutletCategoryDataResponse value,
          $Res Function(OutletCategoryDataResponse) then) =
      _$OutletCategoryDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String endpointName,
      String id,
      String name,
      String city,
      List<String> salesTypes,
      bool isOpen,
      String? logo,
      int countOutlet,
      String merchantId,
      String merchantName,
      String? merchantLogo,
      String callbackUrl,
      OutletCategoryDataDistanceResponse distance});

  $OutletCategoryDataDistanceResponseCopyWith<$Res> get distance;
}

/// @nodoc
class _$OutletCategoryDataResponseCopyWithImpl<$Res>
    implements $OutletCategoryDataResponseCopyWith<$Res> {
  _$OutletCategoryDataResponseCopyWithImpl(this._value, this._then);

  final OutletCategoryDataResponse _value;
  // ignore: unused_field
  final $Res Function(OutletCategoryDataResponse) _then;

  @override
  $Res call({
    Object? endpointName = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? salesTypes = freezed,
    Object? isOpen = freezed,
    Object? logo = freezed,
    Object? countOutlet = freezed,
    Object? merchantId = freezed,
    Object? merchantName = freezed,
    Object? merchantLogo = freezed,
    Object? callbackUrl = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      endpointName: endpointName == freezed
          ? _value.endpointName
          : endpointName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      salesTypes: salesTypes == freezed
          ? _value.salesTypes
          : salesTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      countOutlet: countOutlet == freezed
          ? _value.countOutlet
          : countOutlet // ignore: cast_nullable_to_non_nullable
              as int,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      merchantLogo: merchantLogo == freezed
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      callbackUrl: callbackUrl == freezed
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as OutletCategoryDataDistanceResponse,
    ));
  }

  @override
  $OutletCategoryDataDistanceResponseCopyWith<$Res> get distance {
    return $OutletCategoryDataDistanceResponseCopyWith<$Res>(_value.distance,
        (value) {
      return _then(_value.copyWith(distance: value));
    });
  }
}

/// @nodoc
abstract class _$OutletCategoryDataResponseCopyWith<$Res>
    implements $OutletCategoryDataResponseCopyWith<$Res> {
  factory _$OutletCategoryDataResponseCopyWith(
          _OutletCategoryDataResponse value,
          $Res Function(_OutletCategoryDataResponse) then) =
      __$OutletCategoryDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String endpointName,
      String id,
      String name,
      String city,
      List<String> salesTypes,
      bool isOpen,
      String? logo,
      int countOutlet,
      String merchantId,
      String merchantName,
      String? merchantLogo,
      String callbackUrl,
      OutletCategoryDataDistanceResponse distance});

  @override
  $OutletCategoryDataDistanceResponseCopyWith<$Res> get distance;
}

/// @nodoc
class __$OutletCategoryDataResponseCopyWithImpl<$Res>
    extends _$OutletCategoryDataResponseCopyWithImpl<$Res>
    implements _$OutletCategoryDataResponseCopyWith<$Res> {
  __$OutletCategoryDataResponseCopyWithImpl(_OutletCategoryDataResponse _value,
      $Res Function(_OutletCategoryDataResponse) _then)
      : super(_value, (v) => _then(v as _OutletCategoryDataResponse));

  @override
  _OutletCategoryDataResponse get _value =>
      super._value as _OutletCategoryDataResponse;

  @override
  $Res call({
    Object? endpointName = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? salesTypes = freezed,
    Object? isOpen = freezed,
    Object? logo = freezed,
    Object? countOutlet = freezed,
    Object? merchantId = freezed,
    Object? merchantName = freezed,
    Object? merchantLogo = freezed,
    Object? callbackUrl = freezed,
    Object? distance = freezed,
  }) {
    return _then(_OutletCategoryDataResponse(
      endpointName: endpointName == freezed
          ? _value.endpointName
          : endpointName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      salesTypes: salesTypes == freezed
          ? _value.salesTypes
          : salesTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      countOutlet: countOutlet == freezed
          ? _value.countOutlet
          : countOutlet // ignore: cast_nullable_to_non_nullable
              as int,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      merchantLogo: merchantLogo == freezed
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      callbackUrl: callbackUrl == freezed
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as OutletCategoryDataDistanceResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletCategoryDataResponse implements _OutletCategoryDataResponse {
  const _$_OutletCategoryDataResponse(
      {required this.endpointName,
      required this.id,
      required this.name,
      required this.city,
      required this.salesTypes,
      required this.isOpen,
      required this.logo,
      required this.countOutlet,
      required this.merchantId,
      required this.merchantName,
      required this.merchantLogo,
      required this.callbackUrl,
      required this.distance});

  factory _$_OutletCategoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletCategoryDataResponseFromJson(json);

  @override
  final String endpointName;
  @override
  final String id;
  @override
  final String name;
  @override
  final String city;
  @override
  final List<String> salesTypes;
  @override
  final bool isOpen;
  @override
  final String? logo;
  @override
  final int countOutlet;
  @override
  final String merchantId;
  @override
  final String merchantName;
  @override
  final String? merchantLogo;
  @override
  final String callbackUrl;
  @override
  final OutletCategoryDataDistanceResponse distance;

  @override
  String toString() {
    return 'OutletCategoryDataResponse(endpointName: $endpointName, id: $id, name: $name, city: $city, salesTypes: $salesTypes, isOpen: $isOpen, logo: $logo, countOutlet: $countOutlet, merchantId: $merchantId, merchantName: $merchantName, merchantLogo: $merchantLogo, callbackUrl: $callbackUrl, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletCategoryDataResponse &&
            (identical(other.endpointName, endpointName) ||
                const DeepCollectionEquality()
                    .equals(other.endpointName, endpointName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.salesTypes, salesTypes) ||
                const DeepCollectionEquality()
                    .equals(other.salesTypes, salesTypes)) &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)) &&
            (identical(other.logo, logo) ||
                const DeepCollectionEquality().equals(other.logo, logo)) &&
            (identical(other.countOutlet, countOutlet) ||
                const DeepCollectionEquality()
                    .equals(other.countOutlet, countOutlet)) &&
            (identical(other.merchantId, merchantId) ||
                const DeepCollectionEquality()
                    .equals(other.merchantId, merchantId)) &&
            (identical(other.merchantName, merchantName) ||
                const DeepCollectionEquality()
                    .equals(other.merchantName, merchantName)) &&
            (identical(other.merchantLogo, merchantLogo) ||
                const DeepCollectionEquality()
                    .equals(other.merchantLogo, merchantLogo)) &&
            (identical(other.callbackUrl, callbackUrl) ||
                const DeepCollectionEquality()
                    .equals(other.callbackUrl, callbackUrl)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(endpointName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(salesTypes) ^
      const DeepCollectionEquality().hash(isOpen) ^
      const DeepCollectionEquality().hash(logo) ^
      const DeepCollectionEquality().hash(countOutlet) ^
      const DeepCollectionEquality().hash(merchantId) ^
      const DeepCollectionEquality().hash(merchantName) ^
      const DeepCollectionEquality().hash(merchantLogo) ^
      const DeepCollectionEquality().hash(callbackUrl) ^
      const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  _$OutletCategoryDataResponseCopyWith<_OutletCategoryDataResponse>
      get copyWith => __$OutletCategoryDataResponseCopyWithImpl<
          _OutletCategoryDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletCategoryDataResponseToJson(this);
  }
}

abstract class _OutletCategoryDataResponse
    implements OutletCategoryDataResponse {
  const factory _OutletCategoryDataResponse(
          {required String endpointName,
          required String id,
          required String name,
          required String city,
          required List<String> salesTypes,
          required bool isOpen,
          required String? logo,
          required int countOutlet,
          required String merchantId,
          required String merchantName,
          required String? merchantLogo,
          required String callbackUrl,
          required OutletCategoryDataDistanceResponse distance}) =
      _$_OutletCategoryDataResponse;

  factory _OutletCategoryDataResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletCategoryDataResponse.fromJson;

  @override
  String get endpointName => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  List<String> get salesTypes => throw _privateConstructorUsedError;
  @override
  bool get isOpen => throw _privateConstructorUsedError;
  @override
  String? get logo => throw _privateConstructorUsedError;
  @override
  int get countOutlet => throw _privateConstructorUsedError;
  @override
  String get merchantId => throw _privateConstructorUsedError;
  @override
  String get merchantName => throw _privateConstructorUsedError;
  @override
  String? get merchantLogo => throw _privateConstructorUsedError;
  @override
  String get callbackUrl => throw _privateConstructorUsedError;
  @override
  OutletCategoryDataDistanceResponse get distance =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCategoryDataResponseCopyWith<_OutletCategoryDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletCategoryDataDistanceResponse _$OutletCategoryDataDistanceResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletCategoryDataDistanceResponse.fromJson(json);
}

/// @nodoc
class _$OutletCategoryDataDistanceResponseTearOff {
  const _$OutletCategoryDataDistanceResponseTearOff();

  _OutletCategoryDataDistanceResponse call(
      {required double realRadius,
      required double distanceValue,
      required String distance}) {
    return _OutletCategoryDataDistanceResponse(
      realRadius: realRadius,
      distanceValue: distanceValue,
      distance: distance,
    );
  }

  OutletCategoryDataDistanceResponse fromJson(Map<String, Object> json) {
    return OutletCategoryDataDistanceResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletCategoryDataDistanceResponse =
    _$OutletCategoryDataDistanceResponseTearOff();

/// @nodoc
mixin _$OutletCategoryDataDistanceResponse {
  double get realRadius => throw _privateConstructorUsedError;
  double get distanceValue => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCategoryDataDistanceResponseCopyWith<
          OutletCategoryDataDistanceResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCategoryDataDistanceResponseCopyWith<$Res> {
  factory $OutletCategoryDataDistanceResponseCopyWith(
          OutletCategoryDataDistanceResponse value,
          $Res Function(OutletCategoryDataDistanceResponse) then) =
      _$OutletCategoryDataDistanceResponseCopyWithImpl<$Res>;
  $Res call({double realRadius, double distanceValue, String distance});
}

/// @nodoc
class _$OutletCategoryDataDistanceResponseCopyWithImpl<$Res>
    implements $OutletCategoryDataDistanceResponseCopyWith<$Res> {
  _$OutletCategoryDataDistanceResponseCopyWithImpl(this._value, this._then);

  final OutletCategoryDataDistanceResponse _value;
  // ignore: unused_field
  final $Res Function(OutletCategoryDataDistanceResponse) _then;

  @override
  $Res call({
    Object? realRadius = freezed,
    Object? distanceValue = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      realRadius: realRadius == freezed
          ? _value.realRadius
          : realRadius // ignore: cast_nullable_to_non_nullable
              as double,
      distanceValue: distanceValue == freezed
          ? _value.distanceValue
          : distanceValue // ignore: cast_nullable_to_non_nullable
              as double,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OutletCategoryDataDistanceResponseCopyWith<$Res>
    implements $OutletCategoryDataDistanceResponseCopyWith<$Res> {
  factory _$OutletCategoryDataDistanceResponseCopyWith(
          _OutletCategoryDataDistanceResponse value,
          $Res Function(_OutletCategoryDataDistanceResponse) then) =
      __$OutletCategoryDataDistanceResponseCopyWithImpl<$Res>;
  @override
  $Res call({double realRadius, double distanceValue, String distance});
}

/// @nodoc
class __$OutletCategoryDataDistanceResponseCopyWithImpl<$Res>
    extends _$OutletCategoryDataDistanceResponseCopyWithImpl<$Res>
    implements _$OutletCategoryDataDistanceResponseCopyWith<$Res> {
  __$OutletCategoryDataDistanceResponseCopyWithImpl(
      _OutletCategoryDataDistanceResponse _value,
      $Res Function(_OutletCategoryDataDistanceResponse) _then)
      : super(_value, (v) => _then(v as _OutletCategoryDataDistanceResponse));

  @override
  _OutletCategoryDataDistanceResponse get _value =>
      super._value as _OutletCategoryDataDistanceResponse;

  @override
  $Res call({
    Object? realRadius = freezed,
    Object? distanceValue = freezed,
    Object? distance = freezed,
  }) {
    return _then(_OutletCategoryDataDistanceResponse(
      realRadius: realRadius == freezed
          ? _value.realRadius
          : realRadius // ignore: cast_nullable_to_non_nullable
              as double,
      distanceValue: distanceValue == freezed
          ? _value.distanceValue
          : distanceValue // ignore: cast_nullable_to_non_nullable
              as double,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletCategoryDataDistanceResponse
    implements _OutletCategoryDataDistanceResponse {
  const _$_OutletCategoryDataDistanceResponse(
      {required this.realRadius,
      required this.distanceValue,
      required this.distance});

  factory _$_OutletCategoryDataDistanceResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_OutletCategoryDataDistanceResponseFromJson(json);

  @override
  final double realRadius;
  @override
  final double distanceValue;
  @override
  final String distance;

  @override
  String toString() {
    return 'OutletCategoryDataDistanceResponse(realRadius: $realRadius, distanceValue: $distanceValue, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletCategoryDataDistanceResponse &&
            (identical(other.realRadius, realRadius) ||
                const DeepCollectionEquality()
                    .equals(other.realRadius, realRadius)) &&
            (identical(other.distanceValue, distanceValue) ||
                const DeepCollectionEquality()
                    .equals(other.distanceValue, distanceValue)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(realRadius) ^
      const DeepCollectionEquality().hash(distanceValue) ^
      const DeepCollectionEquality().hash(distance);

  @JsonKey(ignore: true)
  @override
  _$OutletCategoryDataDistanceResponseCopyWith<
          _OutletCategoryDataDistanceResponse>
      get copyWith => __$OutletCategoryDataDistanceResponseCopyWithImpl<
          _OutletCategoryDataDistanceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletCategoryDataDistanceResponseToJson(this);
  }
}

abstract class _OutletCategoryDataDistanceResponse
    implements OutletCategoryDataDistanceResponse {
  const factory _OutletCategoryDataDistanceResponse(
      {required double realRadius,
      required double distanceValue,
      required String distance}) = _$_OutletCategoryDataDistanceResponse;

  factory _OutletCategoryDataDistanceResponse.fromJson(
          Map<String, dynamic> json) =
      _$_OutletCategoryDataDistanceResponse.fromJson;

  @override
  double get realRadius => throw _privateConstructorUsedError;
  @override
  double get distanceValue => throw _privateConstructorUsedError;
  @override
  String get distance => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCategoryDataDistanceResponseCopyWith<
          _OutletCategoryDataDistanceResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletCategoryMetaResponse _$OutletCategoryMetaResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletCategoryMetaResponse.fromJson(json);
}

/// @nodoc
class _$OutletCategoryMetaResponseTearOff {
  const _$OutletCategoryMetaResponseTearOff();

  _OutletCategoryMetaResponse call({required String version}) {
    return _OutletCategoryMetaResponse(
      version: version,
    );
  }

  OutletCategoryMetaResponse fromJson(Map<String, Object> json) {
    return OutletCategoryMetaResponse.fromJson(json);
  }
}

/// @nodoc
const $OutletCategoryMetaResponse = _$OutletCategoryMetaResponseTearOff();

/// @nodoc
mixin _$OutletCategoryMetaResponse {
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCategoryMetaResponseCopyWith<OutletCategoryMetaResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCategoryMetaResponseCopyWith<$Res> {
  factory $OutletCategoryMetaResponseCopyWith(OutletCategoryMetaResponse value,
          $Res Function(OutletCategoryMetaResponse) then) =
      _$OutletCategoryMetaResponseCopyWithImpl<$Res>;
  $Res call({String version});
}

/// @nodoc
class _$OutletCategoryMetaResponseCopyWithImpl<$Res>
    implements $OutletCategoryMetaResponseCopyWith<$Res> {
  _$OutletCategoryMetaResponseCopyWithImpl(this._value, this._then);

  final OutletCategoryMetaResponse _value;
  // ignore: unused_field
  final $Res Function(OutletCategoryMetaResponse) _then;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OutletCategoryMetaResponseCopyWith<$Res>
    implements $OutletCategoryMetaResponseCopyWith<$Res> {
  factory _$OutletCategoryMetaResponseCopyWith(
          _OutletCategoryMetaResponse value,
          $Res Function(_OutletCategoryMetaResponse) then) =
      __$OutletCategoryMetaResponseCopyWithImpl<$Res>;
  @override
  $Res call({String version});
}

/// @nodoc
class __$OutletCategoryMetaResponseCopyWithImpl<$Res>
    extends _$OutletCategoryMetaResponseCopyWithImpl<$Res>
    implements _$OutletCategoryMetaResponseCopyWith<$Res> {
  __$OutletCategoryMetaResponseCopyWithImpl(_OutletCategoryMetaResponse _value,
      $Res Function(_OutletCategoryMetaResponse) _then)
      : super(_value, (v) => _then(v as _OutletCategoryMetaResponse));

  @override
  _OutletCategoryMetaResponse get _value =>
      super._value as _OutletCategoryMetaResponse;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_OutletCategoryMetaResponse(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletCategoryMetaResponse implements _OutletCategoryMetaResponse {
  const _$_OutletCategoryMetaResponse({required this.version});

  factory _$_OutletCategoryMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletCategoryMetaResponseFromJson(json);

  @override
  final String version;

  @override
  String toString() {
    return 'OutletCategoryMetaResponse(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletCategoryMetaResponse &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$OutletCategoryMetaResponseCopyWith<_OutletCategoryMetaResponse>
      get copyWith => __$OutletCategoryMetaResponseCopyWithImpl<
          _OutletCategoryMetaResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletCategoryMetaResponseToJson(this);
  }
}

abstract class _OutletCategoryMetaResponse
    implements OutletCategoryMetaResponse {
  const factory _OutletCategoryMetaResponse({required String version}) =
      _$_OutletCategoryMetaResponse;

  factory _OutletCategoryMetaResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletCategoryMetaResponse.fromJson;

  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCategoryMetaResponseCopyWith<_OutletCategoryMetaResponse>
      get copyWith => throw _privateConstructorUsedError;
}

OutletCategoryResponses _$OutletCategoryResponsesFromJson(
    Map<String, dynamic> json) {
  return _OutletCategoryResponses.fromJson(json);
}

/// @nodoc
class _$OutletCategoryResponsesTearOff {
  const _$OutletCategoryResponsesTearOff();

  _OutletCategoryResponses call(
      {required String code, required String status, required String message}) {
    return _OutletCategoryResponses(
      code: code,
      status: status,
      message: message,
    );
  }

  OutletCategoryResponses fromJson(Map<String, Object> json) {
    return OutletCategoryResponses.fromJson(json);
  }
}

/// @nodoc
const $OutletCategoryResponses = _$OutletCategoryResponsesTearOff();

/// @nodoc
mixin _$OutletCategoryResponses {
  String get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCategoryResponsesCopyWith<OutletCategoryResponses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCategoryResponsesCopyWith<$Res> {
  factory $OutletCategoryResponsesCopyWith(OutletCategoryResponses value,
          $Res Function(OutletCategoryResponses) then) =
      _$OutletCategoryResponsesCopyWithImpl<$Res>;
  $Res call({String code, String status, String message});
}

/// @nodoc
class _$OutletCategoryResponsesCopyWithImpl<$Res>
    implements $OutletCategoryResponsesCopyWith<$Res> {
  _$OutletCategoryResponsesCopyWithImpl(this._value, this._then);

  final OutletCategoryResponses _value;
  // ignore: unused_field
  final $Res Function(OutletCategoryResponses) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OutletCategoryResponsesCopyWith<$Res>
    implements $OutletCategoryResponsesCopyWith<$Res> {
  factory _$OutletCategoryResponsesCopyWith(_OutletCategoryResponses value,
          $Res Function(_OutletCategoryResponses) then) =
      __$OutletCategoryResponsesCopyWithImpl<$Res>;
  @override
  $Res call({String code, String status, String message});
}

/// @nodoc
class __$OutletCategoryResponsesCopyWithImpl<$Res>
    extends _$OutletCategoryResponsesCopyWithImpl<$Res>
    implements _$OutletCategoryResponsesCopyWith<$Res> {
  __$OutletCategoryResponsesCopyWithImpl(_OutletCategoryResponses _value,
      $Res Function(_OutletCategoryResponses) _then)
      : super(_value, (v) => _then(v as _OutletCategoryResponses));

  @override
  _OutletCategoryResponses get _value =>
      super._value as _OutletCategoryResponses;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_OutletCategoryResponses(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletCategoryResponses implements _OutletCategoryResponses {
  const _$_OutletCategoryResponses(
      {required this.code, required this.status, required this.message});

  factory _$_OutletCategoryResponses.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletCategoryResponsesFromJson(json);

  @override
  final String code;
  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'OutletCategoryResponses(code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletCategoryResponses &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$OutletCategoryResponsesCopyWith<_OutletCategoryResponses> get copyWith =>
      __$OutletCategoryResponsesCopyWithImpl<_OutletCategoryResponses>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletCategoryResponsesToJson(this);
  }
}

abstract class _OutletCategoryResponses implements OutletCategoryResponses {
  const factory _OutletCategoryResponses(
      {required String code,
      required String status,
      required String message}) = _$_OutletCategoryResponses;

  factory _OutletCategoryResponses.fromJson(Map<String, dynamic> json) =
      _$_OutletCategoryResponses.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCategoryResponsesCopyWith<_OutletCategoryResponses> get copyWith =>
      throw _privateConstructorUsedError;
}
