// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_up_pending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopUpPending _$_$_TopUpPendingFromJson(Map<String, dynamic> json) {
  return _$_TopUpPending(
    customerPhone: json['customerPhone'] as String,
    paymentType: json['paymentType'] as String,
    detail: TopUpDetail.fromJson(json['detail'] as Map<String, dynamic>),
    status: json['status'] as String,
    isDelete: json['is_delete'] as bool,
    createdDate: DateTime.parse(json['created_date'] as String),
    billingId: json['billingId'] as String,
  );
}

Map<String, dynamic> _$_$_TopUpPendingToJson(_$_TopUpPending instance) =>
    <String, dynamic>{
      'customerPhone': instance.customerPhone,
      'paymentType': instance.paymentType,
      'detail': instance.detail,
      'status': instance.status,
      'is_delete': instance.isDelete,
      'created_date': instance.createdDate.toIso8601String(),
      'billingId': instance.billingId,
    };

_$_TopUpDetail _$_$_TopUpDetailFromJson(Map<String, dynamic> json) {
  return _$_TopUpDetail(
    orderId: json['orderId'] as String?,
    title: json['title'] as String?,
    vaNumber: json['vaNumber'] as String?,
    amount: json['amount'] as String?,
    fee: json['fee'] as String?,
    finalAmount: json['finalAmount'] as String?,
    serviceProvider: json['serviceProvider'] as String?,
    formattedTransactionDate: json['formattedTransactionDate'] == null
        ? null
        : DateTime.parse(json['formattedTransactionDate'] as String),
    bankAccName: json['bankAccName'] as String?,
    bankName: json['bankName'] as String?,
    formattedUniqueAmount: json['formattedUniqueAmount'] as String?,
    bankAccNo: json['bankAccNo'] as String?,
    transactionDate: json['transactionDate'] == null
        ? null
        : DateTime.parse(json['transactionDate'] as String),
    uniqueAmount: json['uniqueAmount'] as String?,
    expires: json['expires'] as int,
    expiresAt: DateTime.parse(json['expiresAt'] as String),
  );
}

Map<String, dynamic> _$_$_TopUpDetailToJson(_$_TopUpDetail instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'title': instance.title,
      'vaNumber': instance.vaNumber,
      'amount': instance.amount,
      'fee': instance.fee,
      'finalAmount': instance.finalAmount,
      'serviceProvider': instance.serviceProvider,
      'formattedTransactionDate':
          instance.formattedTransactionDate?.toIso8601String(),
      'bankAccName': instance.bankAccName,
      'bankName': instance.bankName,
      'formattedUniqueAmount': instance.formattedUniqueAmount,
      'bankAccNo': instance.bankAccNo,
      'transactionDate': instance.transactionDate?.toIso8601String(),
      'uniqueAmount': instance.uniqueAmount,
      'expires': instance.expires,
      'expiresAt': instance.expiresAt.toIso8601String(),
    };
