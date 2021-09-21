import 'dart:convert';

import 'package:digiresto/domain/entity/key_value_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'order_cart_dine_in_model.freezed.dart';
part 'order_cart_dine_in_model.g.dart';

OrderCartDineInModel emptyFromJson(String str) =>
    OrderCartDineInModel.fromJson(json.decode(str));

String emptyToJson(OrderCartDineInModel data) => json.encode(data.toJson());

@freezed
class OrderCartDineInModel with _$OrderCartDineInModel {
  const factory OrderCartDineInModel({
    required bool useSchedule,
    required DateTime selectedDate,
    required String selectedKeyClock,
    required String selectedKeySmoking,
    required int pax,
  }) = _OrderCartDineInModel;

  static final List<KeyValueModel> dataSmoking = [
    KeyValueModel(key: "1", value: "Smoking"),
    KeyValueModel(key: "2", value: "Non Smoking"),
  ];

  static bool isSmoking(String key) {
    for (int i = 0; i <= dataSmoking.toList().length; i++) {
      if (dataSmoking.toList()[i].key == key) {
        return dataSmoking.toList()[i].value! == "Smoking";
      }
    }
    return false;
  }

  static String getValueSmoking(String key) {
    for (int i = 0; i <= dataSmoking.toList().length; i++) {
      if (dataSmoking.toList()[i].key == key) {
        return dataSmoking.toList()[i].value!;
      }
    }
    return "";
  }

  static String getEtaOrder(
      {DateTime? selectedDate, String? selectedKeyClock}) {
    final DateTime dateTime = selectedDate ?? DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-ddT');
    return formatter.format(dateTime) + (selectedKeyClock ?? "") + ":00+0700";
  }

  factory OrderCartDineInModel.fromJson(Map<String, dynamic> json) =>
      _$OrderCartDineInModelFromJson(json);
}
