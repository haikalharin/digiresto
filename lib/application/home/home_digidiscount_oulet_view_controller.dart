import 'package:digiresto/domain/entity/order/digi_discount_outlet_response.dart';
import 'package:get/get.dart';

class HomeDigidiscountOutletViewController extends GetxController {
  RxList<DigiDiscountOutletDataResponse> listPromoOutlet =
      List<DigiDiscountOutletDataResponse>.empty().obs;
  var page = 1.obs;
}
