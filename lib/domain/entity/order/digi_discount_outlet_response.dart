import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'digi_discount_outlet_response.freezed.dart';
part 'digi_discount_outlet_response.g.dart';

DigiDiscountOutletResponse emptyFromJson(String str) =>
    DigiDiscountOutletResponse.fromJson(json.decode(str));

String emptyToJson(DigiDiscountOutletResponse data) =>
    json.encode(data.toJson());

@freezed
class DigiDiscountOutletResponse with _$DigiDiscountOutletResponse {
  const factory DigiDiscountOutletResponse({
    required StatusResponse response,
    required List<DigiDiscountOutletDataResponse> data,
    required MetaResponse meta,
  }) = _DigiDiscountOutletResponse;

  factory DigiDiscountOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$DigiDiscountOutletResponseFromJson(json);
}

@freezed
class DigiDiscountOutletDataResponse with _$DigiDiscountOutletDataResponse {
  const factory DigiDiscountOutletDataResponse({
    required String name,
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
    required String searchWeightDetail,
  }) = _DigiDiscountOutletDataResponse;

  factory DigiDiscountOutletDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DigiDiscountOutletDataResponseFromJson(json);
}

@freezed
class DigiDiscountOutletDataDetailResponse
    with _$DigiDiscountOutletDataDetailResponse {
  const factory DigiDiscountOutletDataDetailResponse({
    required String name,
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
    required List<dynamic> deliveryLocation,
    required String city,
  }) = _DigiDiscountOutletDataDetailResponse;

  factory DigiDiscountOutletDataDetailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DigiDiscountOutletDataDetailResponseFromJson(json);
}

@freezed
class DigiDiscountOutletDataDistanceResponse
    with _$DigiDiscountOutletDataDistanceResponse {
  const factory DigiDiscountOutletDataDistanceResponse({
    required String text,
    required dynamic value,
  }) = _DigiDiscountOutletDataDistanceResponse;

  factory DigiDiscountOutletDataDistanceResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DigiDiscountOutletDataDistanceResponseFromJson(json);
}

@freezed
abstract class DigiDiscountOutletDataOrderMethodResponse
    with _$DigiDiscountOutletDataOrderMethodResponse {
  const factory DigiDiscountOutletDataOrderMethodResponse({
    required bool forceSelect,
    required List<String> defaultList,
  }) = _DigiDiscountOutletDataOrderMethodResponse;

  factory DigiDiscountOutletDataOrderMethodResponse.fromJson(
          Map<String, dynamic> json) =>
      _$DigiDiscountOutletDataOrderMethodResponseFromJson(json);
}
