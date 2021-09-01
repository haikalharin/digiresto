import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_outlet_by_merchant_param.freezed.dart';
part 'get_outlet_by_merchant_param.g.dart';

GetOutletByMerchantParam emptyFromJson(String str) =>
    GetOutletByMerchantParam.fromJson(json.decode(str));

String emptyToJson(GetOutletByMerchantParam data) => json.encode(data.toJson());

@freezed
abstract class GetOutletByMerchantParam with _$GetOutletByMerchantParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetOutletByMerchantParam({
    required GetOutletByMerchantQueryParam queryString,
    required GetOutletByMerchantBodyParam body,
  }) = _GetOutletByMerchantParam;

  factory GetOutletByMerchantParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByMerchantParamFromJson(json);
}

@freezed
abstract class GetOutletByMerchantBodyParam
    with _$GetOutletByMerchantBodyParam {
  const factory GetOutletByMerchantBodyParam() = _GetOutletByMerchantBodyParam;

  factory GetOutletByMerchantBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByMerchantBodyParamFromJson(json);
}

@freezed
abstract class GetOutletByMerchantQueryParam
    with _$GetOutletByMerchantQueryParam {
  const factory GetOutletByMerchantQueryParam({
    required String location,
    required int page,
    required String merchantId,
    required String filter,
  }) = _GetOutletByMerchantQueryParam;

  factory GetOutletByMerchantQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetOutletByMerchantQueryParamFromJson(json);
}
