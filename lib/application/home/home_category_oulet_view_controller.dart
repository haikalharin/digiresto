import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/order/home_order_view_argument.dart';
import 'package:get/get.dart';

class HomeCategoryOutletViewController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;
  var category = "".obs;
  Rxn<HomeOrderViewArgument> args = Rxn<HomeOrderViewArgument>();
  setCategoryByTitle() {
    var titleLowered = args.value!.title.toLowerCase();
    if (titleLowered == "frozen food") {
      category.value = "frozen";
    } else if (titleLowered == "indonesia pasti bisa") {
      category.value = "indonesia bisa";
    }
  }
}
