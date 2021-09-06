import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile_response.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OrderViewController extends GetxController {
  var isLoading = true.obs;
  var page = 1.obs;
  var categoryId = "".obs;
  var search = "".obs;
  var orderType = "dineIn".obs;
  var orderProductLength = 0.obs;
  var detailOutletLoading = false.obs;
  var indexTabBar = 0.obs;
  var salesType = Rxn<String>();
  Rxn<OrderDetailViewArgument> outlet = Rxn<OrderDetailViewArgument>();

  var orderSalesTypes = "".obs;
  Rxn<DeliveryMethodDataResponse> selectedDeliveryMethod =
      Rxn<DeliveryMethodDataResponse>();
  Rxn<TransactionMobileResponse> transaction = Rxn<TransactionMobileResponse>();
  Rxn<DetailOutletDataResponse> detailOutlet = Rxn<DetailOutletDataResponse>();
  Rxn<List<OutletProductCategoryDataResponse>> listCategory =
      Rxn<List<OutletProductCategoryDataResponse>>();
  Rxn<List<OutletListProductDataResponse>> listProduct =
      Rxn<List<OutletListProductDataResponse>>();
  Rxn<List<GetListVoucherOutletDataResponse>> listVoucher =
      Rxn<List<GetListVoucherOutletDataResponse>>();
  Rxn<List<PromoOutletDataResponse>> listPromo =
      Rxn<List<PromoOutletDataResponse>>();
  Rxn<CartSessionResponse> cartSession = Rxn<CartSessionResponse>();

  Widget generateListSalesTypeIcon(
      {Color color = Colors.black, double size = 16}) {
    Widget listWidget;

    if (salesType.value == "dineIn") {
      listWidget = ImageIcon(AssetImage(AppAssets.iconOutletOrderDineIn),
          size: size, color: color);
    } else if (salesType.value == "takeAway") {
      listWidget = ImageIcon(AssetImage(AppAssets.iconOutletOrderTakeIt),
          size: size, color: color);
    } else if (salesType.value == "onlineDriver") {
      listWidget = ImageIcon(AssetImage(AppAssets.iconOutletOrderDelivery),
          size: size, color: color);
    } else if (salesType.value == "driveThru") {
      listWidget = ImageIcon(AssetImage(AppAssets.iconOutletOrderDriveThru),
          size: size, color: color);
    } else {
      listWidget = Container();
    }

    return listWidget;
  }

  List<Widget> generateListSalesTypeOption(onTap(String element)) {
    List<Widget> listWidget = [];
    detailOutlet.value!.salesTypes.forEach((element) {
      if (element == "dineIn") {
        listWidget.add(Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderDineIn),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text('Makan di Tempat', style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    "Pilih",
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        ));
      } else if (element == "takeAway") {
        listWidget.add(Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderTakeIt),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text('Bawa Pulang', style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    "Pilih",
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        ));
      } else if (element == "onlineDriver") {
        listWidget.add(Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderDelivery),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text('Pesan Antar', style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    "Pilih",
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        ));
      } else if (element == "driveThru") {
        listWidget.add(Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
          child: Row(
            children: [
              Container(
                child: ImageIcon(
                  AssetImage(AppAssets.iconOutletOrderDriveThru),
                  color: AppColors.white,
                  size: 24,
                ),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.redD12B34, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 16,
              ),
              Text('Drive Thru', style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    "Pilih",
                    style: AppFont.textBlack12Bold
                        .copyWith(color: AppColors.redD12B34),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 0,
                      side: BorderSide(
                        width: 1.0,
                        color: AppColors.redD12B34,
                      ))),
            ],
          ),
        ));
      }
    });
    return listWidget;
  }

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
