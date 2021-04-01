class TransactionHistoryTaxesAndServices {
  int id;
  String code;
  String name;
  String type;
  int amount;
  List<dynamic> salesTypes;
  String title;

  TransactionHistoryTaxesAndServices({
    this.id,
    this.code,
    this.name,
    this.type,
    this.amount,
    this.salesTypes,
    this.title,
  });
  factory TransactionHistoryTaxesAndServices.create(Map<String, dynamic> object) {
    return TransactionHistoryTaxesAndServices(
      id: object['id'],
      code: object['code'],
      name: object['name'],
      type: object['type'],
      amount: object['amount'],
      salesTypes: object['salesTypes'],
      title: object['title'],
    );
  }
}
