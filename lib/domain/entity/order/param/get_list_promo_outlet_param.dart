import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_list_promo_outlet_param.freezed.dart';
part 'get_list_promo_outlet_param.g.dart';

GetListPromoOutletParam emptyFromJson(String str) =>
    GetListPromoOutletParam.fromJson(json.decode(str));

String emptyToJson(GetListPromoOutletParam data) => json.encode(data.toJson());

@freezed
class GetListPromoOutletParam with _$GetListPromoOutletParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetListPromoOutletParam({
    required GetListPromoOutletQueryParam queryString,
    required GetListPromoOutletBodyParam body,
  }) = _GetListPromoOutletParam;

  factory GetListPromoOutletParam.fromJson(Map<String, dynamic> json) =>
      _$GetListPromoOutletParamFromJson(json);
}

@freezed
class GetListPromoOutletBodyParam with _$GetListPromoOutletBodyParam {
  const factory GetListPromoOutletBodyParam() = _GetListPromoOutletBodyParam;

  factory GetListPromoOutletBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetListPromoOutletBodyParamFromJson(json);
}

@freezed
class GetListPromoOutletQueryParam with _$GetListPromoOutletQueryParam {
  const factory GetListPromoOutletQueryParam({
    required String outletId,
    required String merchantId,
  }) = _GetListPromoOutletQueryParam;

  factory GetListPromoOutletQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetListPromoOutletQueryParamFromJson(json);
}
