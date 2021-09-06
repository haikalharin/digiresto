import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

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
    required int outletId,
    required String customerName,
    required String customerEmail,
    required String customerPhone,
    required String recipientName,
    required String recipientPhone,
    required String customerTableNumber,
    required String customerSmoking,
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
    required List<MenuItem> items,
    required int itemWeight,
    required bool isUseVoucher,
    required List<dynamic> promos,
    required List<dynamic> paymentList,
    required List<TaxesAndService> taxesAndServices,
    required int itemTotalAmount,
    required String note,
    @JsonKey(includeIfNull: true) required Delivery? grabpawoon,
    required int originalDeliveryAmount,
    required DateTime deviceTimestamp,
    required String receiptCode,
    required List<Payment> payments,
    required Outlet outlet,
    required String orderId,
    required String status,
    required DeliveryDetail deliveryDetail,
    required Rating rating,
    @JsonKey(includeIfNull: true) required BillingDetail? billingDetail,
    required Delivery delivery,
  }) = _OrderHistoryDetails;

  factory OrderHistoryDetails.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryDetailsFromJson(json);
}

@freezed
class BillingDetail with _$BillingDetail {
  const factory BillingDetail({
    required String title,
    required int amount,
    required String vaNumber,
    required DateTime expires,
    required DateTime expiresAt,
    required String serviceProvider,
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
    required List<String> location,
  }) = _Delivery;

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);
}

@freezed
class DeliveryDetail with _$DeliveryDetail {
  const factory DeliveryDetail({
    required String orderId,
    required String distance,
    required String provider,
    required String shipmentMethod,
    required int fee,
    required String bookingCode,
    required String bookingExpired,
    required String deliveryId,
    required bool isDelivered,
    required From from,
    required To to,
    required List<dynamic> status,
    required bool isDelete,
    required DateTime createdDate,
    required String ownerPhone,
    required String driverName,
    required String driverPhone,
  }) = _DeliveryDetail;

  factory DeliveryDetail.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDetailFromJson(json);
}

@freezed
class From with _$From {
  const factory From({
    required List<double> location,
    required String name,
    required String address,
    required String phone,
  }) = _From;

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);
}

@freezed
class To with _$To {
  const factory To({
    required List<String> location,
    required String name,
    required String address,
    required String phone,
  }) = _To;

  factory To.fromJson(Map<String, dynamic> json) => _$ToFromJson(json);
}

@freezed
class MenuItem with _$MenuItem {
  const factory MenuItem({
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
    required String sku,
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
    required bool isStock,
    required String img,
    required String image,
    required int transactionLimit,
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
    required List<double> location,
    required String phone,
    required String kurirPrice,
    required List<String> deliveryProvider,
    required String driverPhone,
    required List<dynamic> area,
    required List<dynamic> deliveryLocation,
  }) = _Detail;

  factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating() = _Rating;

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
