// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderHistory _$_$_OrderHistoryFromJson(Map<String, dynamic> json) {
  return _$_OrderHistory(
    deviceTimestamp: DateTime.parse(json['deviceTimestamp'] as String),
    outlet: Outlet.fromJson(json['outlet'] as Map<String, dynamic>),
    receiptCode: json['receiptCode'] as String,
    preorderPeriod: json['preorderPeriod'] as int,
    salesType: json['salesType'] as String,
    status: json['status'] as String,
    finalAmount: json['finalAmount'] as String,
    discountAmount: json['discountAmount'] as String,
  );
}

Map<String, dynamic> _$_$_OrderHistoryToJson(_$_OrderHistory instance) =>
    <String, dynamic>{
      'deviceTimestamp': instance.deviceTimestamp.toIso8601String(),
      'outlet': instance.outlet,
      'receiptCode': instance.receiptCode,
      'preorderPeriod': instance.preorderPeriod,
      'salesType': instance.salesType,
      'status': instance.status,
      'finalAmount': instance.finalAmount,
      'discountAmount': instance.discountAmount,
    };

_$_Outlet _$_$_OutletFromJson(Map<String, dynamic> json) {
  return _$_Outlet(
    detail: Detail.fromJson(json['detail'] as Map<String, dynamic>),
    poCutoff: json['poCutoff'] as String,
  );
}

Map<String, dynamic> _$_$_OutletToJson(_$_Outlet instance) => <String, dynamic>{
      'detail': instance.detail,
      'poCutoff': instance.poCutoff,
    };

_$_Detail _$_$_DetailFromJson(Map<String, dynamic> json) {
  return _$_Detail(
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_DetailToJson(_$_Detail instance) => <String, dynamic>{
      'name': instance.name,
    };
