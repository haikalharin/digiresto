import 'package:digiresto/domain/auth/entity/user_auth.dart';
import 'package:digiresto/domain/entity/order/checkout_response.dart';

class PaymentVAViewArgument {
  final CheckoutDataResponse checkoutDataResponse;
  final UserAuth userProfile;
  PaymentVAViewArgument({
    required this.userProfile,
    required this.checkoutDataResponse,
  });
}
