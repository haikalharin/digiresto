import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_list_product_response.freezed.dart';
part 'outlet_list_product_response.g.dart';

OutletListProductResponse emptyFromJson(String str) =>
    OutletListProductResponse.fromJson(json.decode(str));

String emptyToJson(OutletListProductResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class OutletListProductResponse with _$OutletListProductResponse {
  const factory OutletListProductResponse({
    required OutletListProductStatusResponse response,
    required List<OutletListProductDataResponse> data,
    required OutletListProductMetaResponse meta,
  }) = _OutletListProductResponse;

  factory OutletListProductResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletListProductResponseFromJson(json);
}

@freezed
abstract class OutletListProductDataModifierGroupResponse
    with _$OutletListProductDataModifierGroupResponse {
  const factory OutletListProductDataModifierGroupResponse({
    required String name,
    required String id,
    required String code,
    required int allowMultiple,
    required int allowQuantity,
    required int minQuantity,
    required int maxQuantity,
    required List<OutletListProductDataResponse> modifiers,
  }) = _OutletListProductDataModifierGroupResponse;

  factory OutletListProductDataModifierGroupResponse.fromJson(
          Map<String, dynamic> json) =>
      _$OutletListProductDataModifierGroupResponseFromJson(json);
}

@freezed
abstract class OutletListProductDataResponse
    with _$OutletListProductDataResponse {
  const factory OutletListProductDataResponse({
    required String code,
    required String sku,
    required bool isPreorder,
    required int preorderPeriod,
    required int? crossoutPrice,
    required int stock,
    required dynamic limit,
    required String id,
    required String name,
    required int price,
    required int weight,
    required String description,
    required String image,
    required String categoryId,
    required String categoryCode,
    required String categoryName,
    required List<OutletListProductDataResponse> variants,
    required List<OutletListProductDataModifierGroupResponse> modifierGroups,
  }) = _OutletListProductDataResponse;

  factory OutletListProductDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletListProductDataResponseFromJson(json);
}

@freezed
abstract class OutletListProductMetaResponse
    with _$OutletListProductMetaResponse {
  const factory OutletListProductMetaResponse({
    required String version,
  }) = _OutletListProductMetaResponse;

  factory OutletListProductMetaResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletListProductMetaResponseFromJson(json);
}

@freezed
abstract class OutletListProductStatusResponse
    with _$OutletListProductStatusResponse {
  const factory OutletListProductStatusResponse({
    required String code,
    required String status,
    required String message,
  }) = _OutletListProductStatusResponse;

  factory OutletListProductStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletListProductStatusResponseFromJson(json);
}
