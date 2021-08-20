import 'package:digiresto/domain/entity/order/outlet_list.dart';
import 'package:get/get.dart';

class HomeNearbyOutletViewController extends GetxController {
  RxList<OutletList> listOutlet = List<OutletList>.empty().obs;
  var page = 1.obs;
}
