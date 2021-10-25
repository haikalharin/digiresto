import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_session_response.dart';

part 'transaction_mobile_response.freezed.dart';
part 'transaction_mobile_response.g.dart';

TransactionMobileResponse emptyFromJson(String str) =>
    TransactionMobileResponse.fromJson(json.decode(str));

String emptyToJson(TransactionMobileResponse data) =>
    json.encode(data.toJson());

@freezed
class TransactionMobileResponse with _$TransactionMobileResponse {
  const factory TransactionMobileResponse({
    required StatusResponse response,
    required TransactionMobileDataResponse data,
    required MetaResponse meta,
  }) = _TransactionMobileResponse;

  factory TransactionMobileResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionMobileResponseFromJson(json);
}

@freezed
class TransactionMobileDataResponse with _$TransactionMobileDataResponse {
  const factory TransactionMobileDataResponse({
    required String outletName,
    required int outletId,
    required String customerName,
    required String customerEmail,
    required String customerPhone,
    required String recipientName,
    required String recipientPhone,
    required String customerTableNumber,
    required bool customerSmoking,
    required String customerPax,
    required String customerNote,
    required String customerCarType,
    required String customerCarColor,
    required String customerCarNumber,
    required String eta,
    required int totalChange,
    required int discountAmount,
    required int discountPercentage,
    required int finalAmount,
    required int receiptTotalDiscount,
    required int roundAmount,
    required int subtotal,
    required int totalDiscount,
    required int totalItemAmount,
    required int totalItemCost,
    required int totalItemDiscount,
    required int totalService,
    required int totalTax,
    required int voucherAmount,
    required int deliveryAmount,
    required int totalPayment,
    required String salesType,
    required List<TransactionDataItemResponse> items,
    required int itemWeight,
    required bool isUseVoucher,
    required List<TransactionMobileDataPromoResponse> promos,
    required List<TransactionMobileDataPaymentListResponse> paymentList,
    required List<TransactionTaxesAndService>? taxesAndServices,
    required int itemTotalAmount,
    required String note,
    required int? originalDeliveryAmount,
    required String? deviceTimestamp,
    required String receiptCode,
    required List<TransactionMobileDataPaymentResponse>? payments,
    required TransactionMobileDataOutletResponse? outlet,
    required String? orderId,
    required String? status,
    required TransactionMobileDataDeliveryDetailResponse? deliveryDetail,
    required TransactionMobileDataRatingResponse? rating,
    required TransactionMobileDataBillingDetailResponse? billingDetail,
    required TransactionMobileDataDeliveryResponse? delivery,
  }) = _TransactionMobileDataResponse;

  factory TransactionMobileDataResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionMobileDataResponseFromJson(json);
}

@freezed
class TransactionMobileDataBillingDetailResponse
    with _$TransactionMobileDataBillingDetailResponse {
  const factory TransactionMobileDataBillingDetailResponse({
    required String? title,
    required int? amount,
    required String? vaNumber,
    required String? expires,
    required String? expiresAt,
  }) = _TransactionMobileDataBillingDetailResponse;

  factory TransactionMobileDataBillingDetailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataBillingDetailResponseFromJson(json);
}

@freezed
class TransactionMobileDataDeliveryResponse
    with _$TransactionMobileDataDeliveryResponse {
  const factory TransactionMobileDataDeliveryResponse({
    required String provider,
    required int price,
    required String address,
    required String shipmentMethod,
    required List<String> location,
  }) = _TransactionMobileDataDeliveryResponse;

  factory TransactionMobileDataDeliveryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataDeliveryResponseFromJson(json);
}

@freezed
class TransactionMobileDataDeliveryDetailResponse
    with _$TransactionMobileDataDeliveryDetailResponse {
  const factory TransactionMobileDataDeliveryDetailResponse({
    required String? orderId,
    required String? distance,
    required String? provider,
    required String? shipmentMethod,
    required dynamic fee,
    required String? bookingCode,
    required String? bookingExpired,
    required String? deliveryId,
    required bool? isDelivered,
    required TransactionMobileDataDeliveryDetailFromToResponse? from,
    required TransactionMobileDataDeliveryDetailFromToResponse? to,
    required List<dynamic>? status,
    required bool? isDelete,
    required String? createdDate,
    required String? ownerPhone,
    required String? driverName,
    required dynamic driverPhone,
  }) = _TransactionMobileDataDeliveryDetailResponse;

  factory TransactionMobileDataDeliveryDetailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataDeliveryDetailResponseFromJson(json);
}

@freezed
class TransactionMobileDataDeliveryDetailFromToResponse
    with _$TransactionMobileDataDeliveryDetailFromToResponse {
  const factory TransactionMobileDataDeliveryDetailFromToResponse({
    required List<String> location,
    required String name,
    required String address,
    required String phone,
  }) = _TransactionMobileDataDeliveryDetailFromToResponse;

  factory TransactionMobileDataDeliveryDetailFromToResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataDeliveryDetailFromToResponseFromJson(json);
}

@freezed
class TransactionMobileDataOutletResponse
    with _$TransactionMobileDataOutletResponse {
  const factory TransactionMobileDataOutletResponse({
    required String name,
    required String outletId,
    required String merchantId,
    required String cashierId,
    required String deviceId,
    required String assignId,
    required Moka quinos,
    required bool isNonSku,
    required Moka moka,
    required TransactionMobileDataOutletDetailResponse detail,
    required dynamic roundingDigit,
    required dynamic roundingType,
    required bool isLive,
    required OrderMethod orderMethod,
    required bool isDelete,
    required String createdDate,
    required String poCutoff,
  }) = _TransactionMobileDataOutletResponse;

  factory TransactionMobileDataOutletResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataOutletResponseFromJson(json);
}

@freezed
class TransactionMobileDataOutletDetailResponse
    with _$TransactionMobileDataOutletDetailResponse {
  const factory TransactionMobileDataOutletDetailResponse({
    required String name,
    required String address,
    required List<TransactionTaxesAndService> taxesAndServices,
    required List<String> location,
    required String phone,
    required dynamic kurirPrice,
    required String deliveryType,
    required String maxRadius,
    required String driverPhone,
    required List<dynamic> area,
    required List<String>? deliveryProvider,
    required List<dynamic>? deliveryLocation,
  }) = _TransactionMobileDataOutletDetailResponse;

  factory TransactionMobileDataOutletDetailResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataOutletDetailResponseFromJson(json);
}

@freezed
class TransactionTaxesAndService with _$TransactionTaxesAndService {
  const factory TransactionTaxesAndService({
    required int id,
    required String name,
    required String title,
    required int amount,
    required dynamic type,
  }) = _TransactionTaxesAndService;

  factory TransactionTaxesAndService.fromJson(Map<String, dynamic> json) =>
      _$TransactionTaxesAndServiceFromJson(json);
}

@freezed
abstract class Moka with _$Moka {
  const factory Moka({
    required dynamic outletId,
  }) = _Moka;

  factory Moka.fromJson(Map<String, dynamic> json) => _$MokaFromJson(json);
}

@freezed
class OrderMethod with _$OrderMethod {
  const factory OrderMethod({
    required bool forceSelect,
    required List<String> defaultList,
  }) = _OrderMethod;

  factory OrderMethod.fromJson(Map<String, dynamic> json) =>
      _$OrderMethodFromJson(json);
}

@freezed
class TransactionMobileDataPaymentListResponse
    with _$TransactionMobileDataPaymentListResponse {
  const factory TransactionMobileDataPaymentListResponse({
    required int? amount,
    required String? method,
    required String? voucherRefNumber,
  }) = _TransactionMobileDataPaymentListResponse;

  factory TransactionMobileDataPaymentListResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataPaymentListResponseFromJson(json);
}

@freezed
class TransactionMobileDataPaymentResponse
    with _$TransactionMobileDataPaymentResponse {
  const factory TransactionMobileDataPaymentResponse({
    required int amount,
    required int change,
    required String method,
    required String companyPaymentMethodId,
    required String timestamp,
    required String title,
    required String? status,
  }) = _TransactionMobileDataPaymentResponse;

  factory TransactionMobileDataPaymentResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataPaymentResponseFromJson(json);
}

@freezed
class TransactionMobileDataPromoResponse
    with _$TransactionMobileDataPromoResponse {
  const factory TransactionMobileDataPromoResponse({
    required List<String>? paymentTypes,
    required String? title,
    required String? promoType,
    required String? type,
    required int? discount,
    required int? minPurchase,
    required int? promoId,
    required String? voucherRefNumber,
    required String? voucherCode,
    required int amount,
  }) = _TransactionMobileDataPromoResponse;

  factory TransactionMobileDataPromoResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataPromoResponseFromJson(json);
}

@freezed
class TransactionMobileDataRatingResponse
    with _$TransactionMobileDataRatingResponse {
  const factory TransactionMobileDataRatingResponse() =
      _TransactionMobileDataRatingResponse;

  factory TransactionMobileDataRatingResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionMobileDataRatingResponseFromJson(json);
}
