import 'package:digiresto/domain/entity/order/checkout_response_payment.dart';

class CheckoutResponse {
  String? orderId;
  String? receiptCode;
  String? sessionId;
  CheckoutResponsePayment? payment;

  CheckoutResponse({
    this.orderId,
    this.receiptCode,
    this.sessionId,
    this.payment,
  });
  factory CheckoutResponse.create(Map<String, dynamic> object) {
    return CheckoutResponse(
      orderId: object['orderId'],
      receiptCode: object['receiptCode'],
      sessionId: object['sessionId'],
      payment: CheckoutResponsePayment.create(object['payment']),
    );
  }
}
