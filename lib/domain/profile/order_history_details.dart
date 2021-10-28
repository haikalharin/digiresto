import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_details.freezed.dart';
part 'order_history_details.g.dart';

OrderHistoryDetails orderHistoryDetailsFromJson(String str) =>
    OrderHistoryDetails.fromJson(json.decode(str));

String orderHistoryDetailsToJson(OrderHistoryDetails data) =>
    json.encode(data.toJson());

@freezed
class OrderHistoryDetails with _$OrderHistoryDetails {
  const factory OrderHistoryDetails({
    required String outletName,
    required num outletId,
    required String customerName,
    required String customerEmail,
    required String customerPhone,
    required String recipientName,
    required String recipientPhone,
    required String customerTableNumber,
    required dynamic customerSmoking,
    required String customerPax,
    required String customerNote,
    required String customerCarType,
    required String customerCarColor,
    required String customerCarNumber,
    required String eta,
    required num totalChange,
    required num discountAmount,
    required num discountPercentage,
    required num finalAmount,
    required num receiptTotalDiscount,
    required num roundAmount,
    required num subtotal,
    required num totalDiscount,
    required num totalItemAmount,
    required num totalItemCost,
    required num totalItemDiscount,
    required num totalService,
    required num totalTax,
    required num voucherAmount,
    required num deliveryAmount,
    required num totalPayment,
    required String salesType,
    required List<MenuItem> items,
    required num itemWeight,
    required bool isUseVoucher,
    required List<Promos> promos,
    required List<PaymentListItem> paymentList,
    required List<TaxesAndService> taxesAndServices,
    required num itemTotalAmount,
    required String note,
    @JsonKey(includeIfNull: true) required Delivery? grabpawoon,
    required num? originalDeliveryAmount,
    required DateTime deviceTimestamp,
    required String receiptCode,
    required List<Payment> payments,
    required Outlet outlet,
    @JsonKey(includeIfNull: true) required String? orderId,
    required String status,
    required DeliveryDetail deliveryDetail,
    required Rating rating,
    @JsonKey(includeIfNull: true) required Delivery? delivery,
  }) = _OrderHistoryDetails;

  factory OrderHistoryDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryDetailsFromJson(json);
}

@freezed
class Delivery with _$Delivery {
  const factory Delivery({
    required String provider,
    required num price,
    required String address,
    required String? shipmentMethod,
    required List<dynamic> location,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}

@freezed
class DeliveryDetail with _$DeliveryDetail {
  const factory DeliveryDetail({
    @JsonKey(defaultValue: '', includeIfNull: true) required String orderId,
    @JsonKey(includeIfNull: true) required String? distance,
    @JsonKey(includeIfNull: true) required String? provider,
    @JsonKey(includeIfNull: true) required String? shipmentMethod,
    @JsonKey(includeIfNull: true) required dynamic fee,
    @JsonKey(includeIfNull: true) required String? bookingCode,
    @JsonKey(includeIfNull: true) required String? bookingExpired,
    @JsonKey(includeIfNull: true) required String? deliveryId,
    @JsonKey(includeIfNull: true) required bool? isDelivered,
    @JsonKey(includeIfNull: true) required From? from,
    @JsonKey(includeIfNull: true) required To? to,
    @JsonKey(includeIfNull: true) required List<DeliveryStatus>? status,
    @JsonKey(includeIfNull: true) required bool? isDelete,
    @JsonKey(includeIfNull: true) required DateTime? createdDate,
    @JsonKey(includeIfNull: true) required String? ownerPhone,
    @JsonKey(includeIfNull: true) required String? driverName,
    @JsonKey(includeIfNull: true) required String? driverPhone,
  }) = _DeliveryDetail;

  factory DeliveryDetail.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDetailFromJson(json);
}

@freezed
class From with _$From {
  const factory From({
    required List<dynamic> location,
    required String name,
    required String address,
    required String phone,
  }) = _From;

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);
}

@freezed
class To with _$To {
  const factory To({
    required List<dynamic> location,
    required String name,
    required String address,
    required String phone,
  }) = _To;

  factory To.fromJson(Map<String, dynamic> json) => _$ToFromJson(json);
}

@freezed
class MenuItem with _$MenuItem {
  const factory MenuItem({
    required num productId,
    required String title,
    required num price,
    required String code,
    required num cost,
    required num qty,
    required num basicWeight,
    required num weight,
    required String category,
    required num categoryId,
    required String categoryCode,
    required String? sku,
    required String note,
    required bool isPreorder,
    required num preorderPeriod,
    required num amount,
    required List<dynamic> modifiers,
    required num modifiersAmount,
    required num modifiersCost,
    required num modifiersDiscount,
    required num singleModifiersAmount,
    required num subtotal,
    required num serviceAmount,
    required num taxAmount,
    required bool? isStock,
    @JsonKey(includeIfNull: true) required String? img,
    @JsonKey(includeIfNull: true) required String? image,
    @JsonKey(includeIfNull: true) required num? transactionLimit,
  }) = _MenuItem;

  factory MenuItem.fromJson(Map<String, dynamic> json) =>
      _$MenuItemFromJson(json);
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
    required Rating quinos,
    required bool isNonSku,
    required Rating moka,
    required Detail detail,
    required bool isLive,
    required OrderMethod orderMethod,
    required bool isDelete,
    required DateTime createdDate,
    required String poCutoff,
  }) = _Outlet;

  factory Outlet.fromJson(Map<String, dynamic> json) => _$OutletFromJson(json);
}

@freezed
class Detail with _$Detail {
  const factory Detail({
    required String name,
    required String address,
    required List<dynamic> taxesAndServices,
    required List<dynamic> location,
    @JsonKey(includeIfNull: true) required String? phone,
    required dynamic kurirPrice,
    required List<String> deliveryProvider,
    required String driverPhone,
    required List<dynamic> area,
    required List<dynamic>? deliveryLocation,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    @JsonKey(includeIfNull: true) required num? rating,
    @JsonKey(includeIfNull: true) required String? review,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
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
    required num amount,
    required num change,
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
    required num id,
    @JsonKey(includeIfNull: true) required String? code,
    required String name,
    @JsonKey(includeIfNull: true) required String? type,
    required num amount,
    @JsonKey(includeIfNull: true) required List<String>? salesTypes,
    @JsonKey(includeIfNull: true) required List<String>? paymentTypes,
    required String title,
  }) = _TaxesAndService;

  factory TaxesAndService.fromJson(Map<String, dynamic> json) =>
      _$TaxesAndServiceFromJson(json);
}

@freezed
class DeliveryStatus with _$DeliveryStatus {
  const factory DeliveryStatus({
    required String state,
    required DateTime updatedDate,
    required String description,
    required String statusDescription,
  }) = _DeliveryStatus;

  factory DeliveryStatus.fromJson(Map<String, dynamic> json) =>
      _$DeliveryStatusFromJson(json);
}

@freezed
abstract class Promos with _$Promos {
  const factory Promos({
    required List<String> paymentTypes,
    required String title,
    required String? promoType,
    required String? type,
    required num? discount,
    required num? minPurchase,
    required int promoId,
    required String? voucherRefNumber,
    required String? voucherCode,
    required num amount,
  }) = _Promos;

  factory Promos.fromJson(Map<String, dynamic> json) => _$PromosFromJson(json);
}

@freezed
abstract class PaymentListItem with _$PaymentListItem {
  const factory PaymentListItem({
    required num amount,
    required String method,
    required String? voucherRefNumber,
  }) = _PaymentListItem;

  factory PaymentListItem.fromJson(Map<String, dynamic> json) =>
      _$PaymentListItemFromJson(json);
}
