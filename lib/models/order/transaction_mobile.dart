class TransactionMobile {
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
  List<dynamic> taxesAndServices;
  int itemTotalAmount;
  String note;
  String deviceTimestamp;
  String receiptCode;
  List<dynamic> payments;
  Map<String, dynamic> outlet;
  String orderId;
  String status;
  Map<String, dynamic> deliveryDetail;
  Map<String, dynamic> rating;
  

  TransactionMobile({ this.outletName, this.outletId, this.customerName, this.customerEmail, this.customerPhone, this.recipientName, this.recipientPhone, this.customerTableNumber, this.customerSmoking, this.customerPax, this.customerNote, this.customerCarType, this.customerCarColor, this.customerCarNumber, this.eta, this.totalChange, this.discountAmount, this.discountPercentage, this.finalAmount, this.receiptTotalDiscount, this.roundAmount, this.subtotal, this.totalDiscount, this.totalItemAmount, this.totalItemCost, this.totalItemDiscount, this.totalService, this.totalTax, this.voucherAmount, this.deliveryAmount, this.totalPayment, this.salesType, this.items, this.itemWeight, this.isUseVoucher, this.promos, this.paymentList, this.taxesAndServices, this.itemTotalAmount, this.note, this.deviceTimestamp, this.receiptCode, this.payments, this.outlet, this.orderId, this.status, this.deliveryDetail, this.rating, });

  factory TransactionMobile.create(Map<String,dynamic> object){
    return TransactionMobile(
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
        taxesAndServices: object['taxesAndServices'],
        itemTotalAmount: object['itemTotalAmount'],
        note: object['note'],
        deviceTimestamp: object['deviceTimestamp'],
        receiptCode: object['receiptCode'],
        payments: object['payments'],
        outlet: object['outlet'],
        orderId: object['orderId'],
        status: object['status'],
        deliveryDetail: object['deliveryDetail'],
        rating: object['rating'],
    );
  }
}
