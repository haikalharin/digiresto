import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'menu_category.freezed.dart';
part 'menu_category.g.dart';

List<MenuCategory> menuCategoryFromJson(String str) => List<MenuCategory>.from(
    json.decode(str).map((x) => MenuCategory.fromJson(x)));

String menuCategoryToJson(List<MenuCategory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class MenuCategory with _$MenuCategory {
  const MenuCategory._();
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
    required Map<String, dynamic> param,
    @JsonKey(
      includeIfNull: true,
      defaultValue: <Filter>[],
    )
        required List<Filter>? filter,
  }) = _MenuCategory;

  String get getTitle => I10n.current.lang == 'en' ? title.en : title.id;
  String get getDescription =>
      I10n.current.lang == 'en' ? description.en : description.id;

  factory MenuCategory.fromJson(Map<String, dynamic> json) =>
      _$MenuCategoryFromJson(json);
}

@freezed
class Description with _$Description {
  const factory Description({
    required String id,
    required String en,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}

@freezed
class Filter with _$Filter {
  const factory Filter({
    required List<OptionItem>? options,
    required bool? search,
    required String? type,
    required String? key,
    required FilterParam? param,
    required String? value,
    required String? filterDefault,
    required String? defaultThresholdTime,
    required bool? multiple,
  }) = _Filter;

  factory Filter.fromJson(Map<String, dynamic> json) => _$FilterFromJson(json);
}

@freezed
class OptionItem with _$OptionItem {
  const OptionItem._();
  const factory OptionItem({
    required Description? text,
    required OptionItemParam? param,
    required String? icon,
    required Description? description,
    required String? value,
  }) = _OptionItem;

  String get getTitle =>
      I10n.current.lang == 'en' ? text?.en ?? "-" : text?.id ?? "-";
  String get getDescription => I10n.current.lang == 'en'
      ? description?.en ?? "-"
      : description?.id ?? "-";

  factory OptionItem.fromJson(Map<String, dynamic> json) =>
      _$OptionItemFromJson(json);
}

@freezed
class OptionItemParam with _$OptionItemParam {
  const factory OptionItemParam({
    required String? period,
  }) = _OptionItemParam;

  factory OptionItemParam.fromJson(Map<String, dynamic> json) =>
      _$OptionItemParamFromJson(json);
}

@freezed
class FilterParam with _$FilterParam {
  const factory FilterParam({
    required String? mealsTypes,
    required String? preOrderDate,
  }) = _FilterParam;

  factory FilterParam.fromJson(Map<String, dynamic> json) =>
      _$FilterParamFromJson(json);
}
