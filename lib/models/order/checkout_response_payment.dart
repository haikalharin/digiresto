class CheckoutResponsePayment {
  bool isCredit;
  bool isDeeplink;
  bool isWebView;
  String url;
  String deeplink;
  
  CheckoutResponsePayment({
    this.isCredit,
    this.isDeeplink,
    this.isWebView,
    this.url,
    this.deeplink,
  });
  factory CheckoutResponsePayment.create(Map<String,dynamic> object){
    return CheckoutResponsePayment(
        isCredit: object['isCredit'],
        isDeeplink: object['isDeeplink'],
        isWebView: object['isWebView'],
        url: object['isWebView'] ? object['url'] : '',
        deeplink: object['isDeeplink'] ? object['deeplink'] : '',
    );
  }
}
