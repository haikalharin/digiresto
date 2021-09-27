// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cart_dine_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderCartDineInModel _$$_OrderCartDineInModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderCartDineInModel(
      useSchedule: json['useSchedule'] as bool,
      selectedDate: DateTime.parse(json['selectedDate'] as String),
      selectedKeyClock: json['selectedKeyClock'] as String,
      selectedKeySmoking: json['selectedKeySmoking'] as String,
      pax: json['pax'] as int,
    );

Map<String, dynamic> _$$_OrderCartDineInModelToJson(
        _$_OrderCartDineInModel instance) =>
    <String, dynamic>{
      'useSchedule': instance.useSchedule,
      'selectedDate': instance.selectedDate.toIso8601String(),
      'selectedKeyClock': instance.selectedKeyClock,
      'selectedKeySmoking': instance.selectedKeySmoking,
      'pax': instance.pax,
    };
