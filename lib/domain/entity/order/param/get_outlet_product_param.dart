// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_outlet_product_param.freezed.dart';
part 'get_outlet_product_param.g.dart';

GetOutletProductParam emptyFromJson(String str) =>
    GetOutletProductParam.fromJson(json.decode(str));

String emptyToJson(GetOutletProductParam data) => json.encode(data.toJson());

@freezed
abstract class GetOutletProductParam with _$GetOutletProductParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetOutletProductParam({
    required GetOutletProductQueryParam queryString,
    required GetOutletProductBodyParam body,
  }) = _GetOutletProductParam;

  factory GetOutletProductParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletProductParamFromJson(json);
}

@freezed
abstract class GetOutletProductBodyParam with _$GetOutletProductBodyParam {
  const factory GetOutletProductBodyParam() = _GetOutletProductBodyParam;

  factory GetOutletProductBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletProductBodyParamFromJson(json);
}

@freezed
abstract class GetOutletProductQueryParam with _$GetOutletProductQueryParam {
  const factory GetOutletProductQueryParam({
    required String outletId,
    required String categoryId,
    required String filter,
    required int page,
    required int limit,
  }) = _GetOutletProductQueryParam;

  factory GetOutletProductQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletProductQueryParamFromJson(json);
}
