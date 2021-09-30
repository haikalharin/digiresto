// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckoutResponse _$_$_CheckoutResponseFromJson(Map<String, dynamic> json) {
  return _$_CheckoutResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: json['data'] == null
        ? null
        : CheckoutDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CheckoutResponseToJson(
        _$_CheckoutResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_CheckoutDataResponse _$_$_CheckoutDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CheckoutDataResponse(
    orderId: json['orderId'] as String,
    qr: json['qr'],
    receiptCode: json['receiptCode'] as String,
    sessionId: json['sessionId'] as String,
    payment: CheckoutDataPaymentResponse.fromJson(
        json['payment'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CheckoutDataResponseToJson(
        _$_CheckoutDataResponse instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'qr': instance.qr,
      'receiptCode': instance.receiptCode,
      'sessionId': instance.sessionId,
      'payment': instance.payment,
    };

_$_CheckoutDataPaymentResponse _$_$_CheckoutDataPaymentResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CheckoutDataPaymentResponse(
    url: json['url'] as String?,
    deeplink: json['deeplink'] as String?,
    paymentCode: json['paymentCode'] == null
        ? null
        : CheckoutDataPaymentCodeResponse.fromJson(
            json['paymentCode'] as Map<String, dynamic>),
    isCredit: json['isCredit'] as bool,
    isDeeplink: json['isDeeplink'] as bool,
    isWebView: json['isWebView'] as bool,
    isSingleBilling: json['isSingleBilling'] as bool,
  );
}

Map<String, dynamic> _$_$_CheckoutDataPaymentResponseToJson(
        _$_CheckoutDataPaymentResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'deeplink': instance.deeplink,
      'paymentCode': instance.paymentCode,
      'isCredit': instance.isCredit,
      'isDeeplink': instance.isDeeplink,
      'isWebView': instance.isWebView,
      'isSingleBilling': instance.isSingleBilling,
    };

_$_CheckoutDataPaymentCodeResponse _$_$_CheckoutDataPaymentCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _$_CheckoutDataPaymentCodeResponse(
    title: json['title'] as String?,
    amount: json['amount'] as int?,
    vaNumber: json['vaNumber'] as String?,
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

Map<String, dynamic> _$_$_CheckoutDataPaymentCodeResponseToJson(
        _$_CheckoutDataPaymentCodeResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      'vaNumber': instance.vaNumber,
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
