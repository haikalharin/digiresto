import 'package:digiresto/domain/entity/transaction/transaction_history_item_modifier.dart';

class TransactionHistoryItem {
  int? productId;
  String? title;
  int? price;
  String? code;
  int? cost;
  int? qty;
  int? basicWeight;
  int? weight;
  String? category;
  int? categoryId;
  String? categoryCode;
  String? sku;
  String? note;
  bool? isPreorder;
  int? preorderPeriod;
  int? amount;
  List<TransactionHistoryItemModifier>? modifiers;
  int? modifiersAmount;
  int? modifiersCost;
  int? modifiersDiscount;
  int? singleModifiersAmount;
  int? subtotal;
  int? serviceAmount;
  int? taxAmount;
  String? img;
  String? image;

  TransactionHistoryItem({
    this.productId,
    this.title,
    this.price,
    this.code,
    this.cost,
    this.qty,
    this.basicWeight,
    this.weight,
    this.category,
    this.categoryId,
    this.categoryCode,
    this.sku,
    this.note,
    this.isPreorder,
    this.preorderPeriod,
    this.amount,
    this.modifiers,
    this.modifiersAmount,
    this.modifiersCost,
    this.modifiersDiscount,
    this.singleModifiersAmount,
    this.subtotal,
    this.serviceAmount,
    this.taxAmount,
    this.img,
    this.image,
  });
  factory TransactionHistoryItem.create(Map<String, dynamic> object) {
    return TransactionHistoryItem(
      productId: object['productId'],
      title: object['title'],
      price: object['price'],
      code: object['code'],
      cost: object['cost'],
      qty: object['qty'],
      basicWeight: object['basicWeight'],
      weight: object['weight'],
      category: object['category'],
      categoryId: object['categoryId'],
      categoryCode: object['categoryCode'],
      sku: object['sku'],
      note: object['note'],
      isPreorder: object['isPreorder'],
      preorderPeriod: object['preorderPeriod'],
      amount: object['amount'],
      modifiers: List<TransactionHistoryItemModifier>.from(object['modifiers']
          .map((data) => TransactionHistoryItemModifier.create(data))),
      modifiersAmount: object['modifiersAmount'],
      modifiersCost: object['modifiersCost'],
      modifiersDiscount: object['modifiersDiscount'],
      singleModifiersAmount: object['singleModifiersAmount'],
      subtotal: object['subtotal'],
      serviceAmount: object['serviceAmount'],
      taxAmount: object['taxAmount'],
      img: object['img'],
      image: object['image'],
    );
  }
}
