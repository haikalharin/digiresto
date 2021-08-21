// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'outlet_category_response_old.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OutletCategoryResponseOld _$OutletCategoryResponseOldFromJson(
    Map<String, dynamic> json) {
  return _OutletCategoryResponseOld.fromJson(json);
}

/// @nodoc
class _$OutletCategoryResponseOldTearOff {
  const _$OutletCategoryResponseOldTearOff();

  _OutletCategoryResponseOld call(
      {required OutletCategoryResponses response,
      required List<OutletCategoryDataResponse> data,
      required OutletCategoryMetaResponse meta}) {
    return _OutletCategoryResponseOld(
      response: response,
      data: data,
      meta: meta,
    );
  }

  OutletCategoryResponseOld fromJson(Map<String, Object> json) {
    return OutletCategoryResponseOld.fromJson(json);
  }
}

/// @nodoc
const $OutletCategoryResponseOld = _$OutletCategoryResponseOldTearOff();

/// @nodoc
mixin _$OutletCategoryResponseOld {
  OutletCategoryResponses get response => throw _privateConstructorUsedError;
  List<OutletCategoryDataResponse> get data =>
      throw _privateConstructorUsedError;
  OutletCategoryMetaResponse get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletCategoryResponseOldCopyWith<OutletCategoryResponseOld> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletCategoryResponseOldCopyWith<$Res> {
  factory $OutletCategoryResponseOldCopyWith(OutletCategoryResponseOld value,
          $Res Function(OutletCategoryResponseOld) then) =
      _$OutletCategoryResponseOldCopyWithImpl<$Res>;
  $Res call(
      {OutletCategoryResponses response,
      List<OutletCategoryDataResponse> data,
      OutletCategoryMetaResponse meta});

  $OutletCategoryResponsesCopyWith<$Res> get response;
  $OutletCategoryMetaResponseCopyWith<$Res> get meta;
}

/// @nodoc
class _$OutletCategoryResponseOldCopyWithImpl<$Res>
    implements $OutletCategoryResponseOldCopyWith<$Res> {
  _$OutletCategoryResponseOldCopyWithImpl(this._value, this._then);

  final OutletCategoryResponseOld _value;
  // ignore: unused_field
  final $Res Function(OutletCategoryResponseOld) _then;

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
abstract class _$OutletCategoryResponseOldCopyWith<$Res>
    implements $OutletCategoryResponseOldCopyWith<$Res> {
  factory _$OutletCategoryResponseOldCopyWith(_OutletCategoryResponseOld value,
          $Res Function(_OutletCategoryResponseOld) then) =
      __$OutletCategoryResponseOldCopyWithImpl<$Res>;
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
class __$OutletCategoryResponseOldCopyWithImpl<$Res>
    extends _$OutletCategoryResponseOldCopyWithImpl<$Res>
    implements _$OutletCategoryResponseOldCopyWith<$Res> {
  __$OutletCategoryResponseOldCopyWithImpl(_OutletCategoryResponseOld _value,
      $Res Function(_OutletCategoryResponseOld) _then)
      : super(_value, (v) => _then(v as _OutletCategoryResponseOld));

  @override
  _OutletCategoryResponseOld get _value =>
      super._value as _OutletCategoryResponseOld;

  @override
  $Res call({
    Object? response = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_OutletCategoryResponseOld(
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
class _$_OutletCategoryResponseOld implements _OutletCategoryResponseOld {
  const _$_OutletCategoryResponseOld(
      {required this.response, required this.data, required this.meta});

  factory _$_OutletCategoryResponseOld.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletCategoryResponseOldFromJson(json);

  @override
  final OutletCategoryResponses response;
  @override
  final List<OutletCategoryDataResponse> data;
  @override
  final OutletCategoryMetaResponse meta;

  @override
  String toString() {
    return 'OutletCategoryResponseOld(response: $response, data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletCategoryResponseOld &&
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
  _$OutletCategoryResponseOldCopyWith<_OutletCategoryResponseOld>
      get copyWith =>
          __$OutletCategoryResponseOldCopyWithImpl<_OutletCategoryResponseOld>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutletCategoryResponseOldToJson(this);
  }
}

abstract class _OutletCategoryResponseOld implements OutletCategoryResponseOld {
  const factory _OutletCategoryResponseOld(
      {required OutletCategoryResponses response,
      required List<OutletCategoryDataResponse> data,
      required OutletCategoryMetaResponse meta}) = _$_OutletCategoryResponseOld;

  factory _OutletCategoryResponseOld.fromJson(Map<String, dynamic> json) =
      _$_OutletCategoryResponseOld.fromJson;

  @override
  OutletCategoryResponses get response => throw _privateConstructorUsedError;
  @override
  List<OutletCategoryDataResponse> get data =>
      throw _privateConstructorUsedError;
  @override
  OutletCategoryMetaResponse get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCategoryResponseOldCopyWith<_OutletCategoryResponseOld>
      get copyWith => throw _privateConstructorUsedError;
}

OutletCategoryDataResponse _$OutletCategoryDataResponseFromJson(
    Map<String, dynamic> json) {
  return _OutletCategoryDataResponse.fromJson(json);
}

/// @nodoc
class _$OutletCategoryDataResponseTearOff {
  const _$OutletCategoryDataResponseTearOff();

  _OutletCategoryDataResponse call(
      {required String? id,
      required String name,
      required String outletId,
      required bool isNonSku,
      required Detail detail,
      required dynamic roundingDigit,
      required dynamic roundingType,
      required bool isLive,
      required OrderMethod orderMethod,
      required String merchantId,
      required Distance distance,
      required bool isOwnerLoggedIn,
      required String merchantName,
      required String category,
      required String callbackUrl,
      required List<String> merchantTags,
      required String outletName,
      required String merchantCategory,
      required List<String> merchantKeywords,
      required int searchWeight,
      required String searchWeightDetail,
      required String merchantLogo}) {
    return _OutletCategoryDataResponse(
      id: id,
      name: name,
      outletId: outletId,
      isNonSku: isNonSku,
      detail: detail,
      roundingDigit: roundingDigit,
      roundingType: roundingType,
      isLive: isLive,
      orderMethod: orderMethod,
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
      searchWeight: searchWeight,
      searchWeightDetail: searchWeightDetail,
      merchantLogo: merchantLogo,
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
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get outletId => throw _privateConstructorUsedError;
  bool get isNonSku => throw _privateConstructorUsedError;
  Detail get detail => throw _privateConstructorUsedError;
  dynamic get roundingDigit => throw _privateConstructorUsedError;
  dynamic get roundingType => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError;
  OrderMethod get orderMethod => throw _privateConstructorUsedError;
  String get merchantId => throw _privateConstructorUsedError;
  Distance get distance => throw _privateConstructorUsedError;
  bool get isOwnerLoggedIn => throw _privateConstructorUsedError;
  String get merchantName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get callbackUrl => throw _privateConstructorUsedError;
  List<String> get merchantTags => throw _privateConstructorUsedError;
  String get outletName => throw _privateConstructorUsedError;
  String get merchantCategory => throw _privateConstructorUsedError;
  List<String> get merchantKeywords => throw _privateConstructorUsedError;
  int get searchWeight => throw _privateConstructorUsedError;
  String get searchWeightDetail => throw _privateConstructorUsedError;
  String get merchantLogo => throw _privateConstructorUsedError;

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
      {String? id,
      String name,
      String outletId,
      bool isNonSku,
      Detail detail,
      dynamic roundingDigit,
      dynamic roundingType,
      bool isLive,
      OrderMethod orderMethod,
      String merchantId,
      Distance distance,
      bool isOwnerLoggedIn,
      String merchantName,
      String category,
      String callbackUrl,
      List<String> merchantTags,
      String outletName,
      String merchantCategory,
      List<String> merchantKeywords,
      int searchWeight,
      String searchWeightDetail,
      String merchantLogo});

  $DetailCopyWith<$Res> get detail;
  $OrderMethodCopyWith<$Res> get orderMethod;
  $DistanceCopyWith<$Res> get distance;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? outletId = freezed,
    Object? isNonSku = freezed,
    Object? detail = freezed,
    Object? roundingDigit = freezed,
    Object? roundingType = freezed,
    Object? isLive = freezed,
    Object? orderMethod = freezed,
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
    Object? searchWeight = freezed,
    Object? searchWeightDetail = freezed,
    Object? merchantLogo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      isNonSku: isNonSku == freezed
          ? _value.isNonSku
          : isNonSku // ignore: cast_nullable_to_non_nullable
              as bool,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      roundingDigit: roundingDigit == freezed
          ? _value.roundingDigit
          : roundingDigit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roundingType: roundingType == freezed
          ? _value.roundingType
          : roundingType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      orderMethod: orderMethod == freezed
          ? _value.orderMethod
          : orderMethod // ignore: cast_nullable_to_non_nullable
              as OrderMethod,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Distance,
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
      searchWeight: searchWeight == freezed
          ? _value.searchWeight
          : searchWeight // ignore: cast_nullable_to_non_nullable
              as int,
      searchWeightDetail: searchWeightDetail == freezed
          ? _value.searchWeightDetail
          : searchWeightDetail // ignore: cast_nullable_to_non_nullable
              as String,
      merchantLogo: merchantLogo == freezed
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $DetailCopyWith<$Res> get detail {
    return $DetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }

  @override
  $OrderMethodCopyWith<$Res> get orderMethod {
    return $OrderMethodCopyWith<$Res>(_value.orderMethod, (value) {
      return _then(_value.copyWith(orderMethod: value));
    });
  }

  @override
  $DistanceCopyWith<$Res> get distance {
    return $DistanceCopyWith<$Res>(_value.distance, (value) {
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
      {String? id,
      String name,
      String outletId,
      bool isNonSku,
      Detail detail,
      dynamic roundingDigit,
      dynamic roundingType,
      bool isLive,
      OrderMethod orderMethod,
      String merchantId,
      Distance distance,
      bool isOwnerLoggedIn,
      String merchantName,
      String category,
      String callbackUrl,
      List<String> merchantTags,
      String outletName,
      String merchantCategory,
      List<String> merchantKeywords,
      int searchWeight,
      String searchWeightDetail,
      String merchantLogo});

  @override
  $DetailCopyWith<$Res> get detail;
  @override
  $OrderMethodCopyWith<$Res> get orderMethod;
  @override
  $DistanceCopyWith<$Res> get distance;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? outletId = freezed,
    Object? isNonSku = freezed,
    Object? detail = freezed,
    Object? roundingDigit = freezed,
    Object? roundingType = freezed,
    Object? isLive = freezed,
    Object? orderMethod = freezed,
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
    Object? searchWeight = freezed,
    Object? searchWeightDetail = freezed,
    Object? merchantLogo = freezed,
  }) {
    return _then(_OutletCategoryDataResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      outletId: outletId == freezed
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String,
      isNonSku: isNonSku == freezed
          ? _value.isNonSku
          : isNonSku // ignore: cast_nullable_to_non_nullable
              as bool,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      roundingDigit: roundingDigit == freezed
          ? _value.roundingDigit
          : roundingDigit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      roundingType: roundingType == freezed
          ? _value.roundingType
          : roundingType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLive: isLive == freezed
          ? _value.isLive
          : isLive // ignore: cast_nullable_to_non_nullable
              as bool,
      orderMethod: orderMethod == freezed
          ? _value.orderMethod
          : orderMethod // ignore: cast_nullable_to_non_nullable
              as OrderMethod,
      merchantId: merchantId == freezed
          ? _value.merchantId
          : merchantId // ignore: cast_nullable_to_non_nullable
              as String,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as Distance,
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
      searchWeight: searchWeight == freezed
          ? _value.searchWeight
          : searchWeight // ignore: cast_nullable_to_non_nullable
              as int,
      searchWeightDetail: searchWeightDetail == freezed
          ? _value.searchWeightDetail
          : searchWeightDetail // ignore: cast_nullable_to_non_nullable
              as String,
      merchantLogo: merchantLogo == freezed
          ? _value.merchantLogo
          : merchantLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OutletCategoryDataResponse implements _OutletCategoryDataResponse {
  const _$_OutletCategoryDataResponse(
      {required this.id,
      required this.name,
      required this.outletId,
      required this.isNonSku,
      required this.detail,
      required this.roundingDigit,
      required this.roundingType,
      required this.isLive,
      required this.orderMethod,
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
      required this.searchWeight,
      required this.searchWeightDetail,
      required this.merchantLogo});

  factory _$_OutletCategoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OutletCategoryDataResponseFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String outletId;
  @override
  final bool isNonSku;
  @override
  final Detail detail;
  @override
  final dynamic roundingDigit;
  @override
  final dynamic roundingType;
  @override
  final bool isLive;
  @override
  final OrderMethod orderMethod;
  @override
  final String merchantId;
  @override
  final Distance distance;
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
  final int searchWeight;
  @override
  final String searchWeightDetail;
  @override
  final String merchantLogo;

  @override
  String toString() {
    return 'OutletCategoryDataResponse(id: $id, name: $name, outletId: $outletId, isNonSku: $isNonSku, detail: $detail, roundingDigit: $roundingDigit, roundingType: $roundingType, isLive: $isLive, orderMethod: $orderMethod, merchantId: $merchantId, distance: $distance, isOwnerLoggedIn: $isOwnerLoggedIn, merchantName: $merchantName, category: $category, callbackUrl: $callbackUrl, merchantTags: $merchantTags, outletName: $outletName, merchantCategory: $merchantCategory, merchantKeywords: $merchantKeywords, searchWeight: $searchWeight, searchWeightDetail: $searchWeightDetail, merchantLogo: $merchantLogo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutletCategoryDataResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.outletId, outletId) ||
                const DeepCollectionEquality()
                    .equals(other.outletId, outletId)) &&
            (identical(other.isNonSku, isNonSku) ||
                const DeepCollectionEquality()
                    .equals(other.isNonSku, isNonSku)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.roundingDigit, roundingDigit) ||
                const DeepCollectionEquality()
                    .equals(other.roundingDigit, roundingDigit)) &&
            (identical(other.roundingType, roundingType) ||
                const DeepCollectionEquality()
                    .equals(other.roundingType, roundingType)) &&
            (identical(other.isLive, isLive) ||
                const DeepCollectionEquality().equals(other.isLive, isLive)) &&
            (identical(other.orderMethod, orderMethod) ||
                const DeepCollectionEquality()
                    .equals(other.orderMethod, orderMethod)) &&
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
            (identical(other.searchWeight, searchWeight) ||
                const DeepCollectionEquality()
                    .equals(other.searchWeight, searchWeight)) &&
            (identical(other.searchWeightDetail, searchWeightDetail) ||
                const DeepCollectionEquality()
                    .equals(other.searchWeightDetail, searchWeightDetail)) &&
            (identical(other.merchantLogo, merchantLogo) ||
                const DeepCollectionEquality()
                    .equals(other.merchantLogo, merchantLogo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(outletId) ^
      const DeepCollectionEquality().hash(isNonSku) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(roundingDigit) ^
      const DeepCollectionEquality().hash(roundingType) ^
      const DeepCollectionEquality().hash(isLive) ^
      const DeepCollectionEquality().hash(orderMethod) ^
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
      const DeepCollectionEquality().hash(searchWeight) ^
      const DeepCollectionEquality().hash(searchWeightDetail) ^
      const DeepCollectionEquality().hash(merchantLogo);

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
      {required String? id,
      required String name,
      required String outletId,
      required bool isNonSku,
      required Detail detail,
      required dynamic roundingDigit,
      required dynamic roundingType,
      required bool isLive,
      required OrderMethod orderMethod,
      required String merchantId,
      required Distance distance,
      required bool isOwnerLoggedIn,
      required String merchantName,
      required String category,
      required String callbackUrl,
      required List<String> merchantTags,
      required String outletName,
      required String merchantCategory,
      required List<String> merchantKeywords,
      required int searchWeight,
      required String searchWeightDetail,
      required String merchantLogo}) = _$_OutletCategoryDataResponse;

  factory _OutletCategoryDataResponse.fromJson(Map<String, dynamic> json) =
      _$_OutletCategoryDataResponse.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get outletId => throw _privateConstructorUsedError;
  @override
  bool get isNonSku => throw _privateConstructorUsedError;
  @override
  Detail get detail => throw _privateConstructorUsedError;
  @override
  dynamic get roundingDigit => throw _privateConstructorUsedError;
  @override
  dynamic get roundingType => throw _privateConstructorUsedError;
  @override
  bool get isLive => throw _privateConstructorUsedError;
  @override
  OrderMethod get orderMethod => throw _privateConstructorUsedError;
  @override
  String get merchantId => throw _privateConstructorUsedError;
  @override
  Distance get distance => throw _privateConstructorUsedError;
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
  int get searchWeight => throw _privateConstructorUsedError;
  @override
  String get searchWeightDetail => throw _privateConstructorUsedError;
  @override
  String get merchantLogo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OutletCategoryDataResponseCopyWith<_OutletCategoryDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
class _$DetailTearOff {
  const _$DetailTearOff();

  _Detail call(
      {required String name,
      required String address,
      required List<dynamic> taxesAndServices,
      required List<dynamic> location,
      required String phone,
      required String kurirPrice,
      required String deliveryType,
      required String maxRadius,
      required String driverPhone,
      required List<dynamic> area,
      required List<String> deliveryProvider,
      required List<dynamic> deliveryLocation,
      required String city}) {
    return _Detail(
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

  Detail fromJson(Map<String, Object> json) {
    return Detail.fromJson(json);
  }
}

/// @nodoc
const $Detail = _$DetailTearOff();

/// @nodoc
mixin _$Detail {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<dynamic> get taxesAndServices => throw _privateConstructorUsedError;
  List<dynamic> get location => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get kurirPrice => throw _privateConstructorUsedError;
  String get deliveryType => throw _privateConstructorUsedError;
  String get maxRadius => throw _privateConstructorUsedError;
  String get driverPhone => throw _privateConstructorUsedError;
  List<dynamic> get area => throw _privateConstructorUsedError;
  List<String> get deliveryProvider => throw _privateConstructorUsedError;
  List<dynamic> get deliveryLocation => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String address,
      List<dynamic> taxesAndServices,
      List<dynamic> location,
      String phone,
      String kurirPrice,
      String deliveryType,
      String maxRadius,
      String driverPhone,
      List<dynamic> area,
      List<String> deliveryProvider,
      List<dynamic> deliveryLocation,
      String city});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res> implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  final Detail _value;
  // ignore: unused_field
  final $Res Function(Detail) _then;

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
              as List<dynamic>,
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
              as List<dynamic>,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DetailCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$DetailCopyWith(_Detail value, $Res Function(_Detail) then) =
      __$DetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String address,
      List<dynamic> taxesAndServices,
      List<dynamic> location,
      String phone,
      String kurirPrice,
      String deliveryType,
      String maxRadius,
      String driverPhone,
      List<dynamic> area,
      List<String> deliveryProvider,
      List<dynamic> deliveryLocation,
      String city});
}

/// @nodoc
class __$DetailCopyWithImpl<$Res> extends _$DetailCopyWithImpl<$Res>
    implements _$DetailCopyWith<$Res> {
  __$DetailCopyWithImpl(_Detail _value, $Res Function(_Detail) _then)
      : super(_value, (v) => _then(v as _Detail));

  @override
  _Detail get _value => super._value as _Detail;

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
    return _then(_Detail(
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
              as List<dynamic>,
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
              as List<dynamic>,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Detail implements _Detail {
  const _$_Detail(
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

  factory _$_Detail.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final List<dynamic> taxesAndServices;
  @override
  final List<dynamic> location;
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
  final List<dynamic> deliveryLocation;
  @override
  final String city;

  @override
  String toString() {
    return 'Detail(name: $name, address: $address, taxesAndServices: $taxesAndServices, location: $location, phone: $phone, kurirPrice: $kurirPrice, deliveryType: $deliveryType, maxRadius: $maxRadius, driverPhone: $driverPhone, area: $area, deliveryProvider: $deliveryProvider, deliveryLocation: $deliveryLocation, city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Detail &&
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
  _$DetailCopyWith<_Detail> get copyWith =>
      __$DetailCopyWithImpl<_Detail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailToJson(this);
  }
}

abstract class _Detail implements Detail {
  const factory _Detail(
      {required String name,
      required String address,
      required List<dynamic> taxesAndServices,
      required List<dynamic> location,
      required String phone,
      required String kurirPrice,
      required String deliveryType,
      required String maxRadius,
      required String driverPhone,
      required List<dynamic> area,
      required List<String> deliveryProvider,
      required List<dynamic> deliveryLocation,
      required String city}) = _$_Detail;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$_Detail.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  List<dynamic> get taxesAndServices => throw _privateConstructorUsedError;
  @override
  List<dynamic> get location => throw _privateConstructorUsedError;
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
  List<dynamic> get deliveryLocation => throw _privateConstructorUsedError;
  @override
  String get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DetailCopyWith<_Detail> get copyWith => throw _privateConstructorUsedError;
}

Distance _$DistanceFromJson(Map<String, dynamic> json) {
  return _Distance.fromJson(json);
}

/// @nodoc
class _$DistanceTearOff {
  const _$DistanceTearOff();

  _Distance call({required String text, required double value}) {
    return _Distance(
      text: text,
      value: value,
    );
  }

  Distance fromJson(Map<String, Object> json) {
    return Distance.fromJson(json);
  }
}

/// @nodoc
const $Distance = _$DistanceTearOff();

/// @nodoc
mixin _$Distance {
  String get text => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistanceCopyWith<Distance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceCopyWith<$Res> {
  factory $DistanceCopyWith(Distance value, $Res Function(Distance) then) =
      _$DistanceCopyWithImpl<$Res>;
  $Res call({String text, double value});
}

/// @nodoc
class _$DistanceCopyWithImpl<$Res> implements $DistanceCopyWith<$Res> {
  _$DistanceCopyWithImpl(this._value, this._then);

  final Distance _value;
  // ignore: unused_field
  final $Res Function(Distance) _then;

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
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DistanceCopyWith<$Res> implements $DistanceCopyWith<$Res> {
  factory _$DistanceCopyWith(_Distance value, $Res Function(_Distance) then) =
      __$DistanceCopyWithImpl<$Res>;
  @override
  $Res call({String text, double value});
}

/// @nodoc
class __$DistanceCopyWithImpl<$Res> extends _$DistanceCopyWithImpl<$Res>
    implements _$DistanceCopyWith<$Res> {
  __$DistanceCopyWithImpl(_Distance _value, $Res Function(_Distance) _then)
      : super(_value, (v) => _then(v as _Distance));

  @override
  _Distance get _value => super._value as _Distance;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_Distance(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Distance implements _Distance {
  const _$_Distance({required this.text, required this.value});

  factory _$_Distance.fromJson(Map<String, dynamic> json) =>
      _$_$_DistanceFromJson(json);

  @override
  final String text;
  @override
  final double value;

  @override
  String toString() {
    return 'Distance(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Distance &&
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
  _$DistanceCopyWith<_Distance> get copyWith =>
      __$DistanceCopyWithImpl<_Distance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DistanceToJson(this);
  }
}

abstract class _Distance implements Distance {
  const factory _Distance({required String text, required double value}) =
      _$_Distance;

  factory _Distance.fromJson(Map<String, dynamic> json) = _$_Distance.fromJson;

  @override
  String get text => throw _privateConstructorUsedError;
  @override
  double get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DistanceCopyWith<_Distance> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderMethod _$OrderMethodFromJson(Map<String, dynamic> json) {
  return _OrderMethod.fromJson(json);
}

/// @nodoc
class _$OrderMethodTearOff {
  const _$OrderMethodTearOff();

  _OrderMethod call(
      {required bool forceSelect, required List<DefaultList> defaultList}) {
    return _OrderMethod(
      forceSelect: forceSelect,
      defaultList: defaultList,
    );
  }

  OrderMethod fromJson(Map<String, Object> json) {
    return OrderMethod.fromJson(json);
  }
}

/// @nodoc
const $OrderMethod = _$OrderMethodTearOff();

/// @nodoc
mixin _$OrderMethod {
  bool get forceSelect => throw _privateConstructorUsedError;
  List<DefaultList> get defaultList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderMethodCopyWith<OrderMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderMethodCopyWith<$Res> {
  factory $OrderMethodCopyWith(
          OrderMethod value, $Res Function(OrderMethod) then) =
      _$OrderMethodCopyWithImpl<$Res>;
  $Res call({bool forceSelect, List<DefaultList> defaultList});
}

/// @nodoc
class _$OrderMethodCopyWithImpl<$Res> implements $OrderMethodCopyWith<$Res> {
  _$OrderMethodCopyWithImpl(this._value, this._then);

  final OrderMethod _value;
  // ignore: unused_field
  final $Res Function(OrderMethod) _then;

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
              as List<DefaultList>,
    ));
  }
}

/// @nodoc
abstract class _$OrderMethodCopyWith<$Res>
    implements $OrderMethodCopyWith<$Res> {
  factory _$OrderMethodCopyWith(
          _OrderMethod value, $Res Function(_OrderMethod) then) =
      __$OrderMethodCopyWithImpl<$Res>;
  @override
  $Res call({bool forceSelect, List<DefaultList> defaultList});
}

/// @nodoc
class __$OrderMethodCopyWithImpl<$Res> extends _$OrderMethodCopyWithImpl<$Res>
    implements _$OrderMethodCopyWith<$Res> {
  __$OrderMethodCopyWithImpl(
      _OrderMethod _value, $Res Function(_OrderMethod) _then)
      : super(_value, (v) => _then(v as _OrderMethod));

  @override
  _OrderMethod get _value => super._value as _OrderMethod;

  @override
  $Res call({
    Object? forceSelect = freezed,
    Object? defaultList = freezed,
  }) {
    return _then(_OrderMethod(
      forceSelect: forceSelect == freezed
          ? _value.forceSelect
          : forceSelect // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultList: defaultList == freezed
          ? _value.defaultList
          : defaultList // ignore: cast_nullable_to_non_nullable
              as List<DefaultList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderMethod implements _OrderMethod {
  const _$_OrderMethod({required this.forceSelect, required this.defaultList});

  factory _$_OrderMethod.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderMethodFromJson(json);

  @override
  final bool forceSelect;
  @override
  final List<DefaultList> defaultList;

  @override
  String toString() {
    return 'OrderMethod(forceSelect: $forceSelect, defaultList: $defaultList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderMethod &&
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
  _$OrderMethodCopyWith<_OrderMethod> get copyWith =>
      __$OrderMethodCopyWithImpl<_OrderMethod>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderMethodToJson(this);
  }
}

abstract class _OrderMethod implements OrderMethod {
  const factory _OrderMethod(
      {required bool forceSelect,
      required List<DefaultList> defaultList}) = _$_OrderMethod;

  factory _OrderMethod.fromJson(Map<String, dynamic> json) =
      _$_OrderMethod.fromJson;

  @override
  bool get forceSelect => throw _privateConstructorUsedError;
  @override
  List<DefaultList> get defaultList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderMethodCopyWith<_OrderMethod> get copyWith =>
      throw _privateConstructorUsedError;
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
