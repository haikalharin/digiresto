import 'package:digiresto/domain/entity/user/topup_model.dart';

class TopupPending {
  String? customerPhone;
  String? paymentType;
  Topup? detail;
  String? status;
  bool? isDelete;
  String? createdDate;
  String? billingId;

  TopupPending(
      {this.customerPhone,
      this.paymentType,
      this.detail,
      this.status,
      this.isDelete,
      this.createdDate,
      this.billingId});

  TopupPending.fromJson(Map<String, dynamic> json) {
    customerPhone = json['customerPhone'];
    paymentType = json['paymentType'];
    detail = json['detail'] != null ? new Topup.fromJson(json['detail']) : null;
    status = json['status'];
    isDelete = json['is_delete'];
    createdDate = json['created_date'];
    billingId = json['billingId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customerPhone'] = this.customerPhone;
    data['paymentType'] = this.paymentType;
    if (this.detail != null) {
      data['detail'] = this.detail?.toJson();
    }
    data['status'] = this.status;
    data['is_delete'] = this.isDelete;
    data['created_date'] = this.createdDate;
    data['billingId'] = this.billingId;
    return data;
  }
}
//
// class Detail {
//   String orderId;
//   String title;
//   String vaNumber;
//   String amount;
//   String fee;
//   String finalAmount;
//   int expires;
//   String expiresAt;
//   String serviceProvider;
//   String formattedTransactionDate;
//   String bankAccName;
//   String bankName;
//   String formattedUniqueAmount;
//   String bankAccNo;
//   String transactionDate;
//   String uniqueAmount;
//
//   Detail(
//       {this.orderId,
//         this.title,
//         this.vaNumber,
//         this.amount,
//         this.fee,
//         this.finalAmount,
//         this.expires,
//         this.expiresAt,
//         this.serviceProvider,
//         this.formattedTransactionDate,
//         this.bankAccName,
//         this.bankName,
//         this.formattedUniqueAmount,
//         this.bankAccNo,
//         this.transactionDate,
//         this.uniqueAmount});
//
//   Detail.fromJson(Map<String, dynamic> json) {
//     orderId = json['orderId'];
//     title = json['title'];
//     vaNumber = json['vaNumber'];
//     amount = json['amount'];
//     fee = json['fee'];
//     finalAmount = json['finalAmount'];
//     expires = json['expires'];
//     expiresAt = json['expiresAt'];
//     serviceProvider = json['serviceProvider'];
//     formattedTransactionDate = json['formattedTransactionDate'];
//     bankAccName = json['bankAccName'];
//     bankName = json['bankName'];
//     formattedUniqueAmount = json['formattedUniqueAmount'];
//     bankAccNo = json['bankAccNo'];
//     transactionDate = json['transactionDate'];
//     uniqueAmount = json['uniqueAmount'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['orderId'] = this.orderId;
//     data['title'] = this.title;
//     data['vaNumber'] = this.vaNumber;
//     data['amount'] = this.amount;
//     data['fee'] = this.fee;
//     data['finalAmount'] = this.finalAmount;
//     data['expires'] = this.expires;
//     data['expiresAt'] = this.expiresAt;
//     data['serviceProvider'] = this.serviceProvider;
//     data['formattedTransactionDate'] = this.formattedTransactionDate;
//     data['bankAccName'] = this.bankAccName;
//     data['bankName'] = this.bankName;
//     data['formattedUniqueAmount'] = this.formattedUniqueAmount;
//     data['bankAccNo'] = this.bankAccNo;
//     data['transactionDate'] = this.transactionDate;
//     data['uniqueAmount'] = this.uniqueAmount;
//     return data;
//   }
// }
