import 'package:digiresto/domain/entity/order/checkout_response.dart';

class PaymentReceiptViewArgument {
  final CheckoutDataResponse checkoutDataResponse;
  PaymentReceiptViewArgument({
    required this.checkoutDataResponse,
  });
}
