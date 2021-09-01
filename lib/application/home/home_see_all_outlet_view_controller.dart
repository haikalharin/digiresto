import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/order/home_see_all_outlet_view_argument.dart';
import 'package:get/get.dart';

class HomeSeeAllOutletViewController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;
  var merchantId = "".obs;
  Rxn<HomeSeeAllOutletViewArgument> args = Rxn<HomeSeeAllOutletViewArgument>();
}
