// To parse this JSON data, do
//
//     final topUpMethod = topUpMethodFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'top_up_method.freezed.dart';
part 'top_up_method.g.dart';

TopUpMethod topUpMethodFromJson(String str) =>
    TopUpMethod.fromJson(json.decode(str));

String topUpMethodToJson(TopUpMethod data) => json.encode(data.toJson());

@freezed
class TopUpMethod with _$TopUpMethod {
  @JsonSerializable(includeIfNull: true, explicitToJson: true)
  const factory TopUpMethod({
    required String description,
    required String destination,
    required String destinationId,
    required String id,
    required bool isEnable,
    required String title,
    required String backgroundColor,
    required String icon,
    required List<TopUpSubCategory> subCategory,
  }) = _TopUpMethod;

  factory TopUpMethod.fromJson(Map<String, dynamic> json) =>
      _$TopUpMethodFromJson(json);
}

@freezed
class TopUpSubCategory with _$TopUpSubCategory {
  @JsonSerializable(includeIfNull: true, explicitToJson: true)
  const factory TopUpSubCategory({
    required String description,
    required String destination,
    required String destinationId,
    required String id,
    required bool isEnable,
    required String title,
    required TopUpSubCategoryParam param,
  }) = _TopUpSubCategory;

  factory TopUpSubCategory.fromJson(Map<String, dynamic> json) =>
      _$TopUpSubCategoryFromJson(json);
}

@freezed
class TopUpSubCategoryParam with _$TopUpSubCategoryParam {
  @JsonSerializable(includeIfNull: true, explicitToJson: true)
  const factory TopUpSubCategoryParam({
    required String bankCode,
    required String customerPhone,
    required String? fee,
  }) = _TopUpSubCategoryParam;

  factory TopUpSubCategoryParam.fromJson(Map<String, dynamic> json) =>
      _$TopUpSubCategoryParamFromJson(json);
}
