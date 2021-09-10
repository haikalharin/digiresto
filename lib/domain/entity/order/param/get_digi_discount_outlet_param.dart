import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_digi_discount_outlet_param.freezed.dart';
part 'get_digi_discount_outlet_param.g.dart';

GetDigiDiscountOutletParam emptyFromJson(String str) =>
    GetDigiDiscountOutletParam.fromJson(json.decode(str));

String emptyToJson(GetDigiDiscountOutletParam data) =>
    json.encode(data.toJson());

@freezed
class GetDigiDiscountOutletParam with _$GetDigiDiscountOutletParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetDigiDiscountOutletParam({
    required GetDigiDiscountOutletQueryParam queryString,
    required GetDigiDiscountOutletBodyParam body,
  }) = _GetDigiDiscountOutletParam;

  factory GetDigiDiscountOutletParam.fromJson(Map<String, dynamic> json) =>
      _$GetDigiDiscountOutletParamFromJson(json);
}

@freezed
class GetDigiDiscountOutletBodyParam with _$GetDigiDiscountOutletBodyParam {
  const factory GetDigiDiscountOutletBodyParam() =
      _GetDigiDiscountOutletBodyParam;

  factory GetDigiDiscountOutletBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetDigiDiscountOutletBodyParamFromJson(json);
}

@freezed
class GetDigiDiscountOutletQueryParam with _$GetDigiDiscountOutletQueryParam {
  const factory GetDigiDiscountOutletQueryParam({
    required String location,
    required int page,
    required String filter,
  }) = _GetDigiDiscountOutletQueryParam;

  factory GetDigiDiscountOutletQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetDigiDiscountOutletQueryParamFromJson(json);
}
