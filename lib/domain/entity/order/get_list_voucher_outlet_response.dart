import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_list_voucher_outlet_response.freezed.dart';
part 'get_list_voucher_outlet_response.g.dart';

GetListVoucherOutletResponse emptyFromJson(String str) =>
    GetListVoucherOutletResponse.fromJson(json.decode(str));

String emptyToJson(GetListVoucherOutletResponse data) =>
    json.encode(data.toJson());

@freezed
class GetListVoucherOutletResponse with _$GetListVoucherOutletResponse {
  const factory GetListVoucherOutletResponse({
    required StatusResponse response,
    required List<GetListVoucherOutletDataResponse> data,
    required MetaResponse meta,
  }) = _GetListVoucherOutletResponse;

  factory GetListVoucherOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$GetListVoucherOutletResponseFromJson(json);
}

@freezed
class GetListVoucherOutletDataResponse with _$GetListVoucherOutletDataResponse {
  const factory GetListVoucherOutletDataResponse({
    required String name,
    required String code,
  }) = _GetListVoucherOutletDataResponse;

  factory GetListVoucherOutletDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetListVoucherOutletDataResponseFromJson(json);
}
