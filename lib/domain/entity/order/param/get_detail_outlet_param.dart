import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_detail_outlet_param.freezed.dart';
part 'get_detail_outlet_param.g.dart';

GetDetailOutletParam emptyFromJson(String str) =>
    GetDetailOutletParam.fromJson(json.decode(str));

String emptyToJson(GetDetailOutletParam data) => json.encode(data.toJson());

@freezed
abstract class GetDetailOutletParam with _$GetDetailOutletParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetDetailOutletParam({
    required GetDetailOutletQueryParam queryString,
    required GetDetailOutletBodyParam body,
  }) = _GetDetailOutletParam;

  factory GetDetailOutletParam.fromJson(Map<String, dynamic> json) =>
      _$GetDetailOutletParamFromJson(json);
}

@freezed
abstract class GetDetailOutletBodyParam with _$GetDetailOutletBodyParam {
  const factory GetDetailOutletBodyParam() = _GetDetailOutletBodyParam;

  factory GetDetailOutletBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetDetailOutletBodyParamFromJson(json);
}

@freezed
abstract class GetDetailOutletQueryParam with _$GetDetailOutletQueryParam {
  const factory GetDetailOutletQueryParam({
    required String outletId,
  }) = _GetDetailOutletQueryParam;

  factory GetDetailOutletQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetDetailOutletQueryParamFromJson(json);
}
