class TransactionHistoryItemModifier {
  String? modifierGroupId;
  String? modifierGroupName;
  String? modifierGroupCode;
  int? id;
  int? modifierId;
  String? modifierCode;
  String? title;
  int? basicWeight;
  int? price;
  int? qty;
  int? amount;
  int? discountAmount;
  int? discountPercentage;

  TransactionHistoryItemModifier({
    this.modifierGroupId,
    this.modifierGroupName,
    this.modifierGroupCode,
    this.id,
    this.modifierId,
    this.modifierCode,
    this.title,
    this.basicWeight,
    this.price,
    this.qty,
    this.amount,
    this.discountAmount,
    this.discountPercentage,
  });
  factory TransactionHistoryItemModifier.create(Map<String, dynamic> object) {
    return TransactionHistoryItemModifier(
      modifierGroupId: object['modifierGroupId'],
      modifierGroupName: object['modifierGroupName'],
      modifierGroupCode: object['modifierGroupCode'],
      id: object['id'],
      modifierId: object['modifierId'],
      modifierCode: object['modifierCode'],
      title: object['title'],
      basicWeight: object['basicWeight'],
      price: object['price'],
      qty: object['qty'],
      amount: object['amount'],
      discountAmount: object['discountAmount'],
      discountPercentage: object['discountPercentage'],
    );
  }
}
