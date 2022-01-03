class CreditHistory {
  AccountHistory? accountHistory;

  CreditHistory({this.accountHistory});

  CreditHistory.fromJson(Map<String, dynamic> json) {
    accountHistory = json['accountHistory'] != null
        ? new AccountHistory.fromJson(json['accountHistory'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.accountHistory != null) {
      data['accountHistory'] = this.accountHistory?.toJson();
    }
    return data;
  }
}

class AccountHistory {
  int? pageSize;
  int? onPage;
  String? status;
  int? totalCount;
  String? creditLimit;
  String? accountBalance;
  List<ListAccountHistoryDetails>? listAccountHistoryDetails;

  AccountHistory(
      {this.pageSize,
      this.onPage,
      this.status,
      this.totalCount,
      this.creditLimit,
      this.accountBalance,
      this.listAccountHistoryDetails});

  AccountHistory.fromJson(Map<String, dynamic> json) {
    pageSize = json['pageSize'];
    onPage = json['onPage'];
    status = json['status'];
    totalCount = json['totalCount'];
    creditLimit = json['creditLimit'];
    accountBalance = json['accountBalance'];
    if (json['listAccountHistoryDetails'] != null) {
      listAccountHistoryDetails = [];
      json['listAccountHistoryDetails'].forEach((v) {
        listAccountHistoryDetails!
            .add(new ListAccountHistoryDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageSize'] = this.pageSize;
    data['onPage'] = this.onPage;
    data['status'] = this.status;
    data['totalCount'] = this.totalCount;
    data['creditLimit'] = this.creditLimit;
    data['accountBalance'] = this.accountBalance;
    if (this.listAccountHistoryDetails != null) {
      data['listAccountHistoryDetails'] =
          this.listAccountHistoryDetails?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListAccountHistoryDetails {
  int? transferId;
  String? description;
  String? amount;
  String? status;
  String? transactionNumber;
  String? transferType;
  String? transactionDate;
  String? fee;
  String? transferTypeName;
  String? transferTypeDescription;
  String? type;
  String? groupPayment;
  bool? needReceiptInquiry;

  ListAccountHistoryDetails(
      {this.transferId,
      this.description,
      this.amount,
      this.status,
      this.transactionNumber,
      this.transferType,
      this.transactionDate,
      this.fee,
      this.transferTypeName,
      this.transferTypeDescription,
      this.type,
      this.groupPayment,
      this.needReceiptInquiry});

  ListAccountHistoryDetails.fromJson(Map<String, dynamic> json) {
    transferId = json['transferId'];
    description = json['description'];
    amount = json['amount'];
    status = json['status'];
    transactionNumber = json['transactionNumber'];
    transferType = json['transferType'];
    transactionDate = json['transactionDate'];
    fee = json['fee'];
    transferTypeName = json['transferTypeName'];
    transferTypeDescription = json['transferTypeDescription'];
    type = json['type'];
    groupPayment = json['groupPayment'];
    needReceiptInquiry = json['needReceiptInquiry'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['transferId'] = this.transferId;
    data['description'] = this.description;
    data['amount'] = this.amount;
    data['status'] = this.status;
    data['transactionNumber'] = this.transactionNumber;
    data['transferType'] = this.transferType;
    data['transactionDate'] = this.transactionDate;
    data['fee'] = this.fee;
    data['transferTypeName'] = this.transferTypeName;
    data['transferTypeDescription'] = this.transferTypeDescription;
    data['type'] = this.type;
    data['groupPayment'] = this.groupPayment;
    data['needReceiptInquiry'] = this.needReceiptInquiry;
    return data;
  }
}
