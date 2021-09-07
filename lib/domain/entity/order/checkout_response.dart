import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_response.freezed.dart';
part 'checkout_response.g.dart';

CheckoutResponse emptyFromJson(String str) =>
    CheckoutResponse.fromJson(json.decode(str));

String emptyToJson(CheckoutResponse data) => json.encode(data.toJson());

@freezed
abstract class CheckoutResponse with _$CheckoutResponse {
  const factory CheckoutResponse({
    required StatusResponse response,
    required CheckoutDataResponse? data,
    required MetaResponse meta,
  }) = _CheckoutResponse;

  factory CheckoutResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseFromJson(json);
}

@freezed
abstract class CheckoutDataResponse with _$CheckoutDataResponse {
  const factory CheckoutDataResponse({
    required String orderId,
    required dynamic qr,
    required String receiptCode,
    required String sessionId,
    required CheckoutDataPaymentResponse payment,
  }) = _CheckoutDataResponse;

  factory CheckoutDataResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDataResponseFromJson(json);
}

@freezed
abstract class CheckoutDataPaymentResponse with _$CheckoutDataPaymentResponse {
  const factory CheckoutDataPaymentResponse({
    required String? url,
    required String? deeplink,
    required CheckoutDataPaymentCodeResponse? paymentCode,
    required bool isCredit,
    required bool isDeeplink,
    required bool isWebView,
    required bool isSingleBilling,
  }) = _CheckoutDataPaymentResponse;

  factory CheckoutDataPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDataPaymentResponseFromJson(json);
}

@freezed
abstract class CheckoutDataPaymentCodeResponse
    with _$CheckoutDataPaymentCodeResponse {
  const factory CheckoutDataPaymentCodeResponse({
    required String? title,
    required int? amount,
    required String? vaNumber,
    required DateTime? formattedTransactionDate,
    required String? bankAccName,
    required String? bankName,
    required String? formattedUniqueAmount,
    required String? bankAccNo,
    required DateTime? transactionDate,
    required String? uniqueAmount,
    required int expires,
    required DateTime expiresAt,
  }) = _CheckoutDataPaymentCodeResponse;

  factory CheckoutDataPaymentCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDataPaymentCodeResponseFromJson(json);
}
