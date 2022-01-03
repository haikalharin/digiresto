class OrderDetailViewArgument {
  final String outletId;
  final String merchantId;
  final String? mealsTitle;
  final String? mealsTypes;
  final String? deliveryTime;
  final String? preOrderDate;
  final bool? isCatering;
  final String? dayDate;
  final bool? isSnack;

  OrderDetailViewArgument(
    this.outletId,
    this.merchantId, {
    this.mealsTitle,
    this.mealsTypes,
    this.preOrderDate,
    this.isCatering,
    this.deliveryTime,
    this.dayDate,
    this.isSnack = false,
  });
}
