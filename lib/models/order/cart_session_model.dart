import 'package:boilerplate/models/response_model.dart';

class CartSession {
  String sessionId;
  Response response;
  String customerCarColor;
  String customerCarNumber;
  String customerCarType;
  String customerEmail;
  String customerName;
  String customerNote;
  String customerPax;
  String customerPhone;
  bool customerSmoking;
  String customerTableNumber;
  int deliveryAmount;
  int discountAmount;
  int discountPercentage;
  String eta;
  int finalAmount;
  bool isUseVoucher;
  List<dynamic> items;
  int itemTotalAmount;
  int itemWeight;
  int outletId;
  String outletName;
  List<dynamic> paymentList;
  List<dynamic> promos;
  int receiptTotalDiscount;
  String recipientName;
  String recipientPhone;
  int roundAmount;
  String salesType;
  int subtotal;
  List<dynamic> taxesAndServices;
  int totalChange;
  int totalDiscount;
  int totalItemAmount;
  int totalItemCost;
  int totalItemDiscount;
  int totalPayment;
  int totalService;
  int totalTax;
  int voucherAmount;

  CartSession(
      {this.response,this.sessionId,
      this.customerCarColor,
      this.customerCarNumber,
      this.customerCarType,
      this.customerEmail,
      this.customerName,
      this.customerNote,
      this.customerPax,
      this.customerPhone,
      this.customerSmoking,
      this.customerTableNumber,
      this.deliveryAmount,
      this.discountAmount,
      this.discountPercentage,
      this.eta,
      this.finalAmount,
      this.isUseVoucher,
      this.items,
      this.itemTotalAmount,
      this.itemWeight,
      this.outletId,
      this.outletName,
      this.paymentList,
      this.promos,
      this.receiptTotalDiscount,
      this.recipientName,
      this.recipientPhone,
      this.roundAmount,
      this.salesType,
      this.subtotal,
      this.taxesAndServices,
      this.totalChange,
      this.totalDiscount,
      this.totalItemAmount,
      this.totalItemCost,
      this.totalItemDiscount,
      this.totalPayment,
      this.totalService,
      this.totalTax,
      this.voucherAmount});

  factory CartSession.createResponse(Map<String, dynamic> object){
      return CartSession(response : Response.createResponse(object));
  }

  factory CartSession.createCartSession(Map<String, dynamic> object) {
    return CartSession(
      customerCarColor: object['customerCarColor'],
      customerCarNumber: object['customerCarNumber'],
      customerCarType: object['customerCarType'],
      customerEmail: object['customerEmail'],
      customerName: object['customerName'],
      customerNote: object['customerNote'],
      customerPax: object['customerPax'],
      customerPhone: object['customerPhone'],
      customerSmoking: object['customerSmoking'],
      customerTableNumber: object['customerTableNumber'],
      deliveryAmount: object['deliveryAmount'],
      discountAmount: object['discountAmount'],
      discountPercentage: object['discountPercentage'],
      eta: object['eta'],
      finalAmount: object['finalAmount'],
      isUseVoucher: object['isUseVoucher'],
      items: object['items'],
      itemTotalAmount: object['itemTotalAmount'],
      itemWeight: object['itemWeight'],
      outletId: object['outletId'],
      outletName: object['outletName'],
      paymentList: object['paymentList'],
      promos: object['promos'],
      receiptTotalDiscount: object['receiptTotalDiscount'],
      recipientName: object['recipientName'],
      recipientPhone: object['recipientPhone'],
      roundAmount: object['roundAmount'],
      salesType: object['salesType'],
      subtotal: object['subtotal'],
      taxesAndServices: object['taxesAndServices'],
      totalChange: object['totalChange'],
      totalDiscount: object['totalDiscount'],
      totalItemAmount: object['totalItemAmount'],
      totalItemCost: object['totalItemCost'],
      totalItemDiscount: object['totalItemDiscount'],
      totalPayment: object['totalPayment'],
      totalService: object['totalService'],
      totalTax: object['totalTax'],
      voucherAmount: object['voucherAmount'],
    );
  }
}
