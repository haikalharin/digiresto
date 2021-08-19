// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_category_response.freezed.dart';
part 'outlet_category_response.g.dart';

OutletCategoryResponse emptyFromJson(String str) =>
    OutletCategoryResponse.fromJson(json.decode(str));

String emptyToJson(OutletCategoryResponse data) => json.encode(data.toJson());

@freezed
abstract class OutletCategoryResponse with _$OutletCategoryResponse {
  const factory OutletCategoryResponse({
    required OutletCategoryResponses response,
    required List<OutletCategoryDataResponse> data,
    required OutletCategoryMetaResponse meta,
  }) = _OutletCategoryResponse;

  factory OutletCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryResponseFromJson(json);
}

@freezed
abstract class OutletCategoryDataResponse with _$OutletCategoryDataResponse {
  const factory OutletCategoryDataResponse({
    required String id,
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
    required Category category,
    required String callbackUrl,
    required List<String> merchantTags,
    required String outletName,
    required String merchantCategory,
    required List<String> merchantKeywords,
    required int searchWeight,
    required SearchWeightDetail searchWeightDetail,
    required String merchantLogo,
  }) = _OutletCategoryDataResponse;

  factory OutletCategoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryDataResponseFromJson(json);
}

enum Category { RESTO }

final categoryValues = EnumValues({"resto": Category.RESTO});

@freezed
abstract class Detail with _$Detail {
  const factory Detail({
    required String name,
    required String address,
    required List<dynamic> taxesAndServices,
    required List<dynamic> location,
    required String phone,
    required String kurirPrice,
    required DeliveryType deliveryType,
    required String maxRadius,
    required String driverPhone,
    required List<dynamic> area,
    required List<String> deliveryProvider,
    required List<dynamic> deliveryLocation,
    required String city,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}

enum DeliveryType { RADIUS, EMPTY }

final deliveryTypeValues =
    EnumValues({"": DeliveryType.EMPTY, "radius": DeliveryType.RADIUS});

@freezed
abstract class Distance with _$Distance {
  const factory Distance({
    required String text,
    required double value,
  }) = _Distance;

  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);
}

@freezed
abstract class OrderMethod with _$OrderMethod {
  const factory OrderMethod({
    required bool forceSelect,
    required List<DefaultList> defaultList,
  }) = _OrderMethod;

  factory OrderMethod.fromJson(Map<String, dynamic> json) =>
      _$OrderMethodFromJson(json);
}

enum DefaultList { DINE_IN, TAKE_AWAY, ONLINE_DRIVER, DRIVE_THRU }

final defaultListValues = EnumValues({
  "dineIn": DefaultList.DINE_IN,
  "driveThru": DefaultList.DRIVE_THRU,
  "onlineDriver": DefaultList.ONLINE_DRIVER,
  "takeAway": DefaultList.TAKE_AWAY
});

enum SearchWeightDetail { THE_0000 }

final searchWeightDetailValues =
    EnumValues({"0|0|0|0": SearchWeightDetail.THE_0000});

@freezed
abstract class OutletCategoryMetaResponse with _$OutletCategoryMetaResponse {
  const factory OutletCategoryMetaResponse({
    required String version,
  }) = _OutletCategoryMetaResponse;

  factory OutletCategoryMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryMetaResponseFromJson(json);
}

@freezed
abstract class OutletCategoryResponses with _$OutletCategoryResponses {
  const factory OutletCategoryResponses({
    required String code,
    required String status,
    required String message,
  }) = _OutletCategoryResponses;

  factory OutletCategoryResponses.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryResponsesFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
