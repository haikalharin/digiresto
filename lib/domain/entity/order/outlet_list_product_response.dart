import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_list_product_response.freezed.dart';
part 'outlet_list_product_response.g.dart';

OutletListProductResponse emptyFromJson(String str) =>
    OutletListProductResponse.fromJson(json.decode(str));

String emptyToJson(OutletListProductResponse data) =>
    json.encode(data.toJson());

@freezed
class OutletListProductResponse with _$OutletListProductResponse {
  const factory OutletListProductResponse({
    required StatusResponse response,
    required List<OutletListProductDataResponse> data,
    required MetaResponse meta,
  }) = _OutletListProductResponse;

  factory OutletListProductResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletListProductResponseFromJson(json);
}

@freezed
class OutletListProductDataModifierGroupResponse
    with _$OutletListProductDataModifierGroupResponse {
  const factory OutletListProductDataModifierGroupResponse({
    required String name,
    required String id,
    required String code,
    required int allowMultiple,
    required int allowQuantity,
    required int minQuantity,
    required int maxQuantity,
    required List<OutletListProductDataSubModifierGroupResponse> modifiers,
  }) = _OutletListProductDataModifierGroupResponse;

  factory OutletListProductDataModifierGroupResponse.fromJson(
          Map<String, dynamic> json) =>
      _$OutletListProductDataModifierGroupResponseFromJson(json);
}

@freezed
class OutletListProductDataSubModifierGroupResponse
    with _$OutletListProductDataSubModifierGroupResponse {
  const factory OutletListProductDataSubModifierGroupResponse({
    required String code,
    required String? sku,
    required bool isPreorder,
    required int? preorderPeriod,
    required int? crossoutPrice,
    required int? stock,
    required int? limit,
    required String id,
    required String name,
    required int price,
    required int weight,
    required String? description,
    required String? image,
    required String categoryId,
    required String categoryCode,
    required String categoryName,
  }) = _OutletListProductDataSubModifierGroupResponse;

  factory OutletListProductDataSubModifierGroupResponse.fromJson(
          Map<String, dynamic> json) =>
      _$OutletListProductDataSubModifierGroupResponseFromJson(json);
}

@freezed
class OutletListProductDataResponse with _$OutletListProductDataResponse {
  const factory OutletListProductDataResponse({
    required String code,
    required String? sku,
    required bool isPreorder,
    required int? preorderPeriod,
    required int? crossoutPrice,
    required int? stock,
    required int? limit,
    required String id,
    required String name,
    required int price,
    required int weight,
    required String? description,
    required String? image,
    required String categoryId,
    required String categoryCode,
    required String categoryName,
    required List<OutletListProductDataVariantResponse> variants,
    required List<OutletListProductDataModifierGroupResponse> modifierGroups,
  }) = _OutletListProductDataResponse;

  factory OutletListProductDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletListProductDataResponseFromJson(json);
}

@freezed
class OutletListProductDataVariantResponse
    with _$OutletListProductDataVariantResponse {
  const factory OutletListProductDataVariantResponse({
    required String code,
    required String? sku,
    required bool isPreorder,
    required int? preorderPeriod,
    required int? crossoutPrice,
    required int? stock,
    required int? limit,
    required String id,
    required String name,
    required int price,
    required int weight,
    required String? description,
    required String? image,
    required String categoryId,
    required String categoryCode,
    required String categoryName,
    required List<OutletListProductDataModifierGroupResponse> modifierGroups,
  }) = _OutletListProductDataVariantResponse;

  static OutletListProductDataResponse variantToDetailProductResponse(
      OutletListProductDataVariantResponse data) {
    return OutletListProductDataResponse(
        categoryCode: data.categoryCode,
        categoryId: data.categoryId,
        categoryName: data.categoryName,
        code: data.code,
        crossoutPrice: data.crossoutPrice,
        description: data.description,
        id: data.id,
        image: data.image,
        isPreorder: data.isPreorder,
        limit: data.limit,
        modifierGroups: data.modifierGroups,
        name: data.name,
        preorderPeriod: data.preorderPeriod,
        price: data.price,
        sku: data.sku,
        stock: data.stock,
        variants: [],
        weight: data.weight);
  }

  factory OutletListProductDataVariantResponse.fromJson(
          Map<String, dynamic> json) =>
      _$OutletListProductDataVariantResponseFromJson(json);
}
