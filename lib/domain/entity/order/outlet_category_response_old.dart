import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_category_response_old.freezed.dart';
part 'outlet_category_response_old.g.dart';

OutletCategoryResponseOld emptyFromJson(String str) =>
    OutletCategoryResponseOld.fromJson(json.decode(str));

String emptyToJson(OutletCategoryResponseOld data) =>
    json.encode(data.toJson());

@freezed
abstract class OutletCategoryResponseOld with _$OutletCategoryResponseOld {
  const factory OutletCategoryResponseOld({
    required StatusResponse response,
    required List<OutletCategoryDataResponse> data,
    required MetaResponse meta,
  }) = _OutletCategoryResponseOld;

  factory OutletCategoryResponseOld.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryResponseOldFromJson(json);
}

@freezed
abstract class OutletCategoryDataResponse with _$OutletCategoryDataResponse {
  const factory OutletCategoryDataResponse({
    required String? id,
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
    required String merchantLogo,
  }) = _OutletCategoryDataResponse;

  factory OutletCategoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryDataResponseFromJson(json);
}

@freezed
abstract class Detail with _$Detail {
  const factory Detail({
    required String name,
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
    required String city,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}

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
