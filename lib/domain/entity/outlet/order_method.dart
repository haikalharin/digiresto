class OrderMethod {
  bool? forceSelect;
  List<String>? defaultList;
  OrderMethod({
    this.forceSelect,
    this.defaultList,
  });
  factory OrderMethod.createOrderMethod(Map<String, dynamic> object) {
    return OrderMethod(
      forceSelect: object['forceSelect'],
      defaultList: List<String>.from(object['defaultList'].map((data) => data)),
    );
  }
}
