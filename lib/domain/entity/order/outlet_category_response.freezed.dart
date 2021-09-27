// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      {required StatusResponse response,
      required List<OutletCategoryDataResponse> data,
      required MetaResponse meta}) {
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
  StatusResponse get response => throw _privateConstructorUsedError;
  List<OutletCategoryDataResponse> get data =>
      throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

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
      {StatusResponse response,
      List<OutletCategoryDataResponse> data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $MetaResponseCopyWith<$Res> get meta;
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
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletCategoryDataResponse>,
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
abstract class _$OutletCategoryResponseCopyWith<$Res>
    implements $OutletCategoryResponseCopyWith<$Res> {
  factory _$OutletCategoryResponseCopyWith(_OutletCategoryResponse value,
          $Res Function(_OutletCategoryResponse) then) =
      __$OutletCategoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      List<OutletCategoryDataResponse> data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $MetaResponseCopyWith<$Res> get meta;
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
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletCategoryDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletCategoryResponse implements _OutletCategoryResponse {
  const _$_OutletCategoryResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_OutletCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OutletCategoryResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final List<OutletCategoryDataResponse> data;
  @override
  final MetaResponse meta;

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
    return _$$_OutletCategoryResponseToJson(this);
  }
}

abstract class _OutletCategoryResponse implements OutletCategoryResponse {
  const factory _OutletCategoryResponse(
      {required StatusResponse response,
      required List<OutletCategoryDataResponse> data,
      required MetaResponse meta}) = _$_OutletCategoryResponse;

  factory _OutletCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletCategoryResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  List<OutletCategoryDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
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
      required int? countOutlet,
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
  int? get countOutlet => throw _privateConstructorUsedError;
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
      int? countOutlet,
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
              as int?,
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
      int? countOutlet,
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
              as int?,
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
      _$$_OutletCategoryDataResponseFromJson(json);

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
  final int? countOutlet;
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
    return _$$_OutletCategoryDataResponseToJson(this);
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
          required int? countOutlet,
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
  int? get countOutlet => throw _privateConstructorUsedError;
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
      _$$_OutletCategoryDataDistanceResponseFromJson(json);

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
    return _$$_OutletCategoryDataDistanceResponseToJson(this);
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
