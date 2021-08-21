// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'detail_outlet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailOutletResponse _$DetailOutletResponseFromJson(Map<String, dynamic> json) {
  return _DetailOutletResponse.fromJson(json);
}

/// @nodoc
class _$DetailOutletResponseTearOff {
  const _$DetailOutletResponseTearOff();

  _DetailOutletResponse call(
      {required DetailOutletStatusResponse response,
      required DetailOutletDataResponse data,
      required DetailOutletMetaResponse meta}) {
    return _DetailOutletResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  DetailOutletResponse fromJson(Map<String, Object> json) {
    return DetailOutletResponse.fromJson(json);
  }
}

/// @nodoc
const $DetailOutletResponse = _$DetailOutletResponseTearOff();

/// @nodoc
mixin _$DetailOutletResponse {
  DetailOutletStatusResponse get response => throw _privateConstructorUsedError;
  DetailOutletDataResponse get data => throw _privateConstructorUsedError;
  DetailOutletMetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailOutletResponseCopyWith<DetailOutletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailOutletResponseCopyWith<$Res> {
  factory $DetailOutletResponseCopyWith(DetailOutletResponse value,
          $Res Function(DetailOutletResponse) then) =
      _$DetailOutletResponseCopyWithImpl<$Res>;
  $Res call(
      {DetailOutletStatusResponse response,
      DetailOutletDataResponse data,
      DetailOutletMetaResponse meta});

  $DetailOutletStatusResponseCopyWith<$Res> get response;
  $DetailOutletDataResponseCopyWith<$Res> get data;
  $DetailOutletMetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$DetailOutletResponseCopyWithImpl<$Res>
    implements $DetailOutletResponseCopyWith<$Res> {
  _$DetailOutletResponseCopyWithImpl(this._value, this._then);

  final DetailOutletResponse _value;
  // ignore: unused_field
  final $Res Function(DetailOutletResponse) _then;

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
              as DetailOutletStatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailOutletDataResponse,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DetailOutletMetaResponse,
    ));
  }

  @override
  $DetailOutletStatusResponseCopyWith<$Res> get response {
    return $DetailOutletStatusResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }

  @override
  $DetailOutletDataResponseCopyWith<$Res> get data {
    return $DetailOutletDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $DetailOutletMetaResponseCopyWith<$Res> get meta {
    return $DetailOutletMetaResponseCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$DetailOutletResponseCopyWith<$Res>
    implements $DetailOutletResponseCopyWith<$Res> {
  factory _$DetailOutletResponseCopyWith(_DetailOutletResponse value,
          $Res Function(_DetailOutletResponse) then) =
      __$DetailOutletResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {DetailOutletStatusResponse response,
      DetailOutletDataResponse data,
      DetailOutletMetaResponse meta});

  @override
  $DetailOutletStatusResponseCopyWith<$Res> get response;
  @override
  $DetailOutletDataResponseCopyWith<$Res> get data;
  @override
  $DetailOutletMetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$DetailOutletResponseCopyWithImpl<$Res>
    extends _$DetailOutletResponseCopyWithImpl<$Res>
    implements _$DetailOutletResponseCopyWith<$Res> {
  __$DetailOutletResponseCopyWithImpl(
      _DetailOutletResponse _value, $Res Function(_DetailOutletResponse) _then)
      : super(_value, (v) => _then(v as _DetailOutletResponse));

  @override
  _DetailOutletResponse get _value => super._value as _DetailOutletResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_DetailOutletResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as DetailOutletStatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailOutletDataResponse,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as DetailOutletMetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailOutletResponse implements _DetailOutletResponse {
  const _$_DetailOutletResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_DetailOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailOutletResponseFromJson(json);

  @override
  final DetailOutletStatusResponse response;
  @override
  final DetailOutletDataResponse data;
  @override
  final DetailOutletMetaResponse meta;

  @override
  String toString() {
    return 'DetailOutletResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailOutletResponse &&
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
  _$DetailOutletResponseCopyWith<_DetailOutletResponse> get copyWith =>
      __$DetailOutletResponseCopyWithImpl<_DetailOutletResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailOutletResponseToJson(this);
  }
}

abstract class _DetailOutletResponse implements DetailOutletResponse {
  const factory _DetailOutletResponse(
      {required DetailOutletStatusResponse response,
      required DetailOutletDataResponse data,
      required DetailOutletMetaResponse meta}) = _$_DetailOutletResponse;

  factory _DetailOutletResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailOutletResponse.fromJson;

  @override
  DetailOutletStatusResponse get response => throw _privateConstructorUsedError;
  @override
  DetailOutletDataResponse get data => throw _privateConstructorUsedError;
  @override
  DetailOutletMetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailOutletResponseCopyWith<_DetailOutletResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailOutletDataResponse _$DetailOutletDataResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailOutletDataResponse.fromJson(json);
}

/// @nodoc
class _$DetailOutletDataResponseTearOff {
  const _$DetailOutletDataResponseTearOff();

  _DetailOutletDataResponse call(
      {required String endpointName,
      required String id,
      required String name,
      required String city,
      required List<String> salesTypes,
      required bool isOpen,
      required dynamic logo,
      required String merchantId,
      required String merchantName,
      required dynamic merchantLogo,
      required String callbackUrl,
      required String description,
      required String address,
      required List<String> location,
      required String ownerPhone,
      required String poCutoff,
      required int rating,
      required int totalReview,
      required DetailOutletDataLastUpdateResponse lastUpdate,
      required String merchantCategory}) {
    return _DetailOutletDataResponse(
      endpointName: endpointName,
      id: id,
      name: name,
      city: city,
      salesTypes: salesTypes,
      isOpen: isOpen,
      logo: logo,
      merchantId: merchantId,
      merchantName: merchantName,
      merchantLogo: merchantLogo,
      callbackUrl: callbackUrl,
      description: description,
      address: address,
      location: location,
      ownerPhone: ownerPhone,
      poCutoff: poCutoff,
      rating: rating,
      totalReview: totalReview,
      lastUpdate: lastUpdate,
      merchantCategory: merchantCategory,
    );
  }

  DetailOutletDataResponse fromJson(Map<String, Object> json) {
    return DetailOutletDataResponse.fromJson(json);
  }
}

/// @nodoc
const $DetailOutletDataResponse = _$DetailOutletDataResponseTearOff();

/// @nodoc
mixin _$DetailOutletDataResponse {
  String get endpointName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  List<String> get salesTypes => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  dynamic get logo => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  String get merchantName => throw _privateConstructorUsedError;
  dynamic get merchantLogo => throw _privateConstructorUsedError;
  String get callbackUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<String> get location => throw _privateConstructorUsedError;
  String get ownerPhone => throw _privateConstructorUsedError;
  String get poCutoff => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  int get totalReview => throw _privateConstructorUsedError;
  DetailOutletDataLastUpdateResponse get lastUpdate =>
      throw _privateConstructorUsedError;
  String get merchantCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailOutletDataResponseCopyWith<DetailOutletDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailOutletDataResponseCopyWith<$Res> {
  factory $DetailOutletDataResponseCopyWith(DetailOutletDataResponse value,
          $Res Function(DetailOutletDataResponse) then) =
      _$DetailOutletDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String endpointName,
      String id,
      String name,
      String city,
      List<String> salesTypes,
      bool isOpen,
      dynamic logo,
      String merchantId,
      String merchantName,
      dynamic merchantLogo,
      String callbackUrl,
      String description,
      String address,
      List<String> location,
      String ownerPhone,
      String poCutoff,
      int rating,
      int totalReview,
      DetailOutletDataLastUpdateResponse lastUpdate,
      String merchantCategory});

  $DetailOutletDataLastUpdateResponseCopyWith<$Res> get lastUpdate;
}

/// @nodoc
class _$DetailOutletDataResponseCopyWithImpl<$Res>
    implements $DetailOutletDataResponseCopyWith<$Res> {
  _$DetailOutletDataResponseCopyWithImpl(this._value, this._then);

  final DetailOutletDataResponse _value;
  // ignore: unused_field
  final $Res Function(DetailOutletDataResponse) _then;

  @override
  $Res call({
    Object? endpointName = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? salesTypes = freezed,
    Object? isOpen = freezed,
    Object? logo = freezed,
    Object? merchantId = freezed,
    Object? merchantName = freezed,
    Object? merchantLogo = freezed,
    Object? callbackUrl = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? ownerPhone = freezed,
    Object? poCutoff = freezed,
    Object? rating = freezed,
    Object? totalReview = freezed,
    Object? lastUpdate = freezed,
    Object? merchantCategory = freezed,
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
              as dynamic,
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
              as dynamic,
      callbackUrl: callbackUrl == freezed
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ownerPhone: ownerPhone == freezed
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      poCutoff: poCutoff == freezed
          ? _value.poCutoff
          : poCutoff // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      totalReview: totalReview == freezed
          ? _value.totalReview
          : totalReview // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DetailOutletDataLastUpdateResponse,
      merchantCategory: merchantCategory == freezed
          ? _value.merchantCategory
          : merchantCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DetailOutletDataLastUpdateResponseCopyWith<$Res> get lastUpdate {
    return $DetailOutletDataLastUpdateResponseCopyWith<$Res>(_value.lastUpdate,
        (value) {
      return _then(_value.copyWith(lastUpdate: value));
    });
  }
}

/// @nodoc
abstract class _$DetailOutletDataResponseCopyWith<$Res>
    implements $DetailOutletDataResponseCopyWith<$Res> {
  factory _$DetailOutletDataResponseCopyWith(_DetailOutletDataResponse value,
          $Res Function(_DetailOutletDataResponse) then) =
      __$DetailOutletDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String endpointName,
      String id,
      String name,
      String city,
      List<String> salesTypes,
      bool isOpen,
      dynamic logo,
      String merchantId,
      String merchantName,
      dynamic merchantLogo,
      String callbackUrl,
      String description,
      String address,
      List<String> location,
      String ownerPhone,
      String poCutoff,
      int rating,
      int totalReview,
      DetailOutletDataLastUpdateResponse lastUpdate,
      String merchantCategory});

  @override
  $DetailOutletDataLastUpdateResponseCopyWith<$Res> get lastUpdate;
}

/// @nodoc
class __$DetailOutletDataResponseCopyWithImpl<$Res>
    extends _$DetailOutletDataResponseCopyWithImpl<$Res>
    implements _$DetailOutletDataResponseCopyWith<$Res> {
  __$DetailOutletDataResponseCopyWithImpl(_DetailOutletDataResponse _value,
      $Res Function(_DetailOutletDataResponse) _then)
      : super(_value, (v) => _then(v as _DetailOutletDataResponse));

  @override
  _DetailOutletDataResponse get _value =>
      super._value as _DetailOutletDataResponse;

  @override
  $Res call({
    Object? endpointName = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? city = freezed,
    Object? salesTypes = freezed,
    Object? isOpen = freezed,
    Object? logo = freezed,
    Object? merchantId = freezed,
    Object? merchantName = freezed,
    Object? merchantLogo = freezed,
    Object? callbackUrl = freezed,
    Object? description = freezed,
    Object? address = freezed,
    Object? location = freezed,
    Object? ownerPhone = freezed,
    Object? poCutoff = freezed,
    Object? rating = freezed,
    Object? totalReview = freezed,
    Object? lastUpdate = freezed,
    Object? merchantCategory = freezed,
  }) {
    return _then(_DetailOutletDataResponse(
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
              as dynamic,
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
              as dynamic,
      callbackUrl: callbackUrl == freezed
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ownerPhone: ownerPhone == freezed
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      poCutoff: poCutoff == freezed
          ? _value.poCutoff
          : poCutoff // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      totalReview: totalReview == freezed
          ? _value.totalReview
          : totalReview // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdate: lastUpdate == freezed
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DetailOutletDataLastUpdateResponse,
      merchantCategory: merchantCategory == freezed
          ? _value.merchantCategory
          : merchantCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailOutletDataResponse implements _DetailOutletDataResponse {
  const _$_DetailOutletDataResponse(
      {required this.endpointName,
      required this.id,
      required this.name,
      required this.city,
      required this.salesTypes,
      required this.isOpen,
      required this.logo,
      required this.merchantId,
      required this.merchantName,
      required this.merchantLogo,
      required this.callbackUrl,
      required this.description,
      required this.address,
      required this.location,
      required this.ownerPhone,
      required this.poCutoff,
      required this.rating,
      required this.totalReview,
      required this.lastUpdate,
      required this.merchantCategory});

  factory _$_DetailOutletDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailOutletDataResponseFromJson(json);

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
  final dynamic logo;
  @override
  final String merchantId;
  @override
  final String merchantName;
  @override
  final dynamic merchantLogo;
  @override
  final String callbackUrl;
  @override
  final String description;
  @override
  final String address;
  @override
  final List<String> location;
  @override
  final String ownerPhone;
  @override
  final String poCutoff;
  @override
  final int rating;
  @override
  final int totalReview;
  @override
  final DetailOutletDataLastUpdateResponse lastUpdate;
  @override
  final String merchantCategory;

  @override
  String toString() {
    return 'DetailOutletDataResponse(endpointName: $endpointName, id: $id, name: $name, city: $city, salesTypes: $salesTypes, isOpen: $isOpen, logo: $logo, merchantId: $merchantId, merchantName: $merchantName, merchantLogo: $merchantLogo, callbackUrl: $callbackUrl, description: $description, address: $address, location: $location, ownerPhone: $ownerPhone, poCutoff: $poCutoff, rating: $rating, totalReview: $totalReview, lastUpdate: $lastUpdate, merchantCategory: $merchantCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailOutletDataResponse &&
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
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.ownerPhone, ownerPhone) ||
                const DeepCollectionEquality()
                    .equals(other.ownerPhone, ownerPhone)) &&
            (identical(other.poCutoff, poCutoff) ||
                const DeepCollectionEquality()
                    .equals(other.poCutoff, poCutoff)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.totalReview, totalReview) ||
                const DeepCollectionEquality()
                    .equals(other.totalReview, totalReview)) &&
            (identical(other.lastUpdate, lastUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdate, lastUpdate)) &&
            (identical(other.merchantCategory, merchantCategory) ||
                const DeepCollectionEquality()
                    .equals(other.merchantCategory, merchantCategory)));
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
      const DeepCollectionEquality().hash(merchantId) ^
      const DeepCollectionEquality().hash(merchantName) ^
      const DeepCollectionEquality().hash(merchantLogo) ^
      const DeepCollectionEquality().hash(callbackUrl) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(ownerPhone) ^
      const DeepCollectionEquality().hash(poCutoff) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(totalReview) ^
      const DeepCollectionEquality().hash(lastUpdate) ^
      const DeepCollectionEquality().hash(merchantCategory);

  @JsonKey(ignore: true)
  @override
  _$DetailOutletDataResponseCopyWith<_DetailOutletDataResponse> get copyWith =>
      __$DetailOutletDataResponseCopyWithImpl<_DetailOutletDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailOutletDataResponseToJson(this);
  }
}

abstract class _DetailOutletDataResponse implements DetailOutletDataResponse {
  const factory _DetailOutletDataResponse(
      {required String endpointName,
      required String id,
      required String name,
      required String city,
      required List<String> salesTypes,
      required bool isOpen,
      required dynamic logo,
      required String merchantId,
      required String merchantName,
      required dynamic merchantLogo,
      required String callbackUrl,
      required String description,
      required String address,
      required List<String> location,
      required String ownerPhone,
      required String poCutoff,
      required int rating,
      required int totalReview,
      required DetailOutletDataLastUpdateResponse lastUpdate,
      required String merchantCategory}) = _$_DetailOutletDataResponse;

  factory _DetailOutletDataResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailOutletDataResponse.fromJson;

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
  dynamic get logo => throw _privateConstructorUsedError;
  @override
  String get merchantId => throw _privateConstructorUsedError;
  @override
  String get merchantName => throw _privateConstructorUsedError;
  @override
  dynamic get merchantLogo => throw _privateConstructorUsedError;
  @override
  String get callbackUrl => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  List<String> get location => throw _privateConstructorUsedError;
  @override
  String get ownerPhone => throw _privateConstructorUsedError;
  @override
  String get poCutoff => throw _privateConstructorUsedError;
  @override
  int get rating => throw _privateConstructorUsedError;
  @override
  int get totalReview => throw _privateConstructorUsedError;
  @override
  DetailOutletDataLastUpdateResponse get lastUpdate =>
      throw _privateConstructorUsedError;
  @override
  String get merchantCategory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailOutletDataResponseCopyWith<_DetailOutletDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailOutletDataLastUpdateResponse _$DetailOutletDataLastUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailOutletDataLastUpdateResponse.fromJson(json);
}

/// @nodoc
class _$DetailOutletDataLastUpdateResponseTearOff {
  const _$DetailOutletDataLastUpdateResponseTearOff();

  _DetailOutletDataLastUpdateResponse call(
      {required DateTime time, required String literal}) {
    return _DetailOutletDataLastUpdateResponse(
      time: time,
      literal: literal,
    );
  }

  DetailOutletDataLastUpdateResponse fromJson(Map<String, Object> json) {
    return DetailOutletDataLastUpdateResponse.fromJson(json);
  }
}

/// @nodoc
const $DetailOutletDataLastUpdateResponse =
    _$DetailOutletDataLastUpdateResponseTearOff();

/// @nodoc
mixin _$DetailOutletDataLastUpdateResponse {
  DateTime get time => throw _privateConstructorUsedError;
  String get literal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailOutletDataLastUpdateResponseCopyWith<
          DetailOutletDataLastUpdateResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailOutletDataLastUpdateResponseCopyWith<$Res> {
  factory $DetailOutletDataLastUpdateResponseCopyWith(
          DetailOutletDataLastUpdateResponse value,
          $Res Function(DetailOutletDataLastUpdateResponse) then) =
      _$DetailOutletDataLastUpdateResponseCopyWithImpl<$Res>;
  $Res call({DateTime time, String literal});
}

/// @nodoc
class _$DetailOutletDataLastUpdateResponseCopyWithImpl<$Res>
    implements $DetailOutletDataLastUpdateResponseCopyWith<$Res> {
  _$DetailOutletDataLastUpdateResponseCopyWithImpl(this._value, this._then);

  final DetailOutletDataLastUpdateResponse _value;
  // ignore: unused_field
  final $Res Function(DetailOutletDataLastUpdateResponse) _then;

  @override
  $Res call({
    Object? time = freezed,
    Object? literal = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      literal: literal == freezed
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DetailOutletDataLastUpdateResponseCopyWith<$Res>
    implements $DetailOutletDataLastUpdateResponseCopyWith<$Res> {
  factory _$DetailOutletDataLastUpdateResponseCopyWith(
          _DetailOutletDataLastUpdateResponse value,
          $Res Function(_DetailOutletDataLastUpdateResponse) then) =
      __$DetailOutletDataLastUpdateResponseCopyWithImpl<$Res>;
  @override
  $Res call({DateTime time, String literal});
}

/// @nodoc
class __$DetailOutletDataLastUpdateResponseCopyWithImpl<$Res>
    extends _$DetailOutletDataLastUpdateResponseCopyWithImpl<$Res>
    implements _$DetailOutletDataLastUpdateResponseCopyWith<$Res> {
  __$DetailOutletDataLastUpdateResponseCopyWithImpl(
      _DetailOutletDataLastUpdateResponse _value,
      $Res Function(_DetailOutletDataLastUpdateResponse) _then)
      : super(_value, (v) => _then(v as _DetailOutletDataLastUpdateResponse));

  @override
  _DetailOutletDataLastUpdateResponse get _value =>
      super._value as _DetailOutletDataLastUpdateResponse;

  @override
  $Res call({
    Object? time = freezed,
    Object? literal = freezed,
  }) {
    return _then(_DetailOutletDataLastUpdateResponse(
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      literal: literal == freezed
          ? _value.literal
          : literal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailOutletDataLastUpdateResponse
    implements _DetailOutletDataLastUpdateResponse {
  const _$_DetailOutletDataLastUpdateResponse(
      {required this.time, required this.literal});

  factory _$_DetailOutletDataLastUpdateResponse.fromJson(
          Map<String, dynamic> json) =>
      _$_$_DetailOutletDataLastUpdateResponseFromJson(json);

  @override
  final DateTime time;
  @override
  final String literal;

  @override
  String toString() {
    return 'DetailOutletDataLastUpdateResponse(time: $time, literal: $literal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailOutletDataLastUpdateResponse &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.literal, literal) ||
                const DeepCollectionEquality().equals(other.literal, literal)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(literal);

  @JsonKey(ignore: true)
  @override
  _$DetailOutletDataLastUpdateResponseCopyWith<
          _DetailOutletDataLastUpdateResponse>
      get copyWith => __$DetailOutletDataLastUpdateResponseCopyWithImpl<
          _DetailOutletDataLastUpdateResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailOutletDataLastUpdateResponseToJson(this);
  }
}

abstract class _DetailOutletDataLastUpdateResponse
    implements DetailOutletDataLastUpdateResponse {
  const factory _DetailOutletDataLastUpdateResponse(
      {required DateTime time,
      required String literal}) = _$_DetailOutletDataLastUpdateResponse;

  factory _DetailOutletDataLastUpdateResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DetailOutletDataLastUpdateResponse.fromJson;

  @override
  DateTime get time => throw _privateConstructorUsedError;
  @override
  String get literal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailOutletDataLastUpdateResponseCopyWith<
          _DetailOutletDataLastUpdateResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DetailOutletMetaResponse _$DetailOutletMetaResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailOutletMetaResponse.fromJson(json);
}

/// @nodoc
class _$DetailOutletMetaResponseTearOff {
  const _$DetailOutletMetaResponseTearOff();

  _DetailOutletMetaResponse call({required String version}) {
    return _DetailOutletMetaResponse(
      version: version,
    );
  }

  DetailOutletMetaResponse fromJson(Map<String, Object> json) {
    return DetailOutletMetaResponse.fromJson(json);
  }
}

/// @nodoc
const $DetailOutletMetaResponse = _$DetailOutletMetaResponseTearOff();

/// @nodoc
mixin _$DetailOutletMetaResponse {
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailOutletMetaResponseCopyWith<DetailOutletMetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailOutletMetaResponseCopyWith<$Res> {
  factory $DetailOutletMetaResponseCopyWith(DetailOutletMetaResponse value,
          $Res Function(DetailOutletMetaResponse) then) =
      _$DetailOutletMetaResponseCopyWithImpl<$Res>;
  $Res call({String version});
}

/// @nodoc
class _$DetailOutletMetaResponseCopyWithImpl<$Res>
    implements $DetailOutletMetaResponseCopyWith<$Res> {
  _$DetailOutletMetaResponseCopyWithImpl(this._value, this._then);

  final DetailOutletMetaResponse _value;
  // ignore: unused_field
  final $Res Function(DetailOutletMetaResponse) _then;

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
abstract class _$DetailOutletMetaResponseCopyWith<$Res>
    implements $DetailOutletMetaResponseCopyWith<$Res> {
  factory _$DetailOutletMetaResponseCopyWith(_DetailOutletMetaResponse value,
          $Res Function(_DetailOutletMetaResponse) then) =
      __$DetailOutletMetaResponseCopyWithImpl<$Res>;
  @override
  $Res call({String version});
}

/// @nodoc
class __$DetailOutletMetaResponseCopyWithImpl<$Res>
    extends _$DetailOutletMetaResponseCopyWithImpl<$Res>
    implements _$DetailOutletMetaResponseCopyWith<$Res> {
  __$DetailOutletMetaResponseCopyWithImpl(_DetailOutletMetaResponse _value,
      $Res Function(_DetailOutletMetaResponse) _then)
      : super(_value, (v) => _then(v as _DetailOutletMetaResponse));

  @override
  _DetailOutletMetaResponse get _value =>
      super._value as _DetailOutletMetaResponse;

  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_DetailOutletMetaResponse(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailOutletMetaResponse implements _DetailOutletMetaResponse {
  const _$_DetailOutletMetaResponse({required this.version});

  factory _$_DetailOutletMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailOutletMetaResponseFromJson(json);

  @override
  final String version;

  @override
  String toString() {
    return 'DetailOutletMetaResponse(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailOutletMetaResponse &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$DetailOutletMetaResponseCopyWith<_DetailOutletMetaResponse> get copyWith =>
      __$DetailOutletMetaResponseCopyWithImpl<_DetailOutletMetaResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailOutletMetaResponseToJson(this);
  }
}

abstract class _DetailOutletMetaResponse implements DetailOutletMetaResponse {
  const factory _DetailOutletMetaResponse({required String version}) =
      _$_DetailOutletMetaResponse;

  factory _DetailOutletMetaResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailOutletMetaResponse.fromJson;

  @override
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailOutletMetaResponseCopyWith<_DetailOutletMetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailOutletStatusResponse _$DetailOutletStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailOutletStatusResponse.fromJson(json);
}

/// @nodoc
class _$DetailOutletStatusResponseTearOff {
  const _$DetailOutletStatusResponseTearOff();

  _DetailOutletStatusResponse call(
      {required String code, required String status, required String message}) {
    return _DetailOutletStatusResponse(
      code: code,
      status: status,
      message: message,
    );
  }

  DetailOutletStatusResponse fromJson(Map<String, Object> json) {
    return DetailOutletStatusResponse.fromJson(json);
  }
}

/// @nodoc
const $DetailOutletStatusResponse = _$DetailOutletStatusResponseTearOff();

/// @nodoc
mixin _$DetailOutletStatusResponse {
  String get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailOutletStatusResponseCopyWith<DetailOutletStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailOutletStatusResponseCopyWith<$Res> {
  factory $DetailOutletStatusResponseCopyWith(DetailOutletStatusResponse value,
          $Res Function(DetailOutletStatusResponse) then) =
      _$DetailOutletStatusResponseCopyWithImpl<$Res>;
  $Res call({String code, String status, String message});
}

/// @nodoc
class _$DetailOutletStatusResponseCopyWithImpl<$Res>
    implements $DetailOutletStatusResponseCopyWith<$Res> {
  _$DetailOutletStatusResponseCopyWithImpl(this._value, this._then);

  final DetailOutletStatusResponse _value;
  // ignore: unused_field
  final $Res Function(DetailOutletStatusResponse) _then;

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
abstract class _$DetailOutletStatusResponseCopyWith<$Res>
    implements $DetailOutletStatusResponseCopyWith<$Res> {
  factory _$DetailOutletStatusResponseCopyWith(
          _DetailOutletStatusResponse value,
          $Res Function(_DetailOutletStatusResponse) then) =
      __$DetailOutletStatusResponseCopyWithImpl<$Res>;
  @override
  $Res call({String code, String status, String message});
}

/// @nodoc
class __$DetailOutletStatusResponseCopyWithImpl<$Res>
    extends _$DetailOutletStatusResponseCopyWithImpl<$Res>
    implements _$DetailOutletStatusResponseCopyWith<$Res> {
  __$DetailOutletStatusResponseCopyWithImpl(_DetailOutletStatusResponse _value,
      $Res Function(_DetailOutletStatusResponse) _then)
      : super(_value, (v) => _then(v as _DetailOutletStatusResponse));

  @override
  _DetailOutletStatusResponse get _value =>
      super._value as _DetailOutletStatusResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_DetailOutletStatusResponse(
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
class _$_DetailOutletStatusResponse implements _DetailOutletStatusResponse {
  const _$_DetailOutletStatusResponse(
      {required this.code, required this.status, required this.message});

  factory _$_DetailOutletStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailOutletStatusResponseFromJson(json);

  @override
  final String code;
  @override
  final String status;
  @override
  final String message;

  @override
  String toString() {
    return 'DetailOutletStatusResponse(code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailOutletStatusResponse &&
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
  _$DetailOutletStatusResponseCopyWith<_DetailOutletStatusResponse>
      get copyWith => __$DetailOutletStatusResponseCopyWithImpl<
          _DetailOutletStatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailOutletStatusResponseToJson(this);
  }
}

abstract class _DetailOutletStatusResponse
    implements DetailOutletStatusResponse {
  const factory _DetailOutletStatusResponse(
      {required String code,
      required String status,
      required String message}) = _$_DetailOutletStatusResponse;

  factory _DetailOutletStatusResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailOutletStatusResponse.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailOutletStatusResponseCopyWith<_DetailOutletStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}
