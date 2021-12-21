import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'voucher_outlet_response.freezed.dart';

part 'voucher_outlet_response.g.dart';

VoucherOutletResponse voucherOutletResponseFromJson(String str) =>
    VoucherOutletResponse.fromJson(json.decode(str));

String voucherOutletResponseToJson(VoucherOutletResponse data) =>
    json.encode(data.toJson());

@freezed
abstract class VoucherOutletResponse with _$VoucherOutletResponse {
  const factory VoucherOutletResponse({
    required Response response,
    required List<Datum> data,
    required Meta meta,
  }) = _VoucherOutletResponse;

  factory VoucherOutletResponse.fromJson(Map<String, dynamic> json) =>
      _$VoucherOutletResponseFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
  const factory Datum({
    required String name,
    required String code,
    required String description,
    required String url,
    required DateTime startDate,
    required DateTime endDate,
    required String startTime,
    required String endTime,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    required String version,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
abstract class Response with _$Response {
  const factory Response({
    required String code,
    required String status,
    required String message,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}
