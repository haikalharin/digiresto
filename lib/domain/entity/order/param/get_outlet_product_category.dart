import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_outlet_product_category.freezed.dart';
part 'get_outlet_product_category.g.dart';

GetOutletProductCategoryParam emptyFromJson(String str) =>
    GetOutletProductCategoryParam.fromJson(json.decode(str));

String emptyToJson(GetOutletProductCategoryParam data) =>
    json.encode(data.toJson());

@freezed
abstract class GetOutletProductCategoryParam
    with _$GetOutletProductCategoryParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetOutletProductCategoryParam({
    required GetOutletProductCategoryQueryParam queryString,
    required GetOutletProductCategoryBodyParam body,
  }) = _GetOutletProductCategoryParam;

  factory GetOutletProductCategoryParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletProductCategoryParamFromJson(json);
}

@freezed
abstract class GetOutletProductCategoryBodyParam
    with _$GetOutletProductCategoryBodyParam {
  const factory GetOutletProductCategoryBodyParam() =
      _GetOutletProductCategoryBodyParam;

  factory GetOutletProductCategoryBodyParam.fromJson(
          Map<String, dynamic> json) =>
      _$GetOutletProductCategoryBodyParamFromJson(json);
}

@freezed
abstract class GetOutletProductCategoryQueryParam
    with _$GetOutletProductCategoryQueryParam {
  const factory GetOutletProductCategoryQueryParam({
    required String outletId,
  }) = _GetOutletProductCategoryQueryParam;

  factory GetOutletProductCategoryQueryParam.fromJson(
          Map<String, dynamic> json) =>
      _$GetOutletProductCategoryQueryParamFromJson(json);
}
