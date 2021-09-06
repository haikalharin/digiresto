import 'dart:core';

import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/application/order/order_view_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/outlet_product_category_response.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_list_promo_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_category.dart';
import 'package:digiresto/domain/entity/order/param/get_outlet_product_param.dart';
import 'package:digiresto/domain/entity/order/promo_outlet_response.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/presentation/core/widgets/custom_review.dart';
import 'package:digiresto/presentation/core/widgets/stack_with_progress.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:digiresto/presentation/widgets/list/detail_outlet_hot_promo_widget.dart';
import 'package:digiresto/presentation/widgets/list/list_food_category_widget.dart';
import 'package:digiresto/presentation/widgets/list/list_product_outlet_widget.dart';
import 'package:digiresto/presentation/widgets/top_background_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'detailProductDialog.dart';

class DetailOutletScreen extends GetView<OrderViewController> {
  final OrderDetailViewArgument args = Get.arguments as OrderDetailViewArgument;

  goBack(BuildContext context) {
    Get.back();
  }

  Future<void> _showDialogSalesType() async {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
        ),
        backgroundColor: Colors.white,
        context: Get.context!,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 8,
              ),
              ListTile(
                // leading: GestureDetector(
                //   onTap: () {
                //     Get.back();
                //   },
                //   child: ImageIcon(
                //     AssetImage(AppAssets.iconBackBlack),
                //     color: Colors.black,
                //   ),
                // ),
                title: Container(
                  //make title to center
                  //transform: Matrix4.translationValues(-24, 0, 0),
                  child: Center(
                    child: new Text(
                      'Silahkan pilih tipe order',
                      style: AppFont.textBlack17Bold,
                    ),
                  ),
                ),
                enabled: false,
              ),
              Column(
                children: controller.generateListSalesTypeOption((element) {
                  Get.context!
                      .read<OrderBloc>()
                      .add(OrderEvent.setSalesTypeCart(element));
                  Get.back(closeOverlays: true);
                }),
              ),
              SizedBox(
                height: 16,
              )
            ],
          );
        });
  }

  Widget _header(DetailOutletDataResponse data) {
    return Stack(children: [
      Container(
        height: 135,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.bgHome),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  new IconButton(
                    icon: new Icon(Icons.arrow_back_outlined,
                        color: Colors.white, size: 24.0),
                    onPressed: () => Get.back(),
                  ),
                  Expanded(
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 200,
                              child: Text(data.name,
                                  //detailOutlet != null ? data.outlet["detail"]["name"] : ""
                                  style: TextStyle(
                                    fontFamily: "roboto",
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.left),
                            ),
                            IconButton(
                              icon: new Icon(Icons.refresh,
                                  color: Colors.white, size: 24.0),
                              onPressed: () => {
                                // getDetailOutlet(_orderStore.orderOutletName,
                                //   searchName, filterCategory, 1)
                              },
                            ),
                          ],
                        ),
                        controller.detailOutlet.value != null
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                    Text(
                                      "Order type:",
                                      style: AppFont.textBlack10SemiBold
                                          .copyWith(color: AppColors.white),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        _showDialogSalesType();
                                      },
                                      child: Container(
                                        width: Get.width * 0.55,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            controller
                                                .generateListSalesTypeIcon(
                                                    color: AppColors.white),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Obx(() => Text(
                                                  Utils.formatSalesType(
                                                      controller.salesType
                                                              .value ??
                                                          ""),
                                                  style: AppFont.textBlack14Bold
                                                      .copyWith(
                                                          color:
                                                              AppColors.white),
                                                )),
                                            Icon(Icons.expand_more,
                                                color: AppColors.white),
                                          ],
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white30,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(42))),
                                    )
                                  ])
                            : Container()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  void getDetailOutlet() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getDetailOutlet(
        GetDetailOutletParam(
            body: GetDetailOutletBodyParam(),
            queryString: GetDetailOutletQueryParam(
                outletId: controller.outlet.value!.outletId))));
    // setState(() {
    //   detailOutletLoading = true;
    // });
    // _orderStore.getDetailOutlet({
    //   "outletName": outletName,
    //   "page": pageParam,
    //   "limit": 0,
    //   "produclds": [],
    //   "filter": filter,
    //   "category": category
    // }).then((res) {
    //   if (pageParam > page) {
    //     setState(() {
    //       page += 1;
    //       detailOutlet.product.addAll(res.product);
    //     });
    //   } else {
    //     setState(() {
    //       page = 1;
    //       detailOutlet = res;
    //     });
    //   }
    //   detailOutletLoading = false;
    // }).catchError((err) {
    //   detailOutletLoading = false;
    //   print(err.toString());
    //   ErrorPopupWidget.showDioError(context, err, null);
    // });
  }

  void getListProduct() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getOutletListProduct(
        GetOutletProductParam(
            body: GetOutletProductBodyParam(),
            queryString: GetOutletProductQueryParam(
                categoryId: controller.categoryId.value,
                filter: controller.search.value,
                limit: 15,
                outletId: controller.outlet.value!.outletId,
                page: controller.page.value))));
  }

  void getCategoryProduct() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getOutletProductCategory(
        GetOutletProductCategoryParam(
            body: GetOutletProductCategoryBodyParam(),
            queryString: GetOutletProductCategoryQueryParam(
                outletId: controller.outlet.value!.outletId))));
  }

  void getPromoProduct() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getListPromoOutlet(
        GetListPromoOutletParam(
            body: GetListPromoOutletBodyParam(),
            queryString: GetListPromoOutletQueryParam(
                merchantId: controller.outlet.value!.merchantId,
                outletId: controller.outlet.value!.outletId))));
  }

  void getCartSession() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getCartSession());
  }

  void getSalesTypeOrder() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getSalesTypeCart());
  }

  @override
  Widget build(BuildContext context) {
    controller.outlet.value = args;
    getSalesTypeOrder();
    getDetailOutlet();
    getListProduct();
    getCategoryProduct();
    getPromoProduct();
    getCartSession();
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        state.maybeMap(
            getDetailOutletSuccess: (r) {
              if (controller.salesType.value == null) {
                Get.context!
                    .read<OrderBloc>()
                    .add(OrderEvent.setSalesTypeCart(r.response.salesTypes[0]));
              }
              controller.detailOutlet.value = r.response;
              controller.isLoading.value = false;
            },
            getOutletListProductSuccess: (r) {
              controller.listProduct.value = r.response;
            },
            getListPromoOutletSuccess: (r) {
              controller.listPromo.value = r.response;
            },
            getListVoucherOutletSuccess: (r) {
              controller.listVoucher.value = r.response;
            },
            getOutletProductCategorySuccess: (r) {
              controller.listCategory.value = r.response;
            },
            getCartSessionSuccess: (r) {
              controller.cartSession.value = r.response;
            },
            addCartSuccess: (r) {
              controller.cartSession.value = r.response;
            },
            setSalesTypeCartSuccess: (r) {
              controller.salesType.value = r.value;
            },
            getSalesTypeCartSuccess: (r) {
              controller.salesType.value = r.value;
            },
            loadFailure: (e) {
              e.e.maybeMap(
                  salesTypeNull: (e) {},
                  getDetailOutletFail: (e) {
                    Get.back();
                  },
                  orElse: () {});
            },
            orElse: () {});
      },
      builder: (context, state) {
        return StackWithProgress(
          isLoading: controller.isLoading.value,
          children: [
            DefaultTabController(
              length: 2,
              child: Scaffold(
                body: Column(
                  children: [
                    TopBackgound(backgroundColor: AppColors.red),
                    controller.detailOutlet.value != null
                        ? _header(controller.detailOutlet.value!)
                        : Container(),
                    TabBar(
                        onTap: (index) {
                          controller.indexTabBar.value = index;
                        },
                        tabs: [
                          Obx((() => Tab(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ImageIcon(
                                        AssetImage(
                                            AppAssets.iconOutletOverview),
                                        color: controller.indexTabBar.value == 0
                                            ? AppColors.redTabBar
                                            : AppColors.greyCOC0C0),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Overview",
                                      style: controller.indexTabBar.value == 0
                                          ? AppFont.textRed14Bold
                                          : AppFont.textGrey14Bold,
                                    )
                                  ],
                                ),
                              ))),
                          Obx((() => Tab(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ImageIcon(
                                        AssetImage(
                                            AppAssets.iconOutletOverview),
                                        color: controller.indexTabBar.value == 1
                                            ? AppColors.redTabBar
                                            : AppColors.greyCOC0C0),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Menu",
                                      style: controller.indexTabBar.value == 1
                                          ? AppFont.textRed14Bold
                                          : AppFont.textGrey14Bold,
                                    )
                                  ],
                                ),
                              ))),
                        ]),
                    Expanded(
                      child: TabBarView(children: [
                        _BodyOutletOverview(),
                        _BodyOutletMenu(),
                      ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class _BodyOutletOverview extends GetView<OrderViewController> {
  @override
  Widget build(BuildContext context) {
    return controller.detailOutlet.value != null
        ? Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Informasi Outlet",
                    style: AppFont.textBlack14Bold,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    controller.detailOutlet.value!.address,
                    style: AppFont.textBlack12Regular,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CustomRating(
                        currentRating: controller.detailOutlet.value!.rating,
                        onRatingSelected: (int) {},
                        isEnable: false,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "${controller.detailOutlet.value!.totalReview} review",
                        style: AppFont.textBlack12Regular
                            .copyWith(color: AppColors.greyRating),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 28,
                        child: ElevatedButton(
                          onPressed: null,
                          child: Text(
                              controller.detailOutlet.value!.isOpen
                                  ? "Open"
                                  : "Closed",
                              style: AppFont.textBlack12Bold
                                  .copyWith(color: Colors.white)),
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: AppColors.green54C30F))),
                              backgroundColor: MaterialStateProperty.all(
                                  AppColors.green54C30F)),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                      "Last update ${controller.detailOutlet.value!.lastUpdate.literal}",
                      style: AppFont.textBlack12Regular),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      ImageIcon(AssetImage(AppAssets.iconInstagram),
                          size: 18, color: AppColors.redTabBar),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "@instagram",
                        style: AppFont.textBlack12SemiBold
                            .copyWith(color: AppColors.redTabBar),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      ImageIcon(AssetImage(AppAssets.iconWeb),
                          size: 18, color: AppColors.redTabBar),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "www.website.com",
                        style: AppFont.textBlack12SemiBold
                            .copyWith(color: AppColors.redTabBar),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.greyBorder),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Wrap(children: controller.generateListSalesType()),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 43,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: ElevatedButton(
                            onPressed: () {
                              // String phone =
                              //     controller.detailOutlet.value!.ownerPhone;
                              //                           String url =
                              // "https://api.whatsapp.com/send/?phone=" +
                              //     phone +
                              //     "&text=hi%20Digiresto";
                              String callBackUrl =
                                  controller.detailOutlet.value!.callbackUrl;
                              String url = callBackUrl;
                              LaunchUrl.run(
                                url,
                                onError: () {},
                                onSuccess: () {},
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(AssetImage(AppAssets.iconSendMessage),
                                    color: AppColors.white),
                                SizedBox(width: 8),
                                Text("Kirim Pesan",
                                    style: AppFont.textBlack12SemiBold
                                        .copyWith(color: Colors.white)),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        side: BorderSide(
                                            color: AppColors.redTabBar))),
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.redTabBar)),
                          ),
                        ),
                        SizedBox(
                          height: 43,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: ElevatedButton(
                            onPressed: null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(AssetImage(AppAssets.iconMapRed),
                                    color: AppColors.white),
                                SizedBox(width: 8),
                                Text("Lihat Lokasi",
                                    style: AppFont.textBlack12SemiBold
                                        .copyWith(color: Colors.white)),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        side: BorderSide(
                                            color: AppColors.redTabBar))),
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.redTabBar)),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          )
        : Container();
  }
}

class _BodyOutletMenu extends GetView<OrderViewController> {
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // getDetailOutlet(
        //     _orderStore.orderOutletName, searchName, filterCategory, page + 1);
      }
    });
  }

  final searchController = TextEditingController();
  final ScrollController _scrollController = new ScrollController();
  void searchActionText(String keyword) {
    controller.page.value = 1;
    controller.search.value = keyword;
    getListProduct();
    //getDetailOutlet(_orderStore.orderOutletName, searchName, filterCategory, 1);
  }

  _showDetailProduct(
      OutletListProductDataResponse dataProduct, String orderType) {
    //Navigator.push(context,MaterialPageRoute(builder: (context) => Page2())).then((value) { setState(() {});
    Navigator.push(
            Get.context!,
            MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return DetailProductDialog(
                      dataProduct: dataProduct, orderType: orderType);
                },
                fullscreenDialog: true))
        .then((value) {});
  }

  void searchActionCategory(String? category) {
    controller.page.value = 1;
    controller.categoryId.value = category ?? "";
    getListProduct();
  }

  void getListProduct() {
    Get.context!.read<OrderBloc>().add(OrderEvent.getOutletListProduct(
        GetOutletProductParam(
            body: GetOutletProductBodyParam(),
            queryString: GetOutletProductQueryParam(
                categoryId: controller.categoryId.value,
                filter: controller.search.value,
                limit: 15,
                outletId: controller.outlet.value!.outletId,
                page: controller.page.value))));
  }

  Widget _search() {
    return Theme(
      data: Theme.of(Get.context!).copyWith(
        primaryColor: Colors.grey,
      ),
      child: Container(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
        child: TextField(
            textInputAction: TextInputAction.search,
            onSubmitted: (value) {
              searchActionText(value.toString());
            },
            controller: searchController,
            readOnly: false,
            style: TextStyle(
              fontSize: 12.0,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.greyInput,
              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: "Cari",
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.greyInput, width: 32.0),
                  borderRadius: BorderRadius.circular(15)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.greyInput, width: 32.0),
                  borderRadius: BorderRadius.circular(15)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
            )),
      ),
    );
  }

  Widget _category(
      List<OutletProductCategoryDataResponse> data, String selected) {
    List<OutletProductCategoryDataResponse> paramCategory = [];
    paramCategory.add(OutletProductCategoryDataResponse(
        code: '0', id: 0, name: 'Semua', order: null));
    paramCategory.addAll(data);
    return ListFoodCategory(
        data: paramCategory,
        selected: selected,
        runAction: searchActionCategory);
  }

  Widget _promo(List<PromoOutletDataResponse> data) {
    return data.length == 0
        ? Container()
        : DetailOutletHotPromoWidget(
            height: 175.0, data: data, scrollDirection: Axis.horizontal);
  }

  Widget _product(List<OutletListProductDataResponse> data) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 10,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            "Semua",
            style: TextStyle(
              fontFamily: "roboto",
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListProductOutletWidget(
          orderType: controller.orderType.value,
          data: data,
          runDetailAction: (listProduct, orderType) {
            _showDetailProduct(listProduct, orderType);
          },
          scrollDirection: Axis.vertical,
        ),
        Loading.smallLoading(controller.detailOutletLoading.value),
      ],
    );
  }

  Widget _cartTotal() {
    return Obx(() => controller.cartSession.value != null &&
            controller.cartSession.value?.transactionData.outletName ==
                controller.detailOutlet.value?.endpointName
        ? SafeArea(
            child: GestureDetector(
              onTap: () {
                Get.toNamed(Routers.orderCart);
              },
              child: Container(
                height: 70,
                color: Colors.white,
                alignment: Alignment.bottomCenter,
                // decoration: BoxDecoration(
                //     color: Colors.white, boxShadow: [CustomShadow.standard]),
                child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    width: MediaQuery.of(Get.context!).size.width - 50,
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              controller.cartSession.value!.transactionData
                                          .items.length >
                                      0
                                  ? Text(
                                      controller.cartSession.value!
                                              .transactionData.items.length
                                              .toString() +
                                          " items",
                                      style: TextStyle(
                                        fontFamily: "roboto",
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  : Container(),
                              Container(
                                margin: EdgeInsets.all(5),
                                height: 30,
                                width: 1.5,
                                color: Colors.white,
                              ),
                              Text(
                                "Lihat Keranjang",
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          controller.detailOutlet.value != null
                              ? Text(
                                  "Rp. " +
                                      Utils.formatRupiah(controller.cartSession
                                          .value!.transactionData.totalPayment
                                          .toString()),
                                  style: TextStyle(
                                    fontFamily: "roboto",
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    )),
              ),
            ),
          )
        : Container());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        controller.detailOutlet.value != null ? _search() : Container(),
        controller.listCategory.value != null
            ? _category(
                controller.listCategory.value!, controller.categoryId.value)
            : Container(),
        Expanded(
          child: Container(
            //height: MediaQuery.of(context).size.height - 30,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  controller.listPromo.value != null
                      ? _promo(controller.listPromo.value!)
                      : Container(),
                  controller.listProduct.value != null
                      ? _product(controller.listProduct.value!)
                      : Container(),
                ],
              ),
            ),
          ),
        ),
        _cartTotal()
      ],
    );
  }
}
