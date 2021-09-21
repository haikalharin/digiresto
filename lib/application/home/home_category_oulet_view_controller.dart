import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_category_param.dart';
import 'package:digiresto/domain/order/home_order_view_argument.dart';
import 'package:digiresto/presentation/core/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeCategoryOutletViewController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;
  var category = "".obs;
  Rxn<HomeOrderViewArgument> args = Rxn<HomeOrderViewArgument>();
  final searchController = TextEditingController();
  setCategoryByTitle() {
    var titleLowered = args.value!.title.toLowerCase();
    if (titleLowered == "frozen food") {
      category.value = "frozen";
    } else if (titleLowered == "indonesia pasti bisa") {
      category.value = "indonesia bisa";
    }
  }

  void getOutletByLocation(String search, int pageParam) {
    Loading.show();
    Get.context!.read<OrderBloc>().add(OrderEvent.getOutletByCategory(
        GetOutletByCategoryParam(
            queryString: GetOutletByCategoryQueryParam(
                category: category.value,
                location: "",
                page: page.value,
                filter: search),
            body: GetOutletByCategoryBodyParam())));
  }
}
