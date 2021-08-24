import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_type_category_response.freezed.dart';
part 'outlet_type_category_response.g.dart';

OutletTypeCategoryResponse emptyFromJson(String str) =>
    OutletTypeCategoryResponse.fromJson(json.decode(str));

String emptyToJson(OutletTypeCategoryResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class OutletTypeCategoryResponse with _$OutletTypeCategoryResponse {
  const factory OutletTypeCategoryResponse({
    required StatusResponse response,
    required OutletTypeCategoryDataResponse data,
    required MetaResponse meta,
  }) = _OutletTypeCategoryResponse;

  factory OutletTypeCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletTypeCategoryResponseFromJson(json);
}

@freezed
abstract class OutletTypeCategoryDataResponse
    with _$OutletTypeCategoryDataResponse {
  const factory OutletTypeCategoryDataResponse({
    required List<PromoOutletDataMenuCategoryResponse> menuCategory,
  }) = _OutletTypeCategoryDataResponse;

  factory OutletTypeCategoryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletTypeCategoryDataResponseFromJson(json);
}

@freezed
abstract class PromoOutletDataMenuCategoryResponse
    with _$PromoOutletDataMenuCategoryResponse {
  const factory PromoOutletDataMenuCategoryResponse({
    required String id,
    required bool isEnable,
    required String title,
    required String icon,
    required PromoOutletDataMenuCategoryParamResponse param,
    required bool withLocation,
  }) = _PromoOutletDataMenuCategoryResponse;

  factory PromoOutletDataMenuCategoryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PromoOutletDataMenuCategoryResponseFromJson(json);
}

@freezed
abstract class PromoOutletDataMenuCategoryParamResponse
    with _$PromoOutletDataMenuCategoryParamResponse {
  const factory PromoOutletDataMenuCategoryParamResponse({
    required String category,
  }) = _PromoOutletDataMenuCategoryParamResponse;

  factory PromoOutletDataMenuCategoryParamResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PromoOutletDataMenuCategoryParamResponseFromJson(json);
}
