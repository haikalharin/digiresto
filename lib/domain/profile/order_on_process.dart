import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_on_process.freezed.dart';
part 'order_on_process.g.dart';

OrderOnProccess orderOnProccessFromJson(String str) =>
    OrderOnProccess.fromJson(json.decode(str));

String orderOnProccessToJson(OrderOnProccess data) =>
    json.encode(data.toJson());

@freezed
class OrderOnProccess with _$OrderOnProccess {
  const factory OrderOnProccess({
    required DateTime deviceTimestamp,
    required Outlet outlet,
    required String receiptCode,
    required int preorderPeriod,
    required String salesType,
    required String status,
    required String finalAmount,
    required String discountAmount,
  }) = _OrderOnProccess;

  factory OrderOnProccess.fromJson(Map<String, dynamic> json) =>
      _$OrderOnProccessFromJson(json);
}

@freezed
class Outlet with _$Outlet {
  const factory Outlet({
    required OutletDetail detail,
    required String poCutoff,
  }) = _Outlet;

  factory Outlet.fromJson(Map<String, dynamic> json) => _$OutletFromJson(json);
}

@freezed
class OutletDetail with _$OutletDetail {
  const factory OutletDetail({
    required String name,
  }) = _OutletDetail;

  factory OutletDetail.fromJson(Map<String, dynamic> json) =>
      _$OutletDetailFromJson(json);
}
