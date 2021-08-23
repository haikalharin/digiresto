import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/entity/order/delivery_method_model.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OrderViewController extends GetxController {
  var page = 1.obs;
  var categoryId = "".obs;
  var search = "".obs;
  var orderType = "".obs;
  var orderProductLength = 0.obs;
  var detailOutletLoading = false.obs;
  var indexTabBar = 0.obs;
  Rxn<OrderDetailViewArgument> outlet = Rxn<OrderDetailViewArgument>();

  var orderSalesTypes = "".obs;
  Rx<DeliveryMethod> selectedDeliveryMethod = DeliveryMethod(name: "").obs;
  Rx<TransactionMobile> transaction = TransactionMobile().obs;
  Rxn<DetailOutletDataResponse> detailOutlet = Rxn<DetailOutletDataResponse>();
  Rxn<List<OutletProductCategoryDataResponse>> listCategory =
      Rxn<List<OutletProductCategoryDataResponse>>();
  Rxn<List<OutletListProductDataResponse>> listProduct =
      Rxn<List<OutletListProductDataResponse>>();
  Rxn<List<GetListVoucherOutletDataResponse>> listVoucher =
      Rxn<List<GetListVoucherOutletDataResponse>>();
  Rxn<List<PromoOutletDataResponse>> listPromo =
      Rxn<List<PromoOutletDataResponse>>();

  List<Widget> generateListSalesType() {
    List<Widget> listWidget = [];
    detailOutlet.value!.salesTypes.forEach((element) {
      if (element == "dineIn") {
        listWidget.add(Container(
          width: MediaQuery.of(Get.context!).size.width * 0.4,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderDineIn),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                "Makan di tempat",
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        ));
      } else if (element == "takeAway") {
        listWidget.add(Container(
          width: MediaQuery.of(Get.context!).size.width * 0.4,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderTakeIt),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                "Bawa Pulang",
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        ));
      } else if (element == "onlineDriver") {
        listWidget.add(Container(
          width: MediaQuery.of(Get.context!).size.width * 0.4,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderDelivery),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                "Pesan Antar",
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        ));
      } else if (element == "driveThru") {
        listWidget.add(Container(
          width: MediaQuery.of(Get.context!).size.width * 0.4,
          child: Row(
            children: [
              ImageIcon(AssetImage(AppAssets.iconOutletOrderDriveThru),
                  size: 14, color: AppColors.redTabBar),
              SizedBox(
                width: 4,
              ),
              Text(
                "Drive Thru",
                style: AppFont.textBlack11Light,
              ),
            ],
          ),
        ));
      }
    });
    return listWidget;
  }
}
