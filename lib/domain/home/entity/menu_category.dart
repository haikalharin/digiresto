import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'menu_category.freezed.dart';
part 'menu_category.g.dart';

MenuCategory menuCategoryFromJson(String str) =>
    MenuCategory.fromJson(json.decode(str));

String menuCategoryToJson(MenuCategory data) => json.encode(data.toJson());

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
    required String icon,
    required String endpoint,
    required String model,
    required Param param,
  }) = _MenuCategory;

  factory MenuCategory.fromJson(Map<String, dynamic> json) =>
      _$MenuCategoryFromJson(json);
}

@freezed
abstract class Description with _$Description {
  const factory Description({
    required String id,
    required String en,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}

@freezed
abstract class Param with _$Param {
  const factory Param({
    @JsonKey(includeIfNull: true) required String? excludeMerchantCategories,
  }) = _Param;

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);
}
