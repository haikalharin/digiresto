// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentHistory _$$_PaymentHistoryFromJson(Map<String, dynamic> json) =>
    _$_PaymentHistory(
      pageSize: json['pageSize'] as int,
      onPage: json['onPage'] as int,
      status: json['status'] as String,
      totalCount: json['totalCount'] as int,
      creditLimit: json['creditLimit'] as String,
      accountBalance: json['accountBalance'] as String,
      listAccountHistoryDetails: (json['listAccountHistoryDetails']
              as List<dynamic>)
          .map((e) => PaymentHistoryDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaymentHistoryToJson(_$_PaymentHistory instance) =>
    <String, dynamic>{
      'pageSize': instance.pageSize,
      'onPage': instance.onPage,
      'status': instance.status,
      'totalCount': instance.totalCount,
      'creditLimit': instance.creditLimit,
      'accountBalance': instance.accountBalance,
      'listAccountHistoryDetails': instance.listAccountHistoryDetails,
    };

_$_PaymentHistoryDetail _$$_PaymentHistoryDetailFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentHistoryDetail(
      transferId: json['transferId'] as int,
      description: json['description'] as String,
      amount: json['amount'] as String,
      status: json['status'] as String,
      transactionNumber: json['transactionNumber'] as String,
      transferType: json['transferType'] as String,
      transactionDate: json['transactionDate'] as String,
      fee: json['fee'] as String,
      transferTypeName: json['transferTypeName'] as String,
      transferTypeDescription: json['transferTypeDescription'] as String,
      type: json['type'] as String,
      groupPayment: json['groupPayment'] as String,
      needReceiptInquiry: json['needReceiptInquiry'] as bool,
    );

Map<String, dynamic> _$$_PaymentHistoryDetailToJson(
        _$_PaymentHistoryDetail instance) =>
    <String, dynamic>{
      'transferId': instance.transferId,
      'description': instance.description,
      'amount': instance.amount,
      'status': instance.status,
      'transactionNumber': instance.transactionNumber,
      'transferType': instance.transferType,
      'transactionDate': instance.transactionDate,
      'fee': instance.fee,
      'transferTypeName': instance.transferTypeName,
      'transferTypeDescription': instance.transferTypeDescription,
      'type': instance.type,
      'groupPayment': instance.groupPayment,
      'needReceiptInquiry': instance.needReceiptInquiry,
    };
