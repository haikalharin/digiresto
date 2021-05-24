import 'package:boilerplate/models/outlet/outlet.dart';
import 'package:boilerplate/models/transaction/transaction_history_item.dart';
import 'package:boilerplate/models/transaction/transaction_history_taxes_and_services.dart';

class TransactionHistory {
  String outletId;
  String outletName;
  String deviceTimestamp;
  String customerName;
  String recipientName;
  String recipientPhone;
  String customerPhone;
  String customerTableNumber;
  String customerNote;
  String customerCarType;
  String customerCarColor;
  String customerCarNumber;
  int totalChange;
  int discountAmount;
  int discountPercentage;
  int subtotal;
  List<TransactionHistoryItem> items;
  int totalItemAmount;
  int totalItemCost;
  int totalItemDiscount;
  int totalPayment;
  int totalService;
  int totalTax;
  int itemWeight;
  bool isPreorder;
  String note;
  String salesType;
  String receiptCode;
  int roundAmount;
  String status;
  List<TransactionHistoryTaxesAndServices> taxesAndServices;
  List<dynamic> promos;
  int totalDiscount;
  int receiptTotalDiscount;
  bool isUseVoucher;
  int voucherAmount;
  int finalAmount;
  List<dynamic> paymentList;
  Map<String, dynamic> digifood;
  int deliveryAmount;
  String eta;
  List<dynamic> payments;
  String orderId;
  Outlet outlet;
  Map<String, dynamic> deliveryDetail;

  TransactionHistory({
    this.outletId,
    this.outletName,
    this.deviceTimestamp,
    this.customerName,
    this.recipientName,
    this.recipientPhone,
    this.customerPhone,
    this.customerTableNumber,
    this.customerNote,
    this.customerCarType,
    this.customerCarColor,
    this.customerCarNumber,
    this.totalChange,
    this.discountAmount,
    this.discountPercentage,
    this.subtotal,
    this.items,
    this.totalItemAmount,
    this.totalItemCost,
    this.totalItemDiscount,
    this.totalPayment,
    this.totalService,
    this.totalTax,
    this.itemWeight,
    this.isPreorder,
    this.note,
    this.salesType,
    this.receiptCode,
    this.roundAmount,
    this.status,
    this.taxesAndServices,
    this.promos,
    this.totalDiscount,
    this.receiptTotalDiscount,
    this.isUseVoucher,
    this.voucherAmount,
    this.finalAmount,
    this.paymentList,
    this.digifood,
    this.deliveryAmount,
    this.eta,
    this.payments,
    this.orderId,
    this.outlet,
    this.deliveryDetail,
  });
  factory TransactionHistory.createTransactionHistory(Map<String, dynamic> object) {
    return TransactionHistory(
      outletId: object['outletId'].toString(),
      outletName: object['outletName'],
      deviceTimestamp: object['deviceTimestamp'],
      customerName: object['customerName'],
      recipientName: object['recipientName'],
      recipientPhone: object['recipientPhone'],
      customerPhone: object['customerPhone'],
      customerTableNumber: object['customerTableNumber'],
      customerNote: object['customerNote'],
      customerCarType: object['customerCarType'],
      customerCarColor: object['customerCarColor'],
      customerCarNumber: object['customerCarNumber'],
      totalChange: object['totalChange'],
      discountAmount: object['discountAmount'],
      discountPercentage: object['discountPercentage'],
      subtotal: object['subtotal'],
      items: List<TransactionHistoryItem>.from(object['items'].map((data) => TransactionHistoryItem.create(data))),
      totalItemAmount: object['totalItemAmount'],
      totalItemCost: object['totalItemCost'],
      totalItemDiscount: object['totalItemDiscount'],
      totalPayment: object['totalPayment'],
      totalService: object['totalService'],
      totalTax: object['totalTax'],
      itemWeight: object['itemWeight'],
      isPreorder: object['isPreorder'],
      note: object['note'],
      salesType: object['salesType'],
      receiptCode: object['receiptCode'],
      roundAmount: object['roundAmount'],
      status: object['status'],
      taxesAndServices: List<TransactionHistoryTaxesAndServices>.from(object['taxesAndServices'].map((data) => TransactionHistoryTaxesAndServices.create(data))),
      promos: object['promos'],
      totalDiscount: object['totalDiscount'],
      receiptTotalDiscount: object['receiptTotalDiscount'],
      isUseVoucher: object['isUseVoucher'],
      voucherAmount: object['voucherAmount'],
      finalAmount: object['finalAmount'],
      paymentList: object['paymentList'],
      digifood: object['digifood'],
      deliveryAmount: object['deliveryAmount'],
      eta: object['eta'],
      payments: object['payments'],
      orderId: object['orderId'],
      outlet: Outlet.createOutlet(object['outlet']),
      deliveryDetail: object['deliveryDetail'],
    );
  }
}
