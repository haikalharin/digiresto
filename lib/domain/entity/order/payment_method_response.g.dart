// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentMethodResponse _$_$_PaymentMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PaymentMethodResponse(
    response: StatusResponse.fromJson(json['response'] as Map<String, dynamic>),
    data: (json['data'] as List<dynamic>)
        .map((e) =>
            PaymentMethodDataResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    meta: MetaResponse.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PaymentMethodResponseToJson(
        _$_PaymentMethodResponse instance) =>
    <String, dynamic>{
      'response': instance.response,
      'data': instance.data,
      'meta': instance.meta,
    };

_$_PaymentMethodDataResponse _$_$_PaymentMethodDataResponseFromJson(
    Map<String, dynamic> json) {
  return _$_PaymentMethodDataResponse(
    id: json['id'] as String,
    title: json['title'] as String,
    isEnable: json['isEnable'] as bool,
    ammount: json['ammount'] as String?,
    digirestoPaymentId: json['digirestoPaymentId'] as int,
    channels:
        (json['channels'] as List<dynamic>).map((e) => e as String).toList(),
    salesTypes:
        (json['salesTypes'] as List<dynamic>).map((e) => e as String).toList(),
    excludeMerchant: (json['excludeMerchant'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    isUsePaymentSwitcher: json['isUsePaymentSwitcher'] as bool,
    isCredit: json['isCredit'] as bool,
    isEDC: json['isEDC'] as bool,
    isQr: json['isQr'] as bool,
    isVoucher: json['isVoucher'] as bool,
    isCash: json['isCash'] as bool,
    isWebView: json['isWebView'] as bool,
    isDeeplink: json['isDeeplink'] as bool,
    image: json['image'] as String?,
    paymentSwitcherCode: json['paymentSwitcherCode'] as String?,
    expire: json['expire'] as int?,
    deeplinkUrl: json['deeplinkUrl'] as String?,
    isSingleBilling: json['isSingleBilling'] as bool?,
  );
}

Map<String, dynamic> _$_$_PaymentMethodDataResponseToJson(
        _$_PaymentMethodDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'isEnable': instance.isEnable,
      'ammount': instance.ammount,
      'digirestoPaymentId': instance.digirestoPaymentId,
      'channels': instance.channels,
      'salesTypes': instance.salesTypes,
      'excludeMerchant': instance.excludeMerchant,
      'isUsePaymentSwitcher': instance.isUsePaymentSwitcher,
      'isCredit': instance.isCredit,
      'isEDC': instance.isEDC,
      'isQr': instance.isQr,
      'isVoucher': instance.isVoucher,
      'isCash': instance.isCash,
      'isWebView': instance.isWebView,
      'isDeeplink': instance.isDeeplink,
      'image': instance.image,
      'paymentSwitcherCode': instance.paymentSwitcherCode,
      'expire': instance.expire,
      'deeplinkUrl': instance.deeplinkUrl,
      'isSingleBilling': instance.isSingleBilling,
    };
