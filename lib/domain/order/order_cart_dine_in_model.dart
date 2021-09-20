import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

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

  factory OrderCartDineInModel.fromJson(Map<String, dynamic> json) =>
      _$OrderCartDineInModelFromJson(json);
}
