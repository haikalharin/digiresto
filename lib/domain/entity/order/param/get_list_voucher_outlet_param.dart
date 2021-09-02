import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_list_voucher_outlet_param.freezed.dart';
part 'get_list_voucher_outlet_param.g.dart';

GetListVoucherOutletParam emptyFromJson(String str) =>
    GetListVoucherOutletParam.fromJson(json.decode(str));

String emptyToJson(GetListVoucherOutletParam data) =>
    json.encode(data.toJson());

@freezed
abstract class GetListVoucherOutletParam with _$GetListVoucherOutletParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetListVoucherOutletParam({
    required GetListVoucherOutletQueryParam queryString,
    required GetListVoucherOutletBodyParam body,
  }) = _GetListVoucherOutletParam;

  factory GetListVoucherOutletParam.fromJson(Map<String, dynamic> json) =>
      _$GetListVoucherOutletParamFromJson(json);
}

@freezed
abstract class GetListVoucherOutletBodyParam
    with _$GetListVoucherOutletBodyParam {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetListVoucherOutletBodyParam() =
      _GetListVoucherOutletBodyParam;

  factory GetListVoucherOutletBodyParam.fromJson(Map<String, dynamic> json) =>
      _$GetListVoucherOutletBodyParamFromJson(json);
}

@freezed
abstract class GetListVoucherOutletQueryParam
    with _$GetListVoucherOutletQueryParam {
  const factory GetListVoucherOutletQueryParam({
    required String outletId,
    required String merchantId,
  }) = _GetListVoucherOutletQueryParam;

  factory GetListVoucherOutletQueryParam.fromJson(Map<String, dynamic> json) =>
      _$GetListVoucherOutletQueryParamFromJson(json);
}
