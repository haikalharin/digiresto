// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'digi_discount_outlet_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DigiDiscountOutletResponse _$DigiDiscountOutletResponseFromJson(
    Map<String, dynamic> json) {
  return _DigiDiscountOutletResponse.fromJson(json);
}

/// @nodoc
class _$DigiDiscountOutletResponseTearOff {
  const _$DigiDiscountOutletResponseTearOff();

  _DigiDiscountOutletResponse call(
      {required StatusResponse response,
      required List<DigiDiscountOutletDataResponse> data,
      required MetaResponse meta}) {
    return _DigiDiscountOutletResponse(
      response: response,
      data: data,
      meta: meta,
    );
  }

  DigiDiscountOutletResponse fromJson(Map<String, Object> json) {
    return DigiDiscountOutletResponse.fromJson(json);
  }
}

/// @nodoc
const $DigiDiscountOutletResponse = _$DigiDiscountOutletResponseTearOff();

/// @nodoc
mixin _$DigiDiscountOutletResponse {
  StatusResponse get response => throw _privateConstructorUsedError;
  List<DigiDiscountOutletDataResponse> get data =>
      throw _privateConstructorUsedError;
  MetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigiDiscountOutletResponseCopyWith<DigiDiscountOutletResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigiDiscountOutletResponseCopyWith<$Res> {
  factory $DigiDiscountOutletResponseCopyWith(DigiDiscountOutletResponse value,
          $Res Function(DigiDiscountOutletResponse) then) =
      _$DigiDiscountOutletResponseCopyWithImpl<$Res>;
  $Res call(
      {StatusResponse response,
      List<DigiDiscountOutletDataResponse> data,
      MetaResponse meta});

  $StatusResponseCopyWith<$Res> get response;
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$DigiDiscountOutletResponseCopyWithImpl<$Res>
    implements $DigiDiscountOutletResponseCopyWith<$Res> {
  _$DigiDiscountOutletResponseCopyWithImpl(this._value, this._then);

  final DigiDiscountOutletResponse _value;
  // ignore: unused_field
  final $Res Function(DigiDiscountOutletResponse) _then;

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
              as List<DigiDiscountOutletDataResponse>,
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
abstract class _$DigiDiscountOutletResponseCopyWith<$Res>
    implements $DigiDiscountOutletResponseCopyWith<$Res> {
  factory _$DigiDiscountOutletResponseCopyWith(
          _DigiDiscountOutletResponse value,
          $Res Function(_DigiDiscountOutletResponse) then) =
      __$DigiDiscountOutletResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {StatusResponse response,
      List<DigiDiscountOutletDataResponse> data,
      MetaResponse meta});

  @override
  $StatusResponseCopyWith<$Res> get response;
  @override
  $MetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class __$DigiDiscountOutletResponseCopyWithImpl<$Res>
    extends _$DigiDiscountOutletResponseCopyWithImpl<$Res>
    implements _$DigiDiscountOutletResponseCopyWith<$Res> {
  __$DigiDiscountOutletResponseCopyWithImpl(_DigiDiscountOutletResponse _value,
      $Res Function(_DigiDiscountOutletResponse) _then)
      : super(_value, (v) => _then(v as _DigiDiscountOutletResponse));

  @override
  _DigiDiscountOutletResponse get _value =>
      super._value as _DigiDiscountOutletResponse;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_DigiDiscountOutletResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as StatusResponse,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DigiDiscountOutletDataResponse>,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DigiDiscountOutletResponse implements _DigiDiscountOutletResponse {
  const _$_DigiDiscountOutletResponse(
      {required this.response, required this.data, required this.meta});

  factory _$_DigiDiscountOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DigiDiscountOutletResponseFromJson(json);

  @override
  final StatusResponse response;
  @override
  final List<DigiDiscountOutletDataResponse> data;
  @override
  final MetaResponse meta;

  @override
  String toString() {
    return 'DigiDiscountOutletResponse(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DigiDiscountOutletResponse &&
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
  _$DigiDiscountOutletResponseCopyWith<_DigiDiscountOutletResponse>
      get copyWith => __$DigiDiscountOutletResponseCopyWithImpl<
          _DigiDiscountOutletResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DigiDiscountOutletResponseToJson(this);
  }
}

abstract class _DigiDiscountOutletResponse
    implements DigiDiscountOutletResponse {
  const factory _DigiDiscountOutletResponse(
      {required StatusResponse response,
      required List<DigiDiscountOutletDataResponse> data,
      required MetaResponse meta}) = _$_DigiDiscountOutletResponse;

  factory _DigiDiscountOutletResponse.fromJson(Map<String, dynamic> json) =
      _$_DigiDiscountOutletResponse.fromJson;

  @override
  StatusResponse get response => throw _privateConstructorUsedError;
  @override
  List<DigiDiscountOutletDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  MetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DigiDiscountOutletResponseCopyWith<_DigiDiscountOutletResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DigiDiscountOutletDataResponse _$DigiDiscountOutletDataResponseFromJson(
    Map<String, dynamic> json) {
  return _DigiDiscountOutletDataResponse.fromJson(json);
}

/// @nodoc
class _$DigiDiscountOutletDataResponseTearOff {
  const _$DigiDiscountOutletDataResponseTearOff();

  _DigiDiscountOutletDataResponse call(
      {required String name,
      required String outletId,
      required bool isLive,
      required DigiDiscountOutletDataDetailResponse detail,
      required int? roundingDigit,
      required String? roundingType,
      required DigiDiscountOutletDataOrderMethodResponse orderMethod,
      required bool isNonSku,
      required String merchantId,
      required DigiDiscountOutletDataDistanceResponse distance,
      required bool isOwnerLoggedIn,
      required String merchantName,
      required String category,
      required String callbackUrl,
      required List<String> merchantTags,
      required String outletName,
      required String merchantCategory,
      required List<String> merchantKeywords,
      required String? merchantLogo,
      required int searchWeight,
      required String searchWeightDetail}) {
    return _DigiDiscountOutletDataResponse(
      name: name,
      outletId: outletId,
      isLive: isLive,
      detail: detail,
      roundingDigit: roundingDigit,
      roundingType: roundingType,
      orderMethod: orderMethod,
      isNonSku: isNonSku,
      merchantId: merchantId,
      distance: distance,
      isOwnerLoggedIn: isOwnerLoggedIn,
      merchantName: merchantName,
      category: category,
      callbackUrl: callbackUrl,
      merchantTags: merchantTags,
      outletName: outletName,
      merchantCategory: merchantCategory,
      merchantKeywords: merchantKeywords,
      merchantLogo: merchantLogo,
      searchWeight: searchWeight,
      searchWeightDetail: searchWeightDetail,
    );
  }

  DigiDiscountOutletDataResponse fromJson(Map<String, Object> json) {
    return DigiDiscountOutletDataResponse.fromJson(json);
  }
}

/// @nodoc
const $DigiDiscountOutletDataResponse =
    _$DigiDiscountOutletDataResponseTearOff();

/// @nodoc
mixin _$DigiDiscountOutletDataResponse {
  String get name => throw _privateConstructorUsedError;
  String get outletId => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError;
  DigiDiscountOutletDataDetailResponse get detail =>
      throw _privateConstructorUsedError;
  int? get roundingDigit => throw _privateConstructorUsedError;
  String? get roundingType => throw _privateConstructorUsedError;
  DigiDiscountOutletDataOrderMethodResponse get orderMethod =>
      throw _privateConstructorUsedError;
  bool get isNonSku => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  DigiDiscountOutletDataDistanceResponse get distance =>
      throw _privateConstructorUsedError;
  bool get isOwnerLoggedIn => throw _privateConstructorUsedError;
  String get merchantName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get callbackUrl => throw _privateConstructorUsedError;
  List<String> get merchantTags => throw _privateConstructorUsedError;
  String get outletName => throw _privateConstructorUsedError;
  String get merchantCategory => throw _privateConstructorUsedError;
  List<String> get merchantKeywords => throw _privateConstructorUsedError;
  String? get merchantLogo => throw _privateConstructorUsedError;
  int get searchWeight => throw _privateConstructorUsedError;
  String get searchWeightDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigiDiscountOutletDataResponseCopyWith<DigiDiscountOutletDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigiDiscountOutletDataResponseCopyWith<$Res> {
  factory $DigiDiscountOutletDataResponseCopyWith(
          DigiDiscountOutletDataResponse value,
          $Res Function(DigiDiscountOutletDataResponse) then) =
      _$DigiDiscountOutletDataResponseCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String outletId,
      bool isLive,
      DigiDiscountOutletDataDetailResponse detail,
      int? roundingDigit,
      String? roundingType,
      DigiDiscountOutletDataOrderMethodResponse orderMethod,
      bool isNonSku,
      String merchantId,
      DigiDiscountOutletDataDistanceResponse distance,
      bool isOwnerLoggedIn,
      String merchantName,
      String category,
      String callbackUrl,
      List<String> merchantTags,
      String outletName,
      String merchantCategory,
      List<String> merchantKeywords,
      String? merchantLogo,
      int searchWeight,
      String searchWeightDetail});

  $DigiDiscountOutletDataDetailResponseCopyWith<$Res> get detail;
  $DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res> get orderMethod;
  $DigiDiscountOutletDataDistanceResponseCopyWith<$Res> get distance;
}

/// @nodoc
class _$DigiDiscountOutletDataResponseCopyWithImpl<$Res>
    implements $DigiDiscountOutletDataResponseCopyWith<$Res> {
  _$DigiDiscountOutletDataResponseCopyWithImpl(this._value, this._then);

  final DigiDiscountOutletDataResponse _value;
  // ignore: unused_field
  final $Res Function(DigiDiscountOutletDataResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? outletId = freezed,
    Object? isLive = freezed,
    Object? detail = freezed,
    Object? roundingDigit = freezed,
    Object? roundingType = freezed,
    Object? orderMethod = freezed,
    Object? isNonSku = freezed,
    Object? merchantId = freezed,
    Object? distance = freezed,
    Object? isOwnerLoggedIn = freezed,
    Object? merchantName = freezed,
    Object? category = freezed,
    Object? callbackUrl = freezed,
    Object? merchantTags = freezed,
    Object? outletName = freezed,
    Object? merchantCategory = freezed,
    Object? merchantKeywords = freezed,
    Object? merchantLogo = freezed,
    Object? searchWeight = freezed,
    Object? searchWeightDetail = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as DigiDiscountOutletDataDetailResponse,
      roundingDigit: roundingDigit == freezed
          ? _value.roundingDigit
          : roundingDigit // ignore: cast_nullable_to_non_nullable
              as int?,
      roundingType: roundingType == freezed
          ? _value.roundingType
          : roundingType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMethod: orderMethod == freezed
          ? _value.orderMethod
          : orderMethod // ignore: cast_nullable_to_non_nullable
              as DigiDiscountOutletDataOrderMethodResponse,
      isNonSku: isNonSku == freezed
          ? _value.isNonSku
          : isNonSku // ignore: cast_nullable_to_non_nullable
              as bool,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as DigiDiscountOutletDataDistanceResponse,
      isOwnerLoggedIn: isOwnerLoggedIn == freezed
          ? _value.isOwnerLoggedIn
          : isOwnerLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      callbackUrl: callbackUrl == freezed
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      merchantTags: merchantTags == freezed
          ? _value.merchantTags
          : merchantTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
      merchantCategory: merchantCategory == freezed
          ? _value.merchantCategory
          : merchantCategory // ignore: cast_nullable_to_non_nullable
              as String,
      merchantKeywords: merchantKeywords == freezed
          ? _value.merchantKeywords
          : merchantKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      merchantLogo: merchantLogo == freezed
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      searchWeight: searchWeight == freezed
          ? _value.searchWeight
          : searchWeight // ignore: cast_nullable_to_non_nullable
              as int,
      searchWeightDetail: searchWeightDetail == freezed
          ? _value.searchWeightDetail
          : searchWeightDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DigiDiscountOutletDataDetailResponseCopyWith<$Res> get detail {
    return $DigiDiscountOutletDataDetailResponseCopyWith<$Res>(_value.detail,
        (value) {
      return _then(_value.copyWith(detail: value));
    });
  }

  @override
  $DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res> get orderMethod {
    return $DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res>(
        _value.orderMethod, (value) {
      return _then(_value.copyWith(orderMethod: value));
    });
  }

  @override
  $DigiDiscountOutletDataDistanceResponseCopyWith<$Res> get distance {
    return $DigiDiscountOutletDataDistanceResponseCopyWith<$Res>(
        _value.distance, (value) {
      return _then(_value.copyWith(distance: value));
    });
  }
}

/// @nodoc
abstract class _$DigiDiscountOutletDataResponseCopyWith<$Res>
    implements $DigiDiscountOutletDataResponseCopyWith<$Res> {
  factory _$DigiDiscountOutletDataResponseCopyWith(
          _DigiDiscountOutletDataResponse value,
          $Res Function(_DigiDiscountOutletDataResponse) then) =
      __$DigiDiscountOutletDataResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String outletId,
      bool isLive,
      DigiDiscountOutletDataDetailResponse detail,
      int? roundingDigit,
      String? roundingType,
      DigiDiscountOutletDataOrderMethodResponse orderMethod,
      bool isNonSku,
      String merchantId,
      DigiDiscountOutletDataDistanceResponse distance,
      bool isOwnerLoggedIn,
      String merchantName,
      String category,
      String callbackUrl,
      List<String> merchantTags,
      String outletName,
      String merchantCategory,
      List<String> merchantKeywords,
      String? merchantLogo,
      int searchWeight,
      String searchWeightDetail});

  @override
  $DigiDiscountOutletDataDetailResponseCopyWith<$Res> get detail;
  @override
  $DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res> get orderMethod;
  @override
  $DigiDiscountOutletDataDistanceResponseCopyWith<$Res> get distance;
}

/// @nodoc
class __$DigiDiscountOutletDataResponseCopyWithImpl<$Res>
    extends _$DigiDiscountOutletDataResponseCopyWithImpl<$Res>
    implements _$DigiDiscountOutletDataResponseCopyWith<$Res> {
  __$DigiDiscountOutletDataResponseCopyWithImpl(
      _DigiDiscountOutletDataResponse _value,
      $Res Function(_DigiDiscountOutletDataResponse) _then)
      : super(_value, (v) => _then(v as _DigiDiscountOutletDataResponse));

  @override
  _DigiDiscountOutletDataResponse get _value =>
      super._value as _DigiDiscountOutletDataResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? outletId = freezed,
    Object? isLive = freezed,
    Object? detail = freezed,
    Object? roundingDigit = freezed,
    Object? roundingType = freezed,
    Object? orderMethod = freezed,
    Object? isNonSku = freezed,
    Object? merchantId = freezed,
    Object? distance = freezed,
    Object? isOwnerLoggedIn = freezed,
    Object? merchantName = freezed,
    Object? category = freezed,
    Object? callbackUrl = freezed,
    Object? merchantTags = freezed,
    Object? outletName = freezed,
    Object? merchantCategory = freezed,
    Object? merchantKeywords = freezed,
    Object? merchantLogo = freezed,
    Object? searchWeight = freezed,
    Object? searchWeightDetail = freezed,
  }) {
    return _then(_DigiDiscountOutletDataResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as DigiDiscountOutletDataDetailResponse,
      roundingDigit: roundingDigit == freezed
          ? _value.roundingDigit
          : roundingDigit // ignore: cast_nullable_to_non_nullable
              as int?,
      roundingType: roundingType == freezed
          ? _value.roundingType
          : roundingType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderMethod: orderMethod == freezed
          ? _value.orderMethod
          : orderMethod // ignore: cast_nullable_to_non_nullable
              as DigiDiscountOutletDataOrderMethodResponse,
      isNonSku: isNonSku == freezed
          ? _value.isNonSku
          : isNonSku // ignore: cast_nullable_to_non_nullable
              as bool,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as DigiDiscountOutletDataDistanceResponse,
      isOwnerLoggedIn: isOwnerLoggedIn == freezed
          ? _value.isOwnerLoggedIn
          : isOwnerLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      merchantName: merchantName == freezed
          ? _value.merchantName
          : merchantName // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      callbackUrl: callbackUrl == freezed
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String,
      merchantTags: merchantTags == freezed
          ? _value.merchantTags
          : merchantTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      outletName: outletName == freezed
          ? _value.outletName
          : outletName // ignore: cast_nullable_to_non_nullable
              as String,
      merchantCategory: merchantCategory == freezed
          ? _value.merchantCategory
          : merchantCategory // ignore: cast_nullable_to_non_nullable
              as String,
      merchantKeywords: merchantKeywords == freezed
          ? _value.merchantKeywords
          : merchantKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
      merchantLogo: merchantLogo == freezed
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      searchWeight: searchWeight == freezed
          ? _value.searchWeight
          : searchWeight // ignore: cast_nullable_to_non_nullable
              as int,
      searchWeightDetail: searchWeightDetail == freezed
          ? _value.searchWeightDetail
          : searchWeightDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DigiDiscountOutletDataResponse
    implements _DigiDiscountOutletDataResponse {
  const _$_DigiDiscountOutletDataResponse(
      {required this.name,
      required this.outletId,
      required this.isLive,
      required this.detail,
      required this.roundingDigit,
      required this.roundingType,
      required this.orderMethod,
      required this.isNonSku,
      required this.merchantId,
      required this.distance,
      required this.isOwnerLoggedIn,
      required this.merchantName,
      required this.category,
      required this.callbackUrl,
      required this.merchantTags,
      required this.outletName,
      required this.merchantCategory,
      required this.merchantKeywords,
      required this.merchantLogo,
      required this.searchWeight,
      required this.searchWeightDetail});

  factory _$_DigiDiscountOutletDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DigiDiscountOutletDataResponseFromJson(json);

  @override
  final String name;
  @override
  final String outletId;
  @override
  final bool isLive;
  @override
  final DigiDiscountOutletDataDetailResponse detail;
  @override
  final int? roundingDigit;
  @override
  final String? roundingType;
  @override
  final DigiDiscountOutletDataOrderMethodResponse orderMethod;
  @override
  final bool isNonSku;
  @override
  final String merchantId;
  @override
  final DigiDiscountOutletDataDistanceResponse distance;
  @override
  final bool isOwnerLoggedIn;
  @override
  final String merchantName;
  @override
  final String category;
  @override
  final String callbackUrl;
  @override
  final List<String> merchantTags;
  @override
  final String outletName;
  @override
  final String merchantCategory;
  @override
  final List<String> merchantKeywords;
  @override
  final String? merchantLogo;
  @override
  final int searchWeight;
  @override
  final String searchWeightDetail;

  @override
  String toString() {
    return 'DigiDiscountOutletDataResponse(name: $name, outletId: $outletId, isLive: $isLive, detail: $detail, roundingDigit: $roundingDigit, roundingType: $roundingType, orderMethod: $orderMethod, isNonSku: $isNonSku, merchantId: $merchantId, distance: $distance, isOwnerLoggedIn: $isOwnerLoggedIn, merchantName: $merchantName, category: $category, callbackUrl: $callbackUrl, merchantTags: $merchantTags, outletName: $outletName, merchantCategory: $merchantCategory, merchantKeywords: $merchantKeywords, merchantLogo: $merchantLogo, searchWeight: $searchWeight, searchWeightDetail: $searchWeightDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DigiDiscountOutletDataResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)) &&
            (identical(other.isLive, isLive) ||
                const DeepCollectionEquality().equals(other.isLive, isLive)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.roundingDigit, roundingDigit) ||
                const DeepCollectionEquality()
                    .equals(other.roundingDigit, roundingDigit)) &&
            (identical(other.roundingType, roundingType) ||
                const DeepCollectionEquality()
                    .equals(other.roundingType, roundingType)) &&
            (identical(other.orderMethod, orderMethod) ||
                const DeepCollectionEquality()
                    .equals(other.orderMethod, orderMethod)) &&
            (identical(other.isNonSku, isNonSku) ||
                const DeepCollectionEquality()
                    .equals(other.isNonSku, isNonSku)) &&
            (identical(other.merchantId, merchantId) ||
                const DeepCollectionEquality()
                    .equals(other.merchantId, merchantId)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)) &&
            (identical(other.isOwnerLoggedIn, isOwnerLoggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.isOwnerLoggedIn, isOwnerLoggedIn)) &&
            (identical(other.merchantName, merchantName) ||
                const DeepCollectionEquality()
                    .equals(other.merchantName, merchantName)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.callbackUrl, callbackUrl) ||
                const DeepCollectionEquality()
                    .equals(other.callbackUrl, callbackUrl)) &&
            (identical(other.merchantTags, merchantTags) ||
                const DeepCollectionEquality()
                    .equals(other.merchantTags, merchantTags)) &&
            (identical(other.outletName, outletName) ||
                const DeepCollectionEquality()
                    .equals(other.outletName, outletName)) &&
            (identical(other.merchantCategory, merchantCategory) ||
                const DeepCollectionEquality()
                    .equals(other.merchantCategory, merchantCategory)) &&
            (identical(other.merchantKeywords, merchantKeywords) ||
                const DeepCollectionEquality()
                    .equals(other.merchantKeywords, merchantKeywords)) &&
            (identical(other.merchantLogo, merchantLogo) ||
                const DeepCollectionEquality()
                    .equals(other.merchantLogo, merchantLogo)) &&
            (identical(other.searchWeight, searchWeight) ||
                const DeepCollectionEquality()
                    .equals(other.searchWeight, searchWeight)) &&
            (identical(other.searchWeightDetail, searchWeightDetail) ||
                const DeepCollectionEquality()
                    .equals(other.searchWeightDetail, searchWeightDetail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(outletId) ^
      const DeepCollectionEquality().hash(isLive) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(roundingDigit) ^
      const DeepCollectionEquality().hash(roundingType) ^
      const DeepCollectionEquality().hash(orderMethod) ^
      const DeepCollectionEquality().hash(isNonSku) ^
      const DeepCollectionEquality().hash(merchantId) ^
      const DeepCollectionEquality().hash(distance) ^
      const DeepCollectionEquality().hash(isOwnerLoggedIn) ^
      const DeepCollectionEquality().hash(merchantName) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(callbackUrl) ^
      const DeepCollectionEquality().hash(merchantTags) ^
      const DeepCollectionEquality().hash(outletName) ^
      const DeepCollectionEquality().hash(merchantCategory) ^
      const DeepCollectionEquality().hash(merchantKeywords) ^
      const DeepCollectionEquality().hash(merchantLogo) ^
      const DeepCollectionEquality().hash(searchWeight) ^
      const DeepCollectionEquality().hash(searchWeightDetail);

  @JsonKey(ignore: true)
  @override
  _$DigiDiscountOutletDataResponseCopyWith<_DigiDiscountOutletDataResponse>
      get copyWith => __$DigiDiscountOutletDataResponseCopyWithImpl<
          _DigiDiscountOutletDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DigiDiscountOutletDataResponseToJson(this);
  }
}

abstract class _DigiDiscountOutletDataResponse
    implements DigiDiscountOutletDataResponse {
  const factory _DigiDiscountOutletDataResponse(
      {required String name,
      required String outletId,
      required bool isLive,
      required DigiDiscountOutletDataDetailResponse detail,
      required int? roundingDigit,
      required String? roundingType,
      required DigiDiscountOutletDataOrderMethodResponse orderMethod,
      required bool isNonSku,
      required String merchantId,
      required DigiDiscountOutletDataDistanceResponse distance,
      required bool isOwnerLoggedIn,
      required String merchantName,
      required String category,
      required String callbackUrl,
      required List<String> merchantTags,
      required String outletName,
      required String merchantCategory,
      required List<String> merchantKeywords,
      required String? merchantLogo,
      required int searchWeight,
      required String searchWeightDetail}) = _$_DigiDiscountOutletDataResponse;

  factory _DigiDiscountOutletDataResponse.fromJson(Map<String, dynamic> json) =
      _$_DigiDiscountOutletDataResponse.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get outletId => throw _privateConstructorUsedError;
  @override
  bool get isLive => throw _privateConstructorUsedError;
  @override
  DigiDiscountOutletDataDetailResponse get detail =>
      throw _privateConstructorUsedError;
  @override
  int? get roundingDigit => throw _privateConstructorUsedError;
  @override
  String? get roundingType => throw _privateConstructorUsedError;
  @override
  DigiDiscountOutletDataOrderMethodResponse get orderMethod =>
      throw _privateConstructorUsedError;
  @override
  bool get isNonSku => throw _privateConstructorUsedError;
  @override
  String get merchantId => throw _privateConstructorUsedError;
  @override
  DigiDiscountOutletDataDistanceResponse get distance =>
      throw _privateConstructorUsedError;
  @override
  bool get isOwnerLoggedIn => throw _privateConstructorUsedError;
  @override
  String get merchantName => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  String get callbackUrl => throw _privateConstructorUsedError;
  @override
  List<String> get merchantTags => throw _privateConstructorUsedError;
  @override
  String get outletName => throw _privateConstructorUsedError;
  @override
  String get merchantCategory => throw _privateConstructorUsedError;
  @override
  List<String> get merchantKeywords => throw _privateConstructorUsedError;
  @override
  String? get merchantLogo => throw _privateConstructorUsedError;
  @override
  int get searchWeight => throw _privateConstructorUsedError;
  @override
  String get searchWeightDetail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DigiDiscountOutletDataResponseCopyWith<_DigiDiscountOutletDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DigiDiscountOutletDataDetailResponse
    _$DigiDiscountOutletDataDetailResponseFromJson(Map<String, dynamic> json) {
  return _DigiDiscountOutletDataDetailResponse.fromJson(json);
}

/// @nodoc
class _$DigiDiscountOutletDataDetailResponseTearOff {
  const _$DigiDiscountOutletDataDetailResponseTearOff();

  _DigiDiscountOutletDataDetailResponse call(
      {required String name,
      required String address,
      required List<dynamic> taxesAndServices,
      required List<String> location,
      required String phone,
      required String kurirPrice,
      required String deliveryType,
      required String maxRadius,
      required String driverPhone,
      required List<dynamic> area,
      required List<String> deliveryProvider,
      required List<dynamic>? deliveryLocation,
      required String city}) {
    return _DigiDiscountOutletDataDetailResponse(
      name: name,
      address: address,
      taxesAndServices: taxesAndServices,
      location: location,
      phone: phone,
      kurirPrice: kurirPrice,
      deliveryType: deliveryType,
      maxRadius: maxRadius,
      driverPhone: driverPhone,
      area: area,
      deliveryProvider: deliveryProvider,
      deliveryLocation: deliveryLocation,
      city: city,
    );
  }

  DigiDiscountOutletDataDetailResponse fromJson(Map<String, Object> json) {
    return DigiDiscountOutletDataDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $DigiDiscountOutletDataDetailResponse =
    _$DigiDiscountOutletDataDetailResponseTearOff();

/// @nodoc
mixin _$DigiDiscountOutletDataDetailResponse {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<dynamic> get taxesAndServices => throw _privateConstructorUsedError;
  List<String> get location => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get kurirPrice => throw _privateConstructorUsedError;
  String get deliveryType => throw _privateConstructorUsedError;
  String get maxRadius => throw _privateConstructorUsedError;
  String get driverPhone => throw _privateConstructorUsedError;
  List<dynamic> get area => throw _privateConstructorUsedError;
  List<String> get deliveryProvider => throw _privateConstructorUsedError;
  List<dynamic>? get deliveryLocation => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigiDiscountOutletDataDetailResponseCopyWith<
          DigiDiscountOutletDataDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigiDiscountOutletDataDetailResponseCopyWith<$Res> {
  factory $DigiDiscountOutletDataDetailResponseCopyWith(
          DigiDiscountOutletDataDetailResponse value,
          $Res Function(DigiDiscountOutletDataDetailResponse) then) =
      _$DigiDiscountOutletDataDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String address,
      List<dynamic> taxesAndServices,
      List<String> location,
      String phone,
      String kurirPrice,
      String deliveryType,
      String maxRadius,
      String driverPhone,
      List<dynamic> area,
      List<String> deliveryProvider,
      List<dynamic>? deliveryLocation,
      String city});
}

/// @nodoc
class _$DigiDiscountOutletDataDetailResponseCopyWithImpl<$Res>
    implements $DigiDiscountOutletDataDetailResponseCopyWith<$Res> {
  _$DigiDiscountOutletDataDetailResponseCopyWithImpl(this._value, this._then);

  final DigiDiscountOutletDataDetailResponse _value;
  // ignore: unused_field
  final $Res Function(DigiDiscountOutletDataDetailResponse) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? taxesAndServices = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? kurirPrice = freezed,
    Object? deliveryType = freezed,
    Object? maxRadius = freezed,
    Object? driverPhone = freezed,
    Object? area = freezed,
    Object? deliveryProvider = freezed,
    Object? deliveryLocation = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      taxesAndServices: taxesAndServices == freezed
          ? _value.taxesAndServices
          : taxesAndServices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kurirPrice: kurirPrice == freezed
          ? _value.kurirPrice
          : kurirPrice // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      maxRadius: maxRadius == freezed
          ? _value.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as String,
      driverPhone: driverPhone == freezed
          ? _value.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      deliveryProvider: deliveryProvider == freezed
          ? _value.deliveryProvider
          : deliveryProvider // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deliveryLocation: deliveryLocation == freezed
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DigiDiscountOutletDataDetailResponseCopyWith<$Res>
    implements $DigiDiscountOutletDataDetailResponseCopyWith<$Res> {
  factory _$DigiDiscountOutletDataDetailResponseCopyWith(
          _DigiDiscountOutletDataDetailResponse value,
          $Res Function(_DigiDiscountOutletDataDetailResponse) then) =
      __$DigiDiscountOutletDataDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String address,
      List<dynamic> taxesAndServices,
      List<String> location,
      String phone,
      String kurirPrice,
      String deliveryType,
      String maxRadius,
      String driverPhone,
      List<dynamic> area,
      List<String> deliveryProvider,
      List<dynamic>? deliveryLocation,
      String city});
}

/// @nodoc
class __$DigiDiscountOutletDataDetailResponseCopyWithImpl<$Res>
    extends _$DigiDiscountOutletDataDetailResponseCopyWithImpl<$Res>
    implements _$DigiDiscountOutletDataDetailResponseCopyWith<$Res> {
  __$DigiDiscountOutletDataDetailResponseCopyWithImpl(
      _DigiDiscountOutletDataDetailResponse _value,
      $Res Function(_DigiDiscountOutletDataDetailResponse) _then)
      : super(_value, (v) => _then(v as _DigiDiscountOutletDataDetailResponse));

  @override
  _DigiDiscountOutletDataDetailResponse get _value =>
      super._value as _DigiDiscountOutletDataDetailResponse;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
    Object? taxesAndServices = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? kurirPrice = freezed,
    Object? deliveryType = freezed,
    Object? maxRadius = freezed,
    Object? driverPhone = freezed,
    Object? area = freezed,
    Object? deliveryProvider = freezed,
    Object? deliveryLocation = freezed,
    Object? city = freezed,
  }) {
    return _then(_DigiDiscountOutletDataDetailResponse(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      taxesAndServices: taxesAndServices == freezed
          ? _value.taxesAndServices
          : taxesAndServices // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      kurirPrice: kurirPrice == freezed
          ? _value.kurirPrice
          : kurirPrice // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: deliveryType == freezed
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as String,
      maxRadius: maxRadius == freezed
          ? _value.maxRadius
          : maxRadius // ignore: cast_nullable_to_non_nullable
              as String,
      driverPhone: driverPhone == freezed
          ? _value.driverPhone
          : driverPhone // ignore: cast_nullable_to_non_nullable
              as String,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      deliveryProvider: deliveryProvider == freezed
          ? _value.deliveryProvider
          : deliveryProvider // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deliveryLocation: deliveryLocation == freezed
          ? _value.deliveryLocation
          : deliveryLocation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DigiDiscountOutletDataDetailResponse
    implements _DigiDiscountOutletDataDetailResponse {
  const _$_DigiDiscountOutletDataDetailResponse(
      {required this.name,
      required this.address,
      required this.taxesAndServices,
      required this.location,
      required this.phone,
      required this.kurirPrice,
      required this.deliveryType,
      required this.maxRadius,
      required this.driverPhone,
      required this.area,
      required this.deliveryProvider,
      required this.deliveryLocation,
      required this.city});

  factory _$_DigiDiscountOutletDataDetailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DigiDiscountOutletDataDetailResponseFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final List<dynamic> taxesAndServices;
  @override
  final List<String> location;
  @override
  final String phone;
  @override
  final String kurirPrice;
  @override
  final String deliveryType;
  @override
  final String maxRadius;
  @override
  final String driverPhone;
  @override
  final List<dynamic> area;
  @override
  final List<String> deliveryProvider;
  @override
  final List<dynamic>? deliveryLocation;
  @override
  final String city;

  @override
  String toString() {
    return 'DigiDiscountOutletDataDetailResponse(name: $name, address: $address, taxesAndServices: $taxesAndServices, location: $location, phone: $phone, kurirPrice: $kurirPrice, deliveryType: $deliveryType, maxRadius: $maxRadius, driverPhone: $driverPhone, area: $area, deliveryProvider: $deliveryProvider, deliveryLocation: $deliveryLocation, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DigiDiscountOutletDataDetailResponse &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.taxesAndServices, taxesAndServices) ||
                const DeepCollectionEquality()
                    .equals(other.taxesAndServices, taxesAndServices)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.kurirPrice, kurirPrice) ||
                const DeepCollectionEquality()
                    .equals(other.kurirPrice, kurirPrice)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryType, deliveryType)) &&
            (identical(other.maxRadius, maxRadius) ||
                const DeepCollectionEquality()
                    .equals(other.maxRadius, maxRadius)) &&
            (identical(other.driverPhone, driverPhone) ||
                const DeepCollectionEquality()
                    .equals(other.driverPhone, driverPhone)) &&
            (identical(other.area, area) ||
                const DeepCollectionEquality().equals(other.area, area)) &&
            (identical(other.deliveryProvider, deliveryProvider) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryProvider, deliveryProvider)) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryLocation, deliveryLocation)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(taxesAndServices) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(kurirPrice) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(maxRadius) ^
      const DeepCollectionEquality().hash(driverPhone) ^
      const DeepCollectionEquality().hash(area) ^
      const DeepCollectionEquality().hash(deliveryProvider) ^
      const DeepCollectionEquality().hash(deliveryLocation) ^
      const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  _$DigiDiscountOutletDataDetailResponseCopyWith<
          _DigiDiscountOutletDataDetailResponse>
      get copyWith => __$DigiDiscountOutletDataDetailResponseCopyWithImpl<
          _DigiDiscountOutletDataDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DigiDiscountOutletDataDetailResponseToJson(this);
  }
}

abstract class _DigiDiscountOutletDataDetailResponse
    implements DigiDiscountOutletDataDetailResponse {
  const factory _DigiDiscountOutletDataDetailResponse(
      {required String name,
      required String address,
      required List<dynamic> taxesAndServices,
      required List<String> location,
      required String phone,
      required String kurirPrice,
      required String deliveryType,
      required String maxRadius,
      required String driverPhone,
      required List<dynamic> area,
      required List<String> deliveryProvider,
      required List<dynamic>? deliveryLocation,
      required String city}) = _$_DigiDiscountOutletDataDetailResponse;

  factory _DigiDiscountOutletDataDetailResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DigiDiscountOutletDataDetailResponse.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  List<dynamic> get taxesAndServices => throw _privateConstructorUsedError;
  @override
  List<String> get location => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get kurirPrice => throw _privateConstructorUsedError;
  @override
  String get deliveryType => throw _privateConstructorUsedError;
  @override
  String get maxRadius => throw _privateConstructorUsedError;
  @override
  String get driverPhone => throw _privateConstructorUsedError;
  @override
  List<dynamic> get area => throw _privateConstructorUsedError;
  @override
  List<String> get deliveryProvider => throw _privateConstructorUsedError;
  @override
  List<dynamic>? get deliveryLocation => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DigiDiscountOutletDataDetailResponseCopyWith<
          _DigiDiscountOutletDataDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DigiDiscountOutletDataDistanceResponse
    _$DigiDiscountOutletDataDistanceResponseFromJson(
        Map<String, dynamic> json) {
  return _DigiDiscountOutletDataDistanceResponse.fromJson(json);
}

/// @nodoc
class _$DigiDiscountOutletDataDistanceResponseTearOff {
  const _$DigiDiscountOutletDataDistanceResponseTearOff();

  _DigiDiscountOutletDataDistanceResponse call(
      {required String text, required dynamic value}) {
    return _DigiDiscountOutletDataDistanceResponse(
      text: text,
      value: value,
    );
  }

  DigiDiscountOutletDataDistanceResponse fromJson(Map<String, Object> json) {
    return DigiDiscountOutletDataDistanceResponse.fromJson(json);
  }
}

/// @nodoc
const $DigiDiscountOutletDataDistanceResponse =
    _$DigiDiscountOutletDataDistanceResponseTearOff();

/// @nodoc
mixin _$DigiDiscountOutletDataDistanceResponse {
  String get text => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigiDiscountOutletDataDistanceResponseCopyWith<
          DigiDiscountOutletDataDistanceResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigiDiscountOutletDataDistanceResponseCopyWith<$Res> {
  factory $DigiDiscountOutletDataDistanceResponseCopyWith(
          DigiDiscountOutletDataDistanceResponse value,
          $Res Function(DigiDiscountOutletDataDistanceResponse) then) =
      _$DigiDiscountOutletDataDistanceResponseCopyWithImpl<$Res>;
  $Res call({String text, dynamic value});
}

/// @nodoc
class _$DigiDiscountOutletDataDistanceResponseCopyWithImpl<$Res>
    implements $DigiDiscountOutletDataDistanceResponseCopyWith<$Res> {
  _$DigiDiscountOutletDataDistanceResponseCopyWithImpl(this._value, this._then);

  final DigiDiscountOutletDataDistanceResponse _value;
  // ignore: unused_field
  final $Res Function(DigiDiscountOutletDataDistanceResponse) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$DigiDiscountOutletDataDistanceResponseCopyWith<$Res>
    implements $DigiDiscountOutletDataDistanceResponseCopyWith<$Res> {
  factory _$DigiDiscountOutletDataDistanceResponseCopyWith(
          _DigiDiscountOutletDataDistanceResponse value,
          $Res Function(_DigiDiscountOutletDataDistanceResponse) then) =
      __$DigiDiscountOutletDataDistanceResponseCopyWithImpl<$Res>;
  @override
  $Res call({String text, dynamic value});
}

/// @nodoc
class __$DigiDiscountOutletDataDistanceResponseCopyWithImpl<$Res>
    extends _$DigiDiscountOutletDataDistanceResponseCopyWithImpl<$Res>
    implements _$DigiDiscountOutletDataDistanceResponseCopyWith<$Res> {
  __$DigiDiscountOutletDataDistanceResponseCopyWithImpl(
      _DigiDiscountOutletDataDistanceResponse _value,
      $Res Function(_DigiDiscountOutletDataDistanceResponse) _then)
      : super(
            _value, (v) => _then(v as _DigiDiscountOutletDataDistanceResponse));

  @override
  _DigiDiscountOutletDataDistanceResponse get _value =>
      super._value as _DigiDiscountOutletDataDistanceResponse;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_DigiDiscountOutletDataDistanceResponse(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DigiDiscountOutletDataDistanceResponse
    implements _DigiDiscountOutletDataDistanceResponse {
  const _$_DigiDiscountOutletDataDistanceResponse(
      {required this.text, required this.value});

  factory _$_DigiDiscountOutletDataDistanceResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DigiDiscountOutletDataDistanceResponseFromJson(json);

  @override
  final String text;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'DigiDiscountOutletDataDistanceResponse(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DigiDiscountOutletDataDistanceResponse &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$DigiDiscountOutletDataDistanceResponseCopyWith<
          _DigiDiscountOutletDataDistanceResponse>
      get copyWith => __$DigiDiscountOutletDataDistanceResponseCopyWithImpl<
          _DigiDiscountOutletDataDistanceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DigiDiscountOutletDataDistanceResponseToJson(this);
  }
}

abstract class _DigiDiscountOutletDataDistanceResponse
    implements DigiDiscountOutletDataDistanceResponse {
  const factory _DigiDiscountOutletDataDistanceResponse(
      {required String text,
      required dynamic value}) = _$_DigiDiscountOutletDataDistanceResponse;

  factory _DigiDiscountOutletDataDistanceResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DigiDiscountOutletDataDistanceResponse.fromJson;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  dynamic get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DigiDiscountOutletDataDistanceResponseCopyWith<
          _DigiDiscountOutletDataDistanceResponse>
      get copyWith => throw _privateConstructorUsedError;
}

DigiDiscountOutletDataOrderMethodResponse
    _$DigiDiscountOutletDataOrderMethodResponseFromJson(
        Map<String, dynamic> json) {
  return _DigiDiscountOutletDataOrderMethodResponse.fromJson(json);
}

/// @nodoc
class _$DigiDiscountOutletDataOrderMethodResponseTearOff {
  const _$DigiDiscountOutletDataOrderMethodResponseTearOff();

  _DigiDiscountOutletDataOrderMethodResponse call(
      {required bool forceSelect, required List<String> defaultList}) {
    return _DigiDiscountOutletDataOrderMethodResponse(
      forceSelect: forceSelect,
      defaultList: defaultList,
    );
  }

  DigiDiscountOutletDataOrderMethodResponse fromJson(Map<String, Object> json) {
    return DigiDiscountOutletDataOrderMethodResponse.fromJson(json);
  }
}

/// @nodoc
const $DigiDiscountOutletDataOrderMethodResponse =
    _$DigiDiscountOutletDataOrderMethodResponseTearOff();

/// @nodoc
mixin _$DigiDiscountOutletDataOrderMethodResponse {
  bool get forceSelect => throw _privateConstructorUsedError;
  List<String> get defaultList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DigiDiscountOutletDataOrderMethodResponseCopyWith<
          DigiDiscountOutletDataOrderMethodResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res> {
  factory $DigiDiscountOutletDataOrderMethodResponseCopyWith(
          DigiDiscountOutletDataOrderMethodResponse value,
          $Res Function(DigiDiscountOutletDataOrderMethodResponse) then) =
      _$DigiDiscountOutletDataOrderMethodResponseCopyWithImpl<$Res>;
  $Res call({bool forceSelect, List<String> defaultList});
}

/// @nodoc
class _$DigiDiscountOutletDataOrderMethodResponseCopyWithImpl<$Res>
    implements $DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res> {
  _$DigiDiscountOutletDataOrderMethodResponseCopyWithImpl(
      this._value, this._then);

  final DigiDiscountOutletDataOrderMethodResponse _value;
  // ignore: unused_field
  final $Res Function(DigiDiscountOutletDataOrderMethodResponse) _then;

  @override
  $Res call({
    Object? forceSelect = freezed,
    Object? defaultList = freezed,
  }) {
    return _then(_value.copyWith(
      forceSelect: forceSelect == freezed
          ? _value.forceSelect
          : forceSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultList: defaultList == freezed
          ? _value.defaultList
          : defaultList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res>
    implements $DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res> {
  factory _$DigiDiscountOutletDataOrderMethodResponseCopyWith(
          _DigiDiscountOutletDataOrderMethodResponse value,
          $Res Function(_DigiDiscountOutletDataOrderMethodResponse) then) =
      __$DigiDiscountOutletDataOrderMethodResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool forceSelect, List<String> defaultList});
}

/// @nodoc
class __$DigiDiscountOutletDataOrderMethodResponseCopyWithImpl<$Res>
    extends _$DigiDiscountOutletDataOrderMethodResponseCopyWithImpl<$Res>
    implements _$DigiDiscountOutletDataOrderMethodResponseCopyWith<$Res> {
  __$DigiDiscountOutletDataOrderMethodResponseCopyWithImpl(
      _DigiDiscountOutletDataOrderMethodResponse _value,
      $Res Function(_DigiDiscountOutletDataOrderMethodResponse) _then)
      : super(_value,
            (v) => _then(v as _DigiDiscountOutletDataOrderMethodResponse));

  @override
  _DigiDiscountOutletDataOrderMethodResponse get _value =>
      super._value as _DigiDiscountOutletDataOrderMethodResponse;

  @override
  $Res call({
    Object? forceSelect = freezed,
    Object? defaultList = freezed,
  }) {
    return _then(_DigiDiscountOutletDataOrderMethodResponse(
      forceSelect: forceSelect == freezed
          ? _value.forceSelect
          : forceSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultList: defaultList == freezed
          ? _value.defaultList
          : defaultList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DigiDiscountOutletDataOrderMethodResponse
    implements _DigiDiscountOutletDataOrderMethodResponse {
  const _$_DigiDiscountOutletDataOrderMethodResponse(
      {required this.forceSelect, required this.defaultList});

  factory _$_DigiDiscountOutletDataOrderMethodResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DigiDiscountOutletDataOrderMethodResponseFromJson(json);

  @override
  final bool forceSelect;
  @override
  final List<String> defaultList;

  @override
  String toString() {
    return 'DigiDiscountOutletDataOrderMethodResponse(forceSelect: $forceSelect, defaultList: $defaultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DigiDiscountOutletDataOrderMethodResponse &&
            (identical(other.forceSelect, forceSelect) ||
                const DeepCollectionEquality()
                    .equals(other.forceSelect, forceSelect)) &&
            (identical(other.defaultList, defaultList) ||
                const DeepCollectionEquality()
                    .equals(other.defaultList, defaultList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forceSelect) ^
      const DeepCollectionEquality().hash(defaultList);

  @JsonKey(ignore: true)
  @override
  _$DigiDiscountOutletDataOrderMethodResponseCopyWith<
          _DigiDiscountOutletDataOrderMethodResponse>
      get copyWith => __$DigiDiscountOutletDataOrderMethodResponseCopyWithImpl<
          _DigiDiscountOutletDataOrderMethodResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DigiDiscountOutletDataOrderMethodResponseToJson(this);
  }
}

abstract class _DigiDiscountOutletDataOrderMethodResponse
    implements DigiDiscountOutletDataOrderMethodResponse {
  const factory _DigiDiscountOutletDataOrderMethodResponse(
          {required bool forceSelect, required List<String> defaultList}) =
      _$_DigiDiscountOutletDataOrderMethodResponse;

  factory _DigiDiscountOutletDataOrderMethodResponse.fromJson(
          Map<String, dynamic> json) =
      _$_DigiDiscountOutletDataOrderMethodResponse.fromJson;

  @override
  bool get forceSelect => throw _privateConstructorUsedError;
  @override
  List<String> get defaultList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DigiDiscountOutletDataOrderMethodResponseCopyWith<
          _DigiDiscountOutletDataOrderMethodResponse>
      get copyWith => throw _privateConstructorUsedError;
}
