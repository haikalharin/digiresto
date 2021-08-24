import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_promo_outlet_param.freezed.dart';
part 'get_promo_outlet_param.g.dart';

GetPromoOutletParam emptyFromJson(String str) =>
    GetPromoOutletParam.fromJson(json.decode(str));

String emptyToJson(GetPromoOutletParam data) => json.encode(data.toJson());

@freezed
abstract class GetPromoOutletParam with _$GetPromoOutletParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetPromoOutletParam({
    required GetPromoOutletQueryParam queryString,
    required GetPromoOutletBodyParam body,
  }) = _GetPromoOutletParam;

  factory GetPromoOutletParam.fromJson(Map<String, dynamic> json) =>
      _$GetPromoOutletParamFromJson(json);
}

@freezed
abstract class GetPromoOutletBodyParam with _$GetPromoOutletBodyParam {
  const factory GetPromoOutletBodyParam() = _GetPromoOutletBodyParam;

  factory GetPromoOutletBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetPromoOutletBodyParamFromJson(json);
}

@freezed
abstract class GetPromoOutletQueryParam with _$GetPromoOutletQueryParam {
  const factory GetPromoOutletQueryParam({
    required String location,
    required int page,
    required String filter,
  }) = _GetPromoOutletQueryParam;

  factory GetPromoOutletQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetPromoOutletQueryParamFromJson(json);
}
