import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_outlet_by_category_param.freezed.dart';
part 'get_outlet_by_category_param.g.dart';

GetOutletByCategoryParam emptyFromJson(String str) =>
    GetOutletByCategoryParam.fromJson(json.decode(str));

String emptyToJson(GetOutletByCategoryParam data) => json.encode(data.toJson());

@freezed
class GetOutletByCategoryParam with _$GetOutletByCategoryParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetOutletByCategoryParam({
    required GetOutletByCategoryQueryParam queryString,
    required GetOutletByCategoryBodyParam body,
  }) = _GetOutletByCategoryParam;

  factory GetOutletByCategoryParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByCategoryParamFromJson(json);
}

@freezed
class GetOutletByCategoryBodyParam with _$GetOutletByCategoryBodyParam {
  const factory GetOutletByCategoryBodyParam() = _GetOutletByCategoryBodyParam;

  factory GetOutletByCategoryBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByCategoryBodyParamFromJson(json);
}

@freezed
class GetOutletByCategoryQueryParam with _$GetOutletByCategoryQueryParam {
  const factory GetOutletByCategoryQueryParam({
    required String location,
    required int page,
    required String category,
    required String filter,
  }) = _GetOutletByCategoryQueryParam;

  factory GetOutletByCategoryQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByCategoryQueryParamFromJson(json);
}
