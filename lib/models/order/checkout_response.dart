class CheckoutResponse {
  String orderId;
  String receiptCode;
  String sessionId;
  
  CheckoutResponse({
    this.orderId,
    this.receiptCode,
    this.sessionId,
  });
  factory CheckoutResponse.create(Map<String,dynamic> object){
    return CheckoutResponse(
        orderId: object['orderId'],
        receiptCode: object['receiptCode'],
        sessionId: object['sessionId'],
    );
  }
}
