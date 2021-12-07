import 'package:digiresto/domain/entity/order/checkout_response.dart';

class PaymentWebViewArgument {
  final CheckoutDataResponse checkoutDataResponse;
  PaymentWebViewArgument({
    required this.checkoutDataResponse,
  });
}
