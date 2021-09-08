// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_va_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopUpVADetails _$_$_TopUpVADetailsFromJson(Map<String, dynamic> json) {
  return _$_TopUpVADetails(
    orderId: json['orderId'] as String,
    title: json['title'] as String,
    vaNumber: json['vaNumber'] as String,
    amount: json['amount'] as String,
    fee: json['fee'] as String,
    finalAmount: json['finalAmount'] as String,
    expires: json['expires'] as int,
    expiresAt: DateTime.parse(json['expiresAt'] as String),
  );
}

Map<String, dynamic> _$_$_TopUpVADetailsToJson(_$_TopUpVADetails instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'title': instance.title,
      'vaNumber': instance.vaNumber,
      'amount': instance.amount,
      'fee': instance.fee,
      'finalAmount': instance.finalAmount,
      'expires': instance.expires,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
