import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'order_history.freezed.dart';
part 'order_history.g.dart';

OrderHistory orderHistoryFromJson(String str) =>
    OrderHistory.fromJson(json.decode(str));

String orderHistoryToJson(OrderHistory data) => json.encode(data.toJson());

@freezed
class OrderHistory with _$OrderHistory {
  const factory OrderHistory({
    required DateTime deviceTimestamp,
    required Outlet outlet,
    required String receiptCode,
    required int preorderPeriod,
    required String salesType,
    required String status,
    required String finalAmount,
    required String discountAmount,
  }) = _OrderHistory;

  factory OrderHistory.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryFromJson(json);
}

@freezed
class Outlet with _$Outlet {
  const factory Outlet({
    required Detail detail,
    required String poCutoff,
  }) = _Outlet;

  factory Outlet.fromJson(Map<String, dynamic> json) => _$OutletFromJson(json);
}

@freezed
class Detail with _$Detail {
  const factory Detail({
    required String name,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}
