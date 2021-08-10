class PaymentMethod {
  String? id;
  String? title;
  int? digirestoPaymentId;
  List<dynamic>? channels;
  List<dynamic>? salesTypes;
  List<dynamic>? excludeMerchant;
  bool? isUsePaymentSwitcher;
  bool? isCredit;
  bool? isEDC;
  bool? isQr;
  bool? isVoucher;
  bool? isCash;
  bool? isWebView;
  bool? isDeeplink;

  PaymentMethod({
    this.id,
    this.title,
    this.digirestoPaymentId,
    this.channels,
    this.salesTypes,
    this.excludeMerchant,
    this.isUsePaymentSwitcher,
    this.isCredit,
    this.isEDC,
    this.isQr,
    this.isVoucher,
    this.isCash,
    this.isWebView,
    this.isDeeplink,
  });

  factory PaymentMethod.create(Map<String, dynamic> object) {
    return PaymentMethod(
      id: object['id'],
      title: object['title'],
      digirestoPaymentId: object['digirestoPaymentId'],
      channels: object['channels'],
      salesTypes: object['salesTypes'],
      excludeMerchant: object['excludeMerchant'],
      isUsePaymentSwitcher: object['isUsePaymentSwitcher'],
      isCredit: object['isCredit'],
      isEDC: object['isEDC'],
      isQr: object['isQr'],
      isVoucher: object['isVoucher'],
      isCash: object['isCash'],
      isWebView: object['isWebView'],
      isDeeplink: object['isDeeplink'],
    );
  }
}
