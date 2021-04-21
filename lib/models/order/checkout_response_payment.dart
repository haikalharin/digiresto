class CheckoutResponsePayment {
  bool isCredit;
  bool isDeeplink;
  bool isWebView;
  
  CheckoutResponsePayment({
    this.isCredit,
    this.isDeeplink,
    this.isWebView,
  });
  factory CheckoutResponsePayment.create(Map<String,dynamic> object){
    return CheckoutResponsePayment(
        isCredit: object['isCredit'],
        isDeeplink: object['isDeeplink'],
        isWebView: object['isWebView']
    );
  }
}
