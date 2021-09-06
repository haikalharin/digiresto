// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_response.freezed.dart';
part 'payment_method_response.g.dart';

PaymentMethodResponse emptyFromJson(String str) =>
    PaymentMethodResponse.fromJson(json.decode(str));

String emptyToJson(PaymentMethodResponse data) => json.encode(data.toJson());

@freezed
abstract class PaymentMethodResponse with _$PaymentMethodResponse {
  const factory PaymentMethodResponse({
    required StatusResponse response,
    required List<PaymentMethodDataResponse> data,
    required MetaResponse meta,
  }) = _PaymentMethodResponse;

  factory PaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodResponseFromJson(json);
}

@freezed
abstract class PaymentMethodDataResponse with _$PaymentMethodDataResponse {
  const factory PaymentMethodDataResponse({
    required String id,
    required String title,
    required bool isEnable,
    required String? ammount,
    required int digirestoPaymentId,
    required List<String> channels,
    required List<String> salesTypes,
    required List<String> excludeMerchant,
    required bool isUsePaymentSwitcher,
    required bool isCredit,
    required bool isEDC,
    required bool isQr,
    required bool isVoucher,
    required bool isCash,
    required bool isWebView,
    required bool isDeeplink,
    required String? image,
    required String? paymentSwitcherCode,
    required int? expire,
    required String? deeplinkUrl,
    required bool? isSingleBilling,
  }) = _PaymentMethodDataResponse;

  factory PaymentMethodDataResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDataResponseFromJson(json);
}
