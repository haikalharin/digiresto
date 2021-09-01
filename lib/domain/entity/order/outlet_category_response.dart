import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_category_response.freezed.dart';
part 'outlet_category_response.g.dart';

OutletCategoryResponse emptyFromJson(String str) =>
    OutletCategoryResponse.fromJson(json.decode(str));

String emptyToJson(OutletCategoryResponse data) => json.encode(data.toJson());

@freezed
class OutletCategoryResponse with _$OutletCategoryResponse {
  const factory OutletCategoryResponse({
    required StatusResponse response,
    required List<OutletCategoryDataResponse> data,
    required MetaResponse meta,
  }) = _OutletCategoryResponse;

  factory OutletCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletCategoryResponseFromJson(json);
}

@freezed
class OutletCategoryDataResponse with _$OutletCategoryDataResponse {
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
class OutletCategoryDataDistanceResponse
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
