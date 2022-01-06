import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/entity/order/cart_session_response.dart';
import 'package:digiresto/domain/entity/order/delivery_method_response.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_response.dart';
import 'package:digiresto/domain/entity/order/get_banner_shopee_response.dart';
import 'package:digiresto/domain/entity/order/get_list_voucher_outlet_response.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_voucher_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_category.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_param.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/entity/order/transaction_mobile_response.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/domain/promo_voucher/voucher_detail_arguments.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'bloc/order_bloc.dart';

class OrderViewController extends GetxController {
  var isLoading = true.obs;
  var page = 1.obs;
  var categoryId = "".obs;
  var categoryName = "".obs;
  var search = "".obs;
  var orderProductLength = 0.obs;
  var detailOutletLoading = false.obs;
  var indexTabBar = 1.obs;
  var salesType = Rxn<String>();
  var outletId = Rxn<String>();

  var voucherCode = Rxn<VoucherDetailArguments>();
  bool isSameOutlet() {
    return (cartSession.value?.transactionData!.outletName ==
            detailOutlet.value?.endpointName ||
        cartSession.value == null);
  }

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
  Rxn<GetBannerShopeeResponse> bannerShopee = Rxn<GetBannerShopeeResponse>();
  RxnString outletCart = RxnString();

  void getDetailOutlet() {
    Get.context!.read<OrderBloc>().add(
          OrderEvent.getDetailOutlet(
            GetDetailOutletParam(
              body: GetDetailOutletBodyParam(),
              queryString: GetDetailOutletQueryParam(
                outletId: outlet.value!.outletId,
              ),
            ),
          ),
        );
  }

  void getShoppeRemoteConfig() {
    Get.context!.read<OrderBloc>().add(
      OrderEvent.getShoppeRemoteConfig(),
    );
  }

  void getRefresh() {
    isLoading.value = true;
    getListProduct();
    getCartSession();
    getDetailOutlet();
    getCategoryProduct();
    getListVoucher();
    getShoppeRemoteConfig();
  }

  void getListVoucher() {
    Get.context!.read<OrderBloc>().add(
          OrderEvent.getListVoucherOutlet(
            GetListVoucherOutletParam(
              body: GetListVoucherOutletBodyParam(),
              queryString: GetListVoucherOutletQueryParam(
                merchantId: detailOutlet.value!.merchantId!,
                outletId: outletId.value ?? detailOutlet.value!.id,
              ),
            ),
          ),
        );
  }

  void setSalesType(value) {
    Get.context!.read<OrderBloc>().add(OrderEvent.setSalesTypeCart(value));
  }

  void getListProduct() {
    Get.context!.read<OrderBloc>().add(
          OrderEvent.getOutletListProduct(
            GetOutletProductParam(
              body: GetOutletProductBodyParam(),
              queryString: GetOutletProductQueryParam(
                categoryId: categoryId.value,
                filter: search.value,
                limit: 15,
                outletId: outletId.value ?? outlet.value!.outletId,
                page: page.value,
                isCatering: outlet.value!.isCatering,
                mealsTypes: outlet.value!.mealsTypes,
                preOrderDate: outlet.value!.preOrderDate,
              ),
            ),
          ),
        );
  }

  void getCategoryProduct() {
    Get.context!.read<OrderBloc>().add(
          OrderEvent.getOutletProductCategory(
            GetOutletProductCategoryParam(
              body: GetOutletProductCategoryBodyParam(),
              queryString: GetOutletProductCategoryQueryParam(
                outletId: outletId.value ?? outlet.value!.outletId,
              ),
            ),
          ),
        );
  }

  void getPromoProduct() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getListPromoOutlet(
        GetListPromoOutletParam(
            body: GetListPromoOutletBodyParam(),
            queryString: GetListPromoOutletQueryParam(
                merchantId: outlet.value!.merchantId == ""
                    ? (detailOutlet.value?.merchantId ?? "")
                    : outlet.value!.merchantId,
                outletId: outletId.value ?? outlet.value!.outletId))));
  }

  void getCartSession() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getCartSession());
  }

  void getSalesTypeOrder() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getSalesTypeCart());
  }

  void checkAllLoaded() {
    if (detailOutlet.value != null &&
        listProduct.value != null &&
        listPromo.value != null &&
        listCategory.value != null) {
      isLoading.value = false;
    }
  }

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
              Text(I10n.current.landing_dine_in,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    I10n.current.cart_choose,
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
              Text(I10n.current.landing_take_away,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    I10n.current.cart_choose,
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
              Text(I10n.current.landing_delivery,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    I10n.current.cart_choose,
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
              Text(I10n.current.landing_drive_thru,
                  style: AppFont.textBlack14Bold),
              Expanded(child: Container()),
              ElevatedButton(
                  onPressed: () {
                    onTap(element);
                  },
                  child: Text(
                    I10n.current.cart_choose,
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
                I10n.current.landing_dine_in,
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

  /// SNACK IMPORT BY MERCHANT

  void getRefreshDetailMerchant(String merchantId) {
    isLoading.value = true;
    getCartSession();
    getDetailOutletByMerchant(merchantId);
  }

  void getDetailOutletByMerchant(String merchantId) {
    Get.context!.read<OrderBloc>().add(
          OrderEvent.getDetailOutletByMerchant(
            merchantId,
          ),
        );
  }

  /// END SNACK IMPORT BY MERCHANT

}
