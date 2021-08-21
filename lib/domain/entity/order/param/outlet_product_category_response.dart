import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_product_category_response.freezed.dart';
part 'outlet_product_category_response.g.dart';

OutletProductCategoryResponse emptyFromJson(String str) =>
    OutletProductCategoryResponse.fromJson(json.decode(str));

String emptyToJson(OutletProductCategoryResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class OutletProductCategoryResponse
    with _$OutletProductCategoryResponse {
  const factory OutletProductCategoryResponse({
    required OutletProductCategoryStatusResponse response,
    required List<OutletProductDataResponse> data,
    required OutletProductMetaResponse meta,
  }) = _OutletProductCategoryResponse;

  factory OutletProductCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletProductCategoryResponseFromJson(json);
}

@freezed
abstract class OutletProductDataResponse with _$OutletProductDataResponse {
  const factory OutletProductDataResponse({
    required int id,
    required String code,
    required String name,
    required dynamic order,
  }) = _OutletProductDataResponse;

  factory OutletProductDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletProductDataResponseFromJson(json);
}

@freezed
abstract class OutletProductMetaResponse with _$OutletProductMetaResponse {
  const factory OutletProductMetaResponse({
    required String version,
  }) = _OutletProductMetaResponse;

  factory OutletProductMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletProductMetaResponseFromJson(json);
}

@freezed
abstract class OutletProductCategoryStatusResponse
    with _$OutletProductCategoryStatusResponse {
  const factory OutletProductCategoryStatusResponse({
    required String code,
    required String status,
    required String message,
  }) = _OutletProductCategoryStatusResponse;

  factory OutletProductCategoryStatusResponse.fromJson(
          Map<String, dynamic> json) =>
      _$OutletProductCategoryStatusResponseFromJson(json);
}
