import 'package:digiresto/application/home_new/outlet/outlet_bloc.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/home/entity/menu_category.dart';
import 'package:get/get.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

class ListOutletPageController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;

  void getOutlets({
    required String search,
    required MenuCategory menuCategory,
    required int pageParam,
  }) {
    page.value = pageParam;
    Get.context!.read<OutletBloc>().add(
          OutletEvent.getOutlets(
            menuCategory: menuCategory,
            page: page.value,
            search: search,
          ),
        );
    update();
  }
}
