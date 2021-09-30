import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_pending.freezed.dart';
part 'order_pending.g.dart';

OrderPending orderPendingFromJson(String str) =>
    OrderPending.fromJson(json.decode(str));

String orderPendingToJson(OrderPending data) => json.encode(data.toJson());

@freezed
class OrderPending with _$OrderPending {
  const factory OrderPending({
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
    required int deliveryAmount,
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
    required int totalPayment,
    required String salesType,
    required List<Item> items,
    required int itemWeight,
    required bool isUseVoucher,
    required List<dynamic> promos,
    required List<dynamic> paymentList,
    required List<TaxesAndService> taxesAndServices,
    required int itemTotalAmount,
    required String note,
    @JsonKey(includeIfNull: true) required Delivery? gosend,
    @JsonKey(includeIfNull: true) required int? originalDeliveryAmount,
    required DateTime deviceTimestamp,
    required String receiptCode,
    required List<Payment> payments,
    required Outlet outlet,
    required String orderId,
    required String status,
    required DeliveryDetail deliveryDetail,
    required BillingDetail billingDetail,
    required Delivery? delivery,
  }) = _OrderPending;

  factory OrderPending.fromJson(Map<String, dynamic> json) =>
      _$OrderPendingFromJson(json);
}

@freezed
class BillingDetail with _$BillingDetail {
  const factory BillingDetail({
    @JsonKey(defaultValue: '') required String orderId,
    @JsonKey(defaultValue: '') required String title,
    @JsonKey(defaultValue: '') required String vaNumber,
    required dynamic amount,
    @JsonKey(defaultValue: '') required String fee,
    @JsonKey(defaultValue: '') required String finalAmount,
    @JsonKey(defaultValue: '') required String serviceProvider,
    @JsonKey(defaultValue: '') required String bankAccName,
    @JsonKey(defaultValue: '') required String bankName,
    @JsonKey(defaultValue: '') required String formattedUniqueAmount,
    @JsonKey(defaultValue: '') required String bankAccNo,
    @JsonKey(defaultValue: '') required String uniqueAmount,
    @JsonKey(includeIfNull: true) required DateTime? transactionDate,
    @JsonKey(includeIfNull: true) required DateTime? formattedTransactionDate,
    required int expires,
    required DateTime expiresAt,
    required bool isCredit,
    required bool isDeeplink,
    required bool isWebView,
    required bool isSingleBilling,
  }) = _BillingDetail;

  factory BillingDetail.fromJson(Map<String, dynamic> json) =>
      _$BillingDetailFromJson(json);
}

@freezed
class Delivery with _$Delivery {
  const factory Delivery({
    required String provider,
    required int price,
    required String address,
    required String shipmentMethod,
    required List<dynamic> location,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}

@freezed
class DeliveryDetail with _$DeliveryDetail {
  const factory DeliveryDetail({
    required String? orderId,
    required String? distance,
    required String? provider,
    required String? shipmentMethod,
    required dynamic fee,
    required String? bookingCode,
    required String? bookingExpired,
    required String? deliveryId,
    required bool? isDelivered,
    required DeliverFrom? from,
    required DeliverTo? to,
    required List<dynamic>? status,
    required bool? isDelete,
    required DateTime? createdDate,
    required String? ownerPhone,
  }) = _DeliveryDetail;

  factory DeliveryDetail.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDetailFromJson(json);
}

@freezed
class DeliverFrom with _$DeliverFrom {
  const factory DeliverFrom({
    required List<dynamic> location,
    required String name,
    required String address,
    required String phone,
  }) = _DeliverFrom;

  factory DeliverFrom.fromJson(Map<String, dynamic> json) =>
      _$DeliverFromFromJson(json);
}

@freezed
class DeliverTo with _$DeliverTo {
  const factory DeliverTo({
    required List<dynamic> location,
    required String name,
    required String address,
    required String phone,
  }) = _DeliverTo;

  factory DeliverTo.fromJson(Map<String, dynamic> json) =>
      _$DeliverToFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    required int productId,
    required String title,
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
    required String note,
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
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Outlet with _$Outlet {
  const factory Outlet({
    required String name,
    required String outletId,
    required String merchantId,
    required String cashierId,
    required String deviceId,
    required String assignId,
    required Moka quinos,
    required bool isNonSku,
    required Moka moka,
    required OutletDetail detail,
    required bool isLive,
    required OrderMethod orderMethod,
    required bool isDelete,
    required DateTime createdDate,
  }) = _Outlet;

  factory Outlet.fromJson(Map<String, dynamic> json) => _$OutletFromJson(json);
}

@freezed
class OutletDetail with _$OutletDetail {
  const factory OutletDetail({
    required String name,
    required String address,
    required List<dynamic> taxesAndServices,
    required List<dynamic> location,
    required String phone,
    required dynamic kurirPrice,
    required List<String> deliveryProvider,
    required String driverPhone,
    required List<dynamic> area,
    required List<dynamic>? deliveryLocation,
  }) = _OutletDetail;

  factory OutletDetail.fromJson(Map<String, dynamic> json) =>
      _$OutletDetailFromJson(json);
}

@freezed
class Moka with _$Moka {
  const factory Moka() = _Moka;

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
class Payment with _$Payment {
  const factory Payment({
    required int amount,
    required int change,
    required String method,
    required String companyPaymentMethodId,
    required DateTime timestamp,
    required String title,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}

@freezed
class TaxesAndService with _$TaxesAndService {
  const factory TaxesAndService({
    required int id,
    required String code,
    required String name,
    required String type,
    required int amount,
    required List<String> salesTypes,
    required List<String> paymentTypes,
    required String title,
  }) = _TaxesAndService;

  factory TaxesAndService.fromJson(Map<String, dynamic> json) =>
      _$TaxesAndServiceFromJson(json);
}
