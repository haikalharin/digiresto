import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'complain_category.freezed.dart';
part 'complain_category.g.dart';

ComplainCategory complainCategoryFromJson(String str) =>
    ComplainCategory.fromJson(json.decode(str));

String complainCategoryToJson(ComplainCategory data) =>
    json.encode(data.toJson());

@freezed
abstract class ComplainCategory with _$ComplainCategory {
  const factory ComplainCategory({
    required List<Complain> data,
  }) = _ComplainCategory;

  factory ComplainCategory.fromJson(Map<String, dynamic> json) =>
      _$ComplainCategoryFromJson(json);
}

@freezed
abstract class Complain with _$Complain {
  const factory Complain({
    required String id,
    required String description,
    required bool image_required,
    required bool consumed_date,
  }) = _Complain;

  factory Complain.fromJson(Map<String, dynamic> json) =>
      _$ComplainFromJson(json);
}
