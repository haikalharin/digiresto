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
    required String endpointName,
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
    required OutletCategoryDataDistanceResponse distance,
  }) = _OutletCategoryDataResponse;

  factory OutletCategoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryDataResponseFromJson(json);
}

@freezed
abstract class OutletCategoryDataDistanceResponse
    with _$OutletCategoryDataDistanceResponse {
  const factory OutletCategoryDataDistanceResponse({
    required double realRadius,
    required double distanceValue,
    required String distance,
  }) = _OutletCategoryDataDistanceResponse;

  factory OutletCategoryDataDistanceResponse.fromJson(
          Map<String, dynamic> json) =>
      _$OutletCategoryDataDistanceResponseFromJson(json);
}

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
