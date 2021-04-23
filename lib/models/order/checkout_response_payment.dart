class CheckoutResponsePayment {
  bool isCredit;
  bool isDeeplink;
  bool isWebView;
  String url;
  
  CheckoutResponsePayment({
    this.isCredit,
    this.isDeeplink,
    this.isWebView,
    this.url,
  });
  factory CheckoutResponsePayment.create(Map<String,dynamic> object){
    return CheckoutResponsePayment(
        isCredit: object['isCredit'],
        isDeeplink: object['isDeeplink'],
        isWebView: object['isWebView'],
        url: object['isWebView'] ? object['url'] : '',
    );
  }
}
