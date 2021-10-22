import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/domain/entity/order/digi_discount_outlet_response.dart';
import 'package:digiresto/domain/entity/order/param/get_digi_discount_outlet_param.dart';
import 'package:digiresto/presentation/core/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeDigidiscountOutletViewController extends GetxController {
  RxList<DigiDiscountOutletDataResponse> listPromoOutlet =
      List<DigiDiscountOutletDataResponse>.empty().obs;
  var page = 1.obs;
  final searchController = TextEditingController();

  void getPromoOutlet(String search, int pageParam) {
    Get.context!.read<OrderBloc>().add(OrderEvent.getDigiDiscountOutlet(
        GetDigiDiscountOutletParam(
            body: GetDigiDiscountOutletBodyParam(),
            queryString: GetDigiDiscountOutletQueryParam(
                filter: '', location: '', page: page.value))));
  }
}
