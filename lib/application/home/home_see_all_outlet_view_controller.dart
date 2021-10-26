import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/entity/order/outlet_category_response.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_by_merchant_param.dart';
import 'package:digiresto/domain/order/home_see_all_outlet_view_argument.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeSeeAllOutletViewController extends GetxController {
  RxList<OutletCategoryDataResponse> listOutlet =
      List<OutletCategoryDataResponse>.empty().obs;
  var page = 1.obs;
  var merchantId = "".obs;
  Rxn<HomeSeeAllOutletViewArgument> args = Rxn<HomeSeeAllOutletViewArgument>();
  final searchController = TextEditingController();

  void getOutletByLocation(String search, int pageParam) {
    Get.context!.read<OrderBloc>().add(OrderEvent.getOutletByMerchant(
        GetOutletByMerchantParam(
            queryString: GetOutletByMerchantQueryParam(
                merchantId: merchantId.value,
                location: "",
                page: page.value,
                filter: search),
            body: GetOutletByMerchantBodyParam())));
  }
}
