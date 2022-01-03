import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_payment_method_param.freezed.dart';
part 'get_payment_method_param.g.dart';

GetPaymentMethodParam emptyFromJson(String str) =>
    GetPaymentMethodParam.fromJson(json.decode(str));

String emptyToJson(GetPaymentMethodParam data) => json.encode(data.toJson());

@freezed
class GetPaymentMethodParam with _$GetPaymentMethodParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetPaymentMethodParam({
    required GetPaymentMethodQueryParam queryString,
    required GetPaymentMethodBodyParam body,
  }) = _GetPaymentMethodParam;

  factory GetPaymentMethodParam.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentMethodParamFromJson(json);
}

@freezed
class GetPaymentMethodBodyParam with _$GetPaymentMethodBodyParam {
  const factory GetPaymentMethodBodyParam() = _GetPaymentMethodBodyParam;

  factory GetPaymentMethodBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentMethodBodyParamFromJson(json);
}

@freezed
class GetPaymentMethodQueryParam with _$GetPaymentMethodQueryParam {
  const factory GetPaymentMethodQueryParam(
      {required String outletName,
      required String salesType}) = _GetPaymentMethodQueryParam;

  factory GetPaymentMethodQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetPaymentMethodQueryParamFromJson(json);
}
