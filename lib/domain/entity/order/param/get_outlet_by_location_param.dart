import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_outlet_by_location_param.freezed.dart';
part 'get_outlet_by_location_param.g.dart';

GetOutletByLocationParam emptyFromJson(String str) =>
    GetOutletByLocationParam.fromJson(json.decode(str));

String emptyToJson(GetOutletByLocationParam data) => json.encode(data.toJson());

@freezed
abstract class GetOutletByLocationParam with _$GetOutletByLocationParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetOutletByLocationParam({
    required GetOutletByLocationQueryParam queryString,
    required GetOutletByLocationBodyParam body,
  }) = _GetOutletByLocationParam;

  factory GetOutletByLocationParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByLocationParamFromJson(json);
}

@freezed
abstract class GetOutletByLocationBodyParam
    with _$GetOutletByLocationBodyParam {
  const factory GetOutletByLocationBodyParam() = _GetOutletByLocationBodyParam;

  factory GetOutletByLocationBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByLocationBodyParamFromJson(json);
}

@freezed
abstract class GetOutletByLocationQueryParam
    with _$GetOutletByLocationQueryParam {
  const factory GetOutletByLocationQueryParam({
    required String location,
    required int page,
    required String filter,
  }) = _GetOutletByLocationQueryParam;

  factory GetOutletByLocationQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByLocationQueryParamFromJson(json);
}
