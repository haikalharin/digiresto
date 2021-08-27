import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:get/get.dart';

class HomeNearbyOutletViewController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;
}
