import 'package:boilerplate/models/response_model.dart';
import 'package:boilerplate/models/transaction/transaction_history_taxes_and_services.dart';

class CartSession {
  String sessionId;
  Response response;
  String outletName;
  int outletId;
  String customerName;
  String customerEmail;
  String customerPhone;
  String recipientName;
  String recipientPhone;
  String customerTableNumber;
  bool customerSmoking;
  int customerPax;
  String customerNote;
  String customerCarType;
  String customerCarColor;
  String customerCarNumber;
  String eta;
  String paymentType;
  int totalChange;
  int discountAmount;
  int discountPercentage;
  int finalAmount;
  int receiptTotalDiscount;
  int roundAmount;
  int subtotal;
  int totalDiscount;
  int totalItemAmount;
  int totalItemCost;
  int totalItemDiscount;
  int totalService;
  int totalTax;
  int voucherAmount;
  int deliveryAmount;
  int totalPayment;
  String salesType;
  List<dynamic> items;
  int itemWeight;
  bool isUseVoucher;
  List<dynamic> promos;
  List<dynamic> paymentList;
  List<TransactionHistoryTaxesAndServices> taxesAndServices;
  int itemTotalAmount;

  CartSession(
      {
        this.sessionId,
        this.response,
        this.outletName,
        this.outletId,
        this.customerName,
        this.customerEmail,
        this.customerPhone,
        this.recipientName,
        this.recipientPhone,
        this.customerTableNumber,
        this.customerSmoking,
        this.customerPax,
        this.customerNote,
        this.customerCarType,
        this.customerCarColor,
        this.customerCarNumber,
        this.eta,
        this.paymentType,
        this.totalChange,
        this.discountAmount,
        this.discountPercentage,
        this.finalAmount,
        this.receiptTotalDiscount,
        this.roundAmount,
        this.subtotal,
        this.totalDiscount,
        this.totalItemAmount,
        this.totalItemCost,
        this.totalItemDiscount,
        this.totalService,
        this.totalTax,
        this.voucherAmount,
        this.deliveryAmount,
        this.totalPayment,
        this.salesType,
        this.items,
        this.itemWeight,
        this.isUseVoucher,
        this.promos,
        this.paymentList,
        this.taxesAndServices,
        this.itemTotalAmount,
      }
  );

  factory CartSession.createResponse(Map<String, dynamic> object){
      return CartSession(response : Response.createResponse(object));
  }

  factory CartSession.createCartSession(Map<String, dynamic> object) {
    return CartSession(
        outletName: object['outletName'],
        outletId: object['outletId'],
        customerName: object['customerName'],
        customerEmail: object['customerEmail'],
        customerPhone: object['customerPhone'],
        recipientName: object['recipientName'],
        recipientPhone: object['recipientPhone'],
        customerTableNumber: object['customerTableNumber'],
        customerSmoking: object['customerSmoking'],
        customerPax: object['customerPax'],
        customerNote: object['customerNote'],
        customerCarType: object['customerCarType'],
        customerCarColor: object['customerCarColor'],
        customerCarNumber: object['customerCarNumber'],
        eta: object['eta'],
        paymentType: object['paymentType'],
        totalChange: object['totalChange'],
        discountAmount: object['discountAmount'],
        discountPercentage: object['discountPercentage'],
        finalAmount: object['finalAmount'],
        receiptTotalDiscount: object['receiptTotalDiscount'],
        roundAmount: object['roundAmount'],
        subtotal: object['subtotal'],
        totalDiscount: object['totalDiscount'],
        totalItemAmount: object['totalItemAmount'],
        totalItemCost: object['totalItemCost'],
        totalItemDiscount: object['totalItemDiscount'],
        totalService: object['totalService'],
        totalTax: object['totalTax'],
        voucherAmount: object['voucherAmount'],
        deliveryAmount: object['deliveryAmount'],
        totalPayment: object['totalPayment'],
        salesType: object['salesType'],
        items: object['items'],
        itemWeight: object['itemWeight'],
        isUseVoucher: object['isUseVoucher'],
        promos: object['promos'],
        paymentList: object['paymentList'],
        taxesAndServices: List<TransactionHistoryTaxesAndServices>.from(
          object['taxesAndServices'].map((item) => TransactionHistoryTaxesAndServices.create(item))
        ),
        itemTotalAmount: object['itemTotalAmount'],
    );
  }
}
