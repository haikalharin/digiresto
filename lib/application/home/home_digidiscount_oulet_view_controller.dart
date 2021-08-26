import 'package:digiresto/domain/entity/order/promo_outlet_model.dart';
import 'package:get/get.dart';

class HomeDigidiscountOutletViewController extends GetxController {
  RxList<PromoOutlet> listPromoOutlet = List<PromoOutlet>.empty().obs;
  var page = 1.obs;
}
