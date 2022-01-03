import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_session_response.freezed.dart';

part 'cart_session_response.g.dart';

CartSessionResponseApi emptyFromJson(String str) =>
    CartSessionResponseApi.fromJson(json.decode(str));

String emptyToJson(CartSessionResponseApi data) => json.encode(data.toJson());

@freezed
class CartSessionResponseApi with _$CartSessionResponseApi {
  const factory CartSessionResponseApi({
    required StatusResponse response,
    required CartSessionResponse data,
    required MetaResponse meta,
  }) = _CartSessionResponseApi;

  factory CartSessionResponseApi.fromJson(Map<String, dynamic> json) =>
      _$CartSessionResponseApiFromJson(json);
}

@freezed
class CartSessionResponse with _$CartSessionResponse {
  const factory CartSessionResponse({
    required String? channel,
    required String? sessionId,
    required TransactionData? transactionData,
  }) = _CartSessionResponse;

  factory CartSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$CartSessionResponseFromJson(json);
}

@freezed
class TransactionData with _$TransactionData {
  const factory TransactionData({
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
    required dynamic paymentType,
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
    required List<dynamic> paymentList,
    required List<TaxesAndService> taxesAndServices,
    required int itemTotalAmount,
    @JsonKey(includeIfNull: false) bool? isCatering,
    @JsonKey(includeIfNull: false) String? mealsType,
    @JsonKey(includeIfNull: false) DateTime? preorderDate,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

@freezed
class TransactionDataItemResponse with _$TransactionDataItemResponse {
  const factory TransactionDataItemResponse({
    required int productId,
    required String title,
    required String img,
    required int price,
    required String code,
    required int cost,
    required int qty,
    required int basicWeight,
    required int weight,
    required String category,
    required int categoryId,
    required String categoryCode,
    required String? sku,
    required bool isPreorder,
    required int preorderPeriod,
    required int amount,
    required List<dynamic> modifiers,
    required int modifiersAmount,
    required int modifiersCost,
    required int modifiersDiscount,
    required int singleModifiersAmount,
    required int subtotal,
    required int serviceAmount,
    required int taxAmount,
    required String desc,
    required String note,
  }) = _TransactionDataItemResponse;

  factory TransactionDataItemResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataItemResponseFromJson(json);
}

@freezed
class Modifier with _$Modifier {
  const factory Modifier({
    required String modifierGroupId,
    required String modifierGroupName,
    required String modifierGroupCode,
    required int id,
    required int modifierId,
    required String modifierCode,
    required String title,
    required int basicWeight,
    required num price,
    required int qty,
    required num amount,
    required num discountAmount,
    required num discountPercentage,
  }) = _Modifier;

  factory Modifier.fromJson(Map<String, dynamic> json) =>
      _$ModifierFromJson(json);
}

@freezed
class TaxesAndService with _$TaxesAndService {
  const factory TaxesAndService({
    required int id,
    required String? code,
    required String? name,
    required String? type,
    required num? percentage,
    required List<String>? salesTypes,
    required String? title,
    required num? amount,
  }) = _TaxesAndService;

  factory TaxesAndService.fromJson(Map<String, dynamic> json) =>
      _$TaxesAndServiceFromJson(json);
}
