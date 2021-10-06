// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_bank_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopUpBankDetails _$$_TopUpBankDetailsFromJson(Map<String, dynamic> json) =>
    _$_TopUpBankDetails(
      formattedTransactionDate:
          DateTime.parse(json['formattedTransactionDate'] as String),
      bankAccName: json['bankAccName'] as String,
      bankName: json['bankName'] as String,
      formattedUniqueAmount: json['formattedUniqueAmount'] as String,
      bankAccNo: json['bankAccNo'] as String,
      transactionDate: DateTime.parse(json['transactionDate'] as String),
      uniqueAmount: json['uniqueAmount'] as String,
      expires: json['expires'] as int,
      expiresAt: DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$_TopUpBankDetailsToJson(_$_TopUpBankDetails instance) =>
    <String, dynamic>{
      'formattedTransactionDate':
          instance.formattedTransactionDate.toIso8601String(),
      'bankAccName': instance.bankAccName,
      'bankName': instance.bankName,
      'formattedUniqueAmount': instance.formattedUniqueAmount,
      'bankAccNo': instance.bankAccNo,
      'transactionDate': instance.transactionDate.toIso8601String(),
      'uniqueAmount': instance.uniqueAmount,
      'expires': instance.expires,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
