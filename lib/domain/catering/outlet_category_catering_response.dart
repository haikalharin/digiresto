

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'outlet_category_catering_response.freezed.dart';
part 'outlet_category_catering_response.g.dart';

OutletCategoryCateringResponse outletCategoryCateringResponseFromJson(String str) => OutletCategoryCateringResponse.fromJson(json.decode(str));

String outletCategoryCateringResponseToJson(OutletCategoryCateringResponse data) => json.encode(data.toJson());

@freezed
abstract class OutletCategoryCateringResponse with _$OutletCategoryCateringResponse {
  const factory OutletCategoryCateringResponse({
    required StatusResponse response,
    required Data data,
    required Meta meta,
  }) = _OutletCategoryCateringResponse;

  factory OutletCategoryCateringResponse.fromJson(Map<String, dynamic> json) => _$OutletCategoryCateringResponseFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required List<MenuCategory> menuCategory,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class MenuCategory with _$MenuCategory {
  const factory MenuCategory({
    required String id,
    required bool isEnable,
    required Description title,
    required Description description,
    required bool withLocation,
    required bool isSearchable,
    required bool isHideViewAll,
    required bool isHideMerchantName,
    required bool isHideCity,
    required bool isHideDistance,
    required String menuCategoryIcon,
    required String endpoint,
    required String model,
    required MenuCategoryParam param,
    required List<Filter> filter,
    required String minVersion,
    required String icon,
    required String iconLama,
  }) = _MenuCategory;

  factory MenuCategory.fromJson(Map<String, dynamic> json) => _$MenuCategoryFromJson(json);
}

@freezed
abstract class Description with _$Description {
  const factory Description({
    required String id,
    required String en,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);
}

@freezed
abstract class Filter with _$Filter {
  const factory Filter({
    required List<Option> options,
    required bool search,
    required String type,
    required String key,
    required FilterParam param,
    required String value,
    required String filterDefault,
    required String defaultThresholdTime,
    required bool multiple,
  }) = _Filter;

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);
}

@freezed
abstract class Option with _$Option {
  const factory Option({
    required Description text,
    required OptionParam param,
    required String icon,
    required Description description,
    required String value,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}

@freezed
abstract class OptionParam with _$OptionParam {
  const factory OptionParam({
    required String period,
  }) = _OptionParam;

  factory OptionParam.fromJson(Map<String, dynamic> json) => _$OptionParamFromJson(json);
}

@freezed
abstract class FilterParam with _$FilterParam {
  const factory FilterParam({
    required String mealsTypes,
    required String preOrderDate,
  }) = _FilterParam;

  factory FilterParam.fromJson(Map<String, dynamic> json) => _$FilterParamFromJson(json);
}

@freezed
abstract class MenuCategoryParam with _$MenuCategoryParam {
  const factory MenuCategoryParam({
    required String excludeMerchantCategories,
    required String includePromoRewards,
    required bool isGrouping,
    required bool isCatering,
    required String category,
    required String merchantId,
  }) = _MenuCategoryParam;

  factory MenuCategoryParam.fromJson(Map<String, dynamic> json) => _$MenuCategoryParamFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required String version,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
abstract class StatusResponse with _$StatusResponse {
  const factory StatusResponse({
    required String code,
    required String status,
    required String message,
  }) = _StatusResponse;

  factory StatusResponse.fromJson(Map<String, dynamic> json) => _$StatusResponseFromJson(json);
}
