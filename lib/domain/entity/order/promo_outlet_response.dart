import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_outlet_response.freezed.dart';
part 'promo_outlet_response.g.dart';

PromoOutletResponse emptyFromJson(String str) =>
    PromoOutletResponse.fromJson(json.decode(str));

String emptyToJson(PromoOutletResponse data) => json.encode(data.toJson());

@freezed
abstract class PromoOutletResponse with _$PromoOutletResponse {
  const factory PromoOutletResponse({
    required StatusResponse response,
    required PromoOutletDataResponse data,
    required MetaResponse meta,
  }) = _PromoOutletResponse;

  factory PromoOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$PromoOutletResponseFromJson(json);
}

@freezed
abstract class PromoOutletDataResponse with _$PromoOutletDataResponse {
  const factory PromoOutletDataResponse({
    required List<PromoOutletDataMenuCategoryResponse> menuCategory,
  }) = _PromoOutletDataResponse;

  factory PromoOutletDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PromoOutletDataResponseFromJson(json);
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
