// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_outlet_response.dart';

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
      {required StatusResponse response,
      required DetailOutletDataResponse data,
      required MetaResponse meta}) {
    return _DetailOutletResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  DetailOutletResponse fromJson(Map<String, Object?> json) {
    return DetailOutletResponse.fromJson(json);
  }
}

/// @nodoc
const $DetailOutletResponse = _$DetailOutletResponseTearOff();

/// @nodoc
mixin _$DetailOutletResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  DetailOutletDataResponse get data => throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

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
      {StatusResponse response,
      DetailOutletDataResponse data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $DetailOutletDataResponseCopyWith<$Res> get data;
  $MetaResponseCopyWith<$Res> get meta;
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
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailOutletDataResponse,
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
  $DetailOutletDataResponseCopyWith<$Res> get data {
    return $DetailOutletDataResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
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
abstract class _$DetailOutletResponseCopyWith<$Res>
    implements $DetailOutletResponseCopyWith<$Res> {
  factory _$DetailOutletResponseCopyWith(_DetailOutletResponse value,
          $Res Function(_DetailOutletResponse) then) =
      __$DetailOutletResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      DetailOutletDataResponse data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $DetailOutletDataResponseCopyWith<$Res> get data;
  @override
  $MetaResponseCopyWith<$Res> get meta;
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
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DetailOutletDataResponse,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailOutletResponse implements _DetailOutletResponse {
  const _$_DetailOutletResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_DetailOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DetailOutletResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final DetailOutletDataResponse data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'DetailOutletResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailOutletResponse &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$DetailOutletResponseCopyWith<_DetailOutletResponse> get copyWith =>
      __$DetailOutletResponseCopyWithImpl<_DetailOutletResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailOutletResponseToJson(this);
  }
}

abstract class _DetailOutletResponse implements DetailOutletResponse {
  const factory _DetailOutletResponse(
      {required StatusResponse response,
      required DetailOutletDataResponse data,
      required MetaResponse meta}) = _$_DetailOutletResponse;

  factory _DetailOutletResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailOutletResponse.fromJson;

  @override
  StatusResponse get response;
  @override
  DetailOutletDataResponse get data;
  @override
  MetaResponse get meta;
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
      required String? city,
      required List<String> salesTypes,
      required bool isOpen,
      required dynamic logo,
      required String? merchantId,
      required String? merchantName,
      required dynamic merchantLogo,
      required String? callbackUrl,
      required String? description,
      required String? address,
      required List<String> location,
      required String? ownerPhone,
      required String? poCutoff,
      required num rating,
      required int totalReview,
      required DetailOutletDataLastUpdateResponse lastUpdate,
      required String? merchantCategory}) {
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

  DetailOutletDataResponse fromJson(Map<String, Object?> json) {
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
  String? get city => throw _privateConstructorUsedError;
  List<String> get salesTypes => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  dynamic get logo => throw _privateConstructorUsedError;
  String? get merchantId => throw _privateConstructorUsedError;
  String? get merchantName => throw _privateConstructorUsedError;
  dynamic get merchantLogo => throw _privateConstructorUsedError;
  String? get callbackUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  List<String> get location => throw _privateConstructorUsedError;
  String? get ownerPhone => throw _privateConstructorUsedError;
  String? get poCutoff => throw _privateConstructorUsedError;
  num get rating => throw _privateConstructorUsedError;
  int get totalReview => throw _privateConstructorUsedError;
  DetailOutletDataLastUpdateResponse get lastUpdate =>
      throw _privateConstructorUsedError;
  String? get merchantCategory => throw _privateConstructorUsedError;

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
      String? city,
      List<String> salesTypes,
      bool isOpen,
      dynamic logo,
      String? merchantId,
      String? merchantName,
      dynamic merchantLogo,
      String? callbackUrl,
      String? description,
      String? address,
      List<String> location,
      String? ownerPhone,
      String? poCutoff,
      num rating,
      int totalReview,
      DetailOutletDataLastUpdateResponse lastUpdate,
      String? merchantCategory});

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
              as String?,
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
              as String?,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantLogo: merchantLogo == freezed
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      callbackUrl: callbackUrl == freezed
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ownerPhone: ownerPhone == freezed
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      poCutoff: poCutoff == freezed
          ? _value.poCutoff
          : poCutoff // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
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
              as String?,
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
      String? city,
      List<String> salesTypes,
      bool isOpen,
      dynamic logo,
      String? merchantId,
      String? merchantName,
      dynamic merchantLogo,
      String? callbackUrl,
      String? description,
      String? address,
      List<String> location,
      String? ownerPhone,
      String? poCutoff,
      num rating,
      int totalReview,
      DetailOutletDataLastUpdateResponse lastUpdate,
      String? merchantCategory});

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
              as String?,
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
              as String?,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantLogo: merchantLogo == freezed
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      callbackUrl: callbackUrl == freezed
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ownerPhone: ownerPhone == freezed
          ? _value.ownerPhone
          : ownerPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      poCutoff: poCutoff == freezed
          ? _value.poCutoff
          : poCutoff // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num,
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
              as String?,
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
      _$$_DetailOutletDataResponseFromJson(json);

  @override
  final String endpointName;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? city;
  @override
  final List<String> salesTypes;
  @override
  final bool isOpen;
  @override
  final dynamic logo;
  @override
  final String? merchantId;
  @override
  final String? merchantName;
  @override
  final dynamic merchantLogo;
  @override
  final String? callbackUrl;
  @override
  final String? description;
  @override
  final String? address;
  @override
  final List<String> location;
  @override
  final String? ownerPhone;
  @override
  final String? poCutoff;
  @override
  final num rating;
  @override
  final int totalReview;
  @override
  final DetailOutletDataLastUpdateResponse lastUpdate;
  @override
  final String? merchantCategory;

  @override
  String toString() {
    return 'DetailOutletDataResponse(endpointName: $endpointName, id: $id, name: $name, city: $city, salesTypes: $salesTypes, isOpen: $isOpen, logo: $logo, merchantId: $merchantId, merchantName: $merchantName, merchantLogo: $merchantLogo, callbackUrl: $callbackUrl, description: $description, address: $address, location: $location, ownerPhone: $ownerPhone, poCutoff: $poCutoff, rating: $rating, totalReview: $totalReview, lastUpdate: $lastUpdate, merchantCategory: $merchantCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailOutletDataResponse &&
            const DeepCollectionEquality()
                .equals(other.endpointName, endpointName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.salesTypes, salesTypes) &&
            const DeepCollectionEquality().equals(other.isOpen, isOpen) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality()
                .equals(other.merchantId, merchantId) &&
            const DeepCollectionEquality()
                .equals(other.merchantName, merchantName) &&
            const DeepCollectionEquality()
                .equals(other.merchantLogo, merchantLogo) &&
            const DeepCollectionEquality()
                .equals(other.callbackUrl, callbackUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.ownerPhone, ownerPhone) &&
            const DeepCollectionEquality().equals(other.poCutoff, poCutoff) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.totalReview, totalReview) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdate, lastUpdate) &&
            const DeepCollectionEquality()
                .equals(other.merchantCategory, merchantCategory));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(endpointName),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(salesTypes),
        const DeepCollectionEquality().hash(isOpen),
        const DeepCollectionEquality().hash(logo),
        const DeepCollectionEquality().hash(merchantId),
        const DeepCollectionEquality().hash(merchantName),
        const DeepCollectionEquality().hash(merchantLogo),
        const DeepCollectionEquality().hash(callbackUrl),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(ownerPhone),
        const DeepCollectionEquality().hash(poCutoff),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(totalReview),
        const DeepCollectionEquality().hash(lastUpdate),
        const DeepCollectionEquality().hash(merchantCategory)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DetailOutletDataResponseCopyWith<_DetailOutletDataResponse> get copyWith =>
      __$DetailOutletDataResponseCopyWithImpl<_DetailOutletDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailOutletDataResponseToJson(this);
  }
}

abstract class _DetailOutletDataResponse implements DetailOutletDataResponse {
  const factory _DetailOutletDataResponse(
      {required String endpointName,
      required String id,
      required String name,
      required String? city,
      required List<String> salesTypes,
      required bool isOpen,
      required dynamic logo,
      required String? merchantId,
      required String? merchantName,
      required dynamic merchantLogo,
      required String? callbackUrl,
      required String? description,
      required String? address,
      required List<String> location,
      required String? ownerPhone,
      required String? poCutoff,
      required num rating,
      required int totalReview,
      required DetailOutletDataLastUpdateResponse lastUpdate,
      required String? merchantCategory}) = _$_DetailOutletDataResponse;

  factory _DetailOutletDataResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailOutletDataResponse.fromJson;

  @override
  String get endpointName;
  @override
  String get id;
  @override
  String get name;
  @override
  String? get city;
  @override
  List<String> get salesTypes;
  @override
  bool get isOpen;
  @override
  dynamic get logo;
  @override
  String? get merchantId;
  @override
  String? get merchantName;
  @override
  dynamic get merchantLogo;
  @override
  String? get callbackUrl;
  @override
  String? get description;
  @override
  String? get address;
  @override
  List<String> get location;
  @override
  String? get ownerPhone;
  @override
  String? get poCutoff;
  @override
  num get rating;
  @override
  int get totalReview;
  @override
  DetailOutletDataLastUpdateResponse get lastUpdate;
  @override
  String? get merchantCategory;
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
      {required String time, required String literal}) {
    return _DetailOutletDataLastUpdateResponse(
      time: time,
      literal: literal,
    );
  }

  DetailOutletDataLastUpdateResponse fromJson(Map<String, Object?> json) {
    return DetailOutletDataLastUpdateResponse.fromJson(json);
  }
}

/// @nodoc
const $DetailOutletDataLastUpdateResponse =
    _$DetailOutletDataLastUpdateResponseTearOff();

/// @nodoc
mixin _$DetailOutletDataLastUpdateResponse {
  String get time => throw _privateConstructorUsedError;
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
  $Res call({String time, String literal});
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
              as String,
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
  $Res call({String time, String literal});
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
              as String,
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
      _$$_DetailOutletDataLastUpdateResponseFromJson(json);

  @override
  final String time;
  @override
  final String literal;

  @override
  String toString() {
    return 'DetailOutletDataLastUpdateResponse(time: $time, literal: $literal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailOutletDataLastUpdateResponse &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.literal, literal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(literal));

  @JsonKey(ignore: true)
  @override
  _$DetailOutletDataLastUpdateResponseCopyWith<
          _DetailOutletDataLastUpdateResponse>
      get copyWith => __$DetailOutletDataLastUpdateResponseCopyWithImpl<
          _DetailOutletDataLastUpdateResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailOutletDataLastUpdateResponseToJson(this);
  }
}

abstract class _DetailOutletDataLastUpdateResponse
    implements DetailOutletDataLastUpdateResponse {
  const factory _DetailOutletDataLastUpdateResponse(
      {required String time,
      required String literal}) = _$_DetailOutletDataLastUpdateResponse;

  factory _DetailOutletDataLastUpdateResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DetailOutletDataLastUpdateResponse.fromJson;

  @override
  String get time;
  @override
  String get literal;
  @override
  @JsonKey(ignore: true)
  _$DetailOutletDataLastUpdateResponseCopyWith<
          _DetailOutletDataLastUpdateResponse>
      get copyWith => throw _privateConstructorUsedError;
}
