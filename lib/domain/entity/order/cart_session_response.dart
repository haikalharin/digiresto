import 'dart:convert';

import 'package:digiresto/domain/core/entity/status_api_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_session_response.freezed.dart';
part 'cart_session_response.g.dart';

CartSessionResponseApi emptyFromJson(String str) =>
    CartSessionResponseApi.fromJson(json.decode(str));

String emptyToJson(CartSessionResponseApi data) => json.encode(data.toJson());

@freezed
abstract class CartSessionResponseApi with _$CartSessionResponseApi {
  const factory CartSessionResponseApi({
    required StatusResponse response,
    required CartSessionResponse data,
    required MetaResponse meta,
  }) = _CartSessionResponseApi;

  factory CartSessionResponseApi.fromJson(Map<String, dynamic> json) =>
      _$CartSessionResponseApiFromJson(json);
}

@freezed
abstract class CartSessionResponse with _$CartSessionResponse {
  const factory CartSessionResponse({
    required String? channel,
    required String? sessionId,
    required TransactionData transactionData,
  }) = _CartSessionResponse;

  factory CartSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$CartSessionResponseFromJson(json);
}

@freezed
abstract class TransactionData with _$TransactionData {
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
    required List<Item> items,
    required int itemWeight,
    required bool isUseVoucher,
    required List<dynamic> promos,
    required List<dynamic> paymentList,
    required List<TaxesAndService> taxesAndServices,
    required int itemTotalAmount,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

@freezed
abstract class Item with _$Item {
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
    required String sku,
    required String note,
    required bool isPreorder,
    required int preorderPeriod,
    required int amount,
    required List<Modifier> modifiers,
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
abstract class Modifier with _$Modifier {
  const factory Modifier({
    required String modifierGroupId,
    required String modifierGroupName,
    required String modifierGroupCode,
    required int id,
    required int modifierId,
    required String modifierCode,
    required String title,
    required int basicWeight,
    required int price,
    required int qty,
    required int amount,
    required int discountAmount,
    required int discountPercentage,
  }) = _Modifier;

  factory Modifier.fromJson(Map<String, dynamic> json) =>
      _$ModifierFromJson(json);
}

@freezed
abstract class TaxesAndService with _$TaxesAndService {
  const factory TaxesAndService({
    required int id,
    required String code,
    required String name,
    required String type,
    required int percentage,
    required List<String> salesTypes,
    required String title,
    required int amount,
  }) = _TaxesAndService;

  factory TaxesAndService.fromJson(Map<String, dynamic> json) =>
      _$TaxesAndServiceFromJson(json);
}

// class CartSessionResponse {
//   String sessionId;
//   CartSession transactionData;
//   CartSessionResponse({
//     required this.sessionId,
//     required this.transactionData,
//   });
// }

// class CartSession {
//   String? sessionId;
//   Response? response;
//   String? outletName;
//   int? outletId;
//   String? customerName;
//   String? customerEmail;
//   String? customerPhone;
//   String? recipientName;
//   String? recipientPhone;
//   String? customerTableNumber;
//   bool? customerSmoking;
//   int? customerPax;
//   String? customerNote;
//   String? customerCarType;
//   String? customerCarColor;
//   String? customerCarNumber;
//   String? eta;
//   String? paymentType;
//   int? totalChange;
//   int? discountAmount;
//   int? discountPercentage;
//   int? finalAmount;
//   int? receiptTotalDiscount;
//   int? roundAmount;
//   int? subtotal;
//   int? totalDiscount;
//   int? totalItemAmount;
//   int? totalItemCost;
//   int? totalItemDiscount;
//   int? totalService;
//   int? totalTax;
//   int? voucherAmount;
//   int? deliveryAmount;
//   int? totalPayment;
//   String? salesType;
//   List<dynamic>? items;
//   int? itemWeight;
//   bool? isUseVoucher;
//   List<dynamic>? promos;
//   List<dynamic>? paymentList;
//   List<TransactionHistoryTaxesAndServices>? taxesAndServices;
//   int? itemTotalAmount;

//   CartSession({
//     this.sessionId,
//     this.response,
//     this.outletName,
//     this.outletId,
//     this.customerName,
//     this.customerEmail,
//     this.customerPhone,
//     this.recipientName,
//     this.recipientPhone,
//     this.customerTableNumber,
//     this.customerSmoking,
//     this.customerPax,
//     this.customerNote,
//     this.customerCarType,
//     this.customerCarColor,
//     this.customerCarNumber,
//     this.eta,
//     this.paymentType,
//     this.totalChange,
//     this.discountAmount,
//     this.discountPercentage,
//     this.finalAmount,
//     this.receiptTotalDiscount,
//     this.roundAmount,
//     this.subtotal,
//     this.totalDiscount,
//     this.totalItemAmount,
//     this.totalItemCost,
//     this.totalItemDiscount,
//     this.totalService,
//     this.totalTax,
//     this.voucherAmount,
//     this.deliveryAmount,
//     this.totalPayment,
//     this.salesType,
//     this.items,
//     this.itemWeight,
//     this.isUseVoucher,
//     this.promos,
//     this.paymentList,
//     this.taxesAndServices,
//     this.itemTotalAmount,
//   });

//   factory CartSession.createResponse(Map<String, dynamic> object) {
//     return CartSession(response: Response.createResponse(object));
//   }

//   factory CartSession.createCartSession(Map<String, dynamic> object) {
//     return CartSession(
//       outletName: object['outletName'],
//       outletId: object['outletId'],
//       customerName: object['customerName'],
//       customerEmail: object['customerEmail'],
//       customerPhone: object['customerPhone'],
//       recipientName: object['recipientName'],
//       recipientPhone: object['recipientPhone'],
//       customerTableNumber: object['customerTableNumber'],
//       customerSmoking: object['customerSmoking'],
//       customerPax: object['customerPax'],
//       customerNote: object['customerNote'],
//       customerCarType: object['customerCarType'],
//       customerCarColor: object['customerCarColor'],
//       customerCarNumber: object['customerCarNumber'],
//       eta: object['eta'],
//       paymentType: object['paymentType'],
//       totalChange: object['totalChange'],
//       discountAmount: object['discountAmount'],
//       discountPercentage: object['discountPercentage'],
//       finalAmount: object['finalAmount'],
//       receiptTotalDiscount: object['receiptTotalDiscount'],
//       roundAmount: object['roundAmount'],
//       subtotal: object['subtotal'],
//       totalDiscount: object['totalDiscount'],
//       totalItemAmount: object['totalItemAmount'],
//       totalItemCost: object['totalItemCost'],
//       totalItemDiscount: object['totalItemDiscount'],
//       totalService: object['totalService'],
//       totalTax: object['totalTax'],
//       voucherAmount: object['voucherAmount'],
//       deliveryAmount: object['deliveryAmount'],
//       totalPayment: object['totalPayment'],
//       salesType: object['salesType'],
//       items: object['items'],
//       itemWeight: object['itemWeight'],
//       isUseVoucher: object['isUseVoucher'],
//       promos: object['promos'],
//       paymentList: object['paymentList'],
//       taxesAndServices: List<TransactionHistoryTaxesAndServices>.from(
//           object['taxesAndServices']
//               .map((item) => TransactionHistoryTaxesAndServices.create(item))),
//       itemTotalAmount: object['itemTotalAmount'],
//     );
//   }
// }
