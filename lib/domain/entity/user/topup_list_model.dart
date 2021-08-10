class TopupList {
  String? description;
  String? destination;
  String? destinationId;
  String? id;
  bool? isEnable;
  String? title;
  String? backgroundColor;
  String? icon;
  dynamic param;
  List<SubCategory>? subCategory;

  TopupList(
      {this.description,
      this.destination,
      this.destinationId,
      this.id,
      this.isEnable,
      this.title,
      this.backgroundColor,
      this.icon,
      this.param,
      this.subCategory});

  TopupList.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    destination = json['destination'];
    destinationId = json['destinationId'];
    id = json['id'];
    isEnable = json['isEnable'];
    title = json['title'];
    backgroundColor = json['backgroundColor'];
    icon = json['icon'];
    param = json['param'];
    if (json['subCategory'] != null) {
      subCategory = [];
      json['subCategory'].forEach((v) {
        subCategory?.add(new SubCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['destination'] = this.destination;
    data['destinationId'] = this.destinationId;
    data['id'] = this.id;
    data['isEnable'] = this.isEnable;
    data['title'] = this.title;
    data['backgroundColor'] = this.backgroundColor;
    data['icon'] = this.icon;
    data['param'] = this.param;
    if (this.subCategory != null) {
      data['subCategory'] = this.subCategory?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCategory {
  String? description;
  String? destination;
  String? destinationId;
  String? id;
  bool? isEnable;
  String? title;
  Map<String, dynamic>? param;

  SubCategory(
      {this.description,
      this.destination,
      this.destinationId,
      this.id,
      this.isEnable,
      this.title,
      this.param});

  SubCategory.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    destination = json['destination'];
    destinationId = json['destinationId'];
    id = json['id'];
    isEnable = json['isEnable'];
    title = json['title'];
    param = json['param'] != null ? json['param'] : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['description'] = this.description;
    data['destination'] = this.destination;
    data['destinationId'] = this.destinationId;
    data['id'] = this.id;
    data['isEnable'] = this.isEnable;
    data['title'] = this.title;
    if (this.param != null) {
      data['param'] = this.param;
    }
    return data;
  }
}

class Param {
  String? bankCode;
  String? customerPhone;
  String? finalAmount;
  String? amount;
  String? fee;

  Param(
      {this.bankCode,
      this.customerPhone,
      this.finalAmount,
      this.amount,
      this.fee});

  Param.fromJson(Map<String, dynamic> json) {
    bankCode = json['bankCode'];
    customerPhone = json['customerPhone'];
    finalAmount = json['finalAmount'];
    amount = json['fee'];
    fee = json['fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bankCode'] = this.bankCode;
    data['customerPhone'] = this.customerPhone;
    data['finalAmount'] = this.finalAmount;
    data['amount'] = this.amount;
    data['fee'] = this.fee;
    return data;
  }
}
