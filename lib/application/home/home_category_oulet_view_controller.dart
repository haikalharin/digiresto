import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:get/get.dart';

class HomeCategoryOutletViewController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;
  var category = "".obs;
  setCategoryByTitle(String title) {
    var titleLowered = title.toLowerCase();
    if (titleLowered == "frozen food") {
      category.value = "frozen";
    } else if (titleLowered == "indonesia pasti bisa") {
      category.value = "indonesia bisa";
    }
  }
}
