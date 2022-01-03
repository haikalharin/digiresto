import 'package:digiresto/domain/entity/order/payment_method_response.dart';
import 'package:get/get.dart';

class SelectPaymentMethodViewController extends GetxController {
  var isLoading = true.obs;
  var itemMethod = Rxn<List<PaymentMethodDataResponse>>();
  var balanceDigiCredit = Rxn<String>();
}
