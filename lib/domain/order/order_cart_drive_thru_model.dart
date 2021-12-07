import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'order_cart_drive_thru_model.freezed.dart';
part 'order_cart_drive_thru_model.g.dart';

OrderCartDriveThruModel emptyFromJson(String str) =>
    OrderCartDriveThruModel.fromJson(json.decode(str));

String emptyToJson(OrderCartDriveThruModel data) => json.encode(data.toJson());

@freezed
class OrderCartDriveThruModel with _$OrderCartDriveThruModel {
  const factory OrderCartDriveThruModel({
    required bool useSchedule,
    required DateTime selectedDate,
    required String selectedKeyClock,
    required String customerCarColor,
    required String customerCarNumber,
    required String customerCarType,
  }) = _OrderCartDriveThruModel;

  static String getEtaOrder(
      {DateTime? selectedDate, String? selectedKeyClock}) {
    final DateTime dateTime = selectedDate ?? DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-ddT');
    return formatter.format(dateTime) + (selectedKeyClock ?? "") + ":00+0700";
  }

  factory OrderCartDriveThruModel.fromJson(Map<String, dynamic> json) =>
      _$OrderCartDriveThruModelFromJson(json);
}
