import 'dart:core';

import 'package:digiresto/application/order/bloc/order_bloc.dart';
import 'package:digiresto/application/order/order_view_controller.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/domain/core/utils/launch_url/launch_url.dart';
import 'package:digiresto/domain/core/utils/loading/loading.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:digiresto/domain/entity/order/detail_outlet_model.dart';
import 'package:digiresto/domain/entity/order/outlet_list_product_response.dart';
import 'package:digiresto/domain/entity/order/param/get_detail_outlet_param.dart';
import 'package:digiresto/domain/entity/order/param/outlet_product_category_response.dart';
import 'package:digiresto/domain/order/order_detail_view_argument.dart';
import 'package:digiresto/presentation/router/router.dart';
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
  final searchController = TextEditingController();
  final ScrollController _scrollController = new ScrollController();
  //OrderStore _orderStore;

  //bool loadDataApi;

  goBack(BuildContext context) {
    Get.back();
  }

  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // getDetailOutlet(
        //     _orderStore.orderOutletName, searchName, filterCategory, page + 1);
      }
    });
  }

  refresh() {}

  void didChangeDependencies() {
    // _orderStore = Provider.of<OrderStore>(context);

    // setState(() {
    //   filterCategory = null;
    //   searchName = "";
    //   orderType = _orderStore.orderSalesTypesCode;
    // });
    // getDetailOutlet(
    //     _orderStore.orderOutletName, searchName, filterCategory, page);
  }

  void searchActionText(String keyword) {
    controller.page.value = 1;
    controller.searchName.value = keyword;
    //getDetailOutlet(_orderStore.orderOutletName, searchName, filterCategory, 1);
  }

  void searchActionCategory(String? category) {
    controller.page.value = 1;
    controller.filterCategory.value = category ?? "";

    //getDetailOutlet(_orderStore.orderOutletName, searchName, filterCategory, 1);
  }

  void getDetailOutlet(
      String outletName, String filter, String category, int pageParam) {
    Get.context!.read<OrderBloc>().add(OrderEvent.getDetailOutlet(
        GetDetailOutletParam(
            body: GetDetailOutletBodyParam(),
            queryString: GetDetailOutletQueryParam(outletId: args.outletId))));
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
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new IconButton(
                  icon: new Icon(Icons.arrow_back_outlined,
                      color: Colors.white, size: 24.0),
                  onPressed: () => Get.back(),
                ),
                Container(
                  width: 200,
                  child: Text("_orderStore.orderOutletDetailName",
                      //detailOutlet != null ? data.outlet["detail"]["name"] : ""
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                ),
                new IconButton(
                  icon:
                      new Icon(Icons.refresh, color: Colors.white, size: 24.0),
                  onPressed: () => {
                    // getDetailOutlet(_orderStore.orderOutletName,
                    //   searchName, filterCategory, 1)
                  },
                ),
              ],
            ),
          ),
          // Container(
          //         child: Text(_orderStore.orderMerchantName.toString(),
          //             style: TextStyle(
          //               fontFamily: "roboto",
          //               color: Colors.white,
          //               fontSize: 16,
          //               fontWeight: FontWeight.normal,
          //             ),
          //             textAlign: TextAlign.center),
          //       ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text("Power by Digiresto",
                style: TextStyle(
                  fontFamily: "roboto",
                  color: Colors.white70,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center),
          ),
          controller.detailOutlet?.value != null
              ? Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetector(
                    onTap: () {
                      print("launch call " + data.ownerPhone.toString());
                      LaunchUrl.call(data.ownerPhone.toString());
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: EdgeInsets.only(right: 10),
                      child: new Icon(Icons.call,
                          color: AppColors.redYoung, size: 20.0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      String phone = data.ownerPhone.toString();
                      String url = "https://api.whatsapp.com/send/?phone=" +
                          phone +
                          "&text=hi%20Digiresto";
                      LaunchUrl.run(url);
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: EdgeInsets.only(right: 10),
                      child: new Icon(Icons.message,
                          color: AppColors.redYoung, size: 20.0),
                    ),
                  )
                ])
              : Container()
        ],
      ),
    ]);
  }

  Widget _category(List<OutletProductDataResponse> data, String selected) {
    List<OutletProductDataResponse> paramCategory = [];
    paramCategory.add(OutletProductDataResponse(
        code: '0', id: 0, name: 'SEMUA', order: null));
    paramCategory.addAll(data);
    return ListFoodCategory(
        data: paramCategory,
        selected: selected,
        runAction: searchActionCategory);
  }

  // Widget _promo(DetailOutletDataResponse data) {
  //   return data.merchant!["promo"].length == 0
  //       ? Container()
  //       : DetailOutletHotPromoWidget(
  //           height: 175.0,
  //           data: data.merchant!["promo"],
  //           scrollDirection: Axis.horizontal);
  // }

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
          runDetailAction: (_showDetailProduct, orderType) {
            "_showDetailProduct";
          },
          scrollDirection: Axis.vertical,
        ),
        Loading.smallLoading(controller.detailOutletLoading.value),
      ],
    );
  }

  _showDetailProduct(Map<String, dynamic> dataProduct, String orderType) {
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

  @override
  Widget build(BuildContext context) {
    Get.put(OrderViewController());
    return BlocConsumer<OrderBloc, OrderState>(
      listener: (context, state) {
        state.maybeMap(getDetailOutletSuccess: (r) {}, orElse: () {});
      },
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: "_orderStore.orderProduct".length > 0
              ? GestureDetector(
                  onTap: () {
                    Get.toNamed(Routers.orderCart);
                  },
                  child: Container(
                    height: 70,
                    color: Colors.white,
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.red,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width - 50,
                        child: Container(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  controller.detailOutlet?.value != null
                                      ? Text(
                                          "_orderStore.orderProduct"
                                                  .length
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
                              controller.detailOutlet?.value != null
                                  ? Text(
                                      "Rp. " +
                                          Utils.formatRupiah(10000.toString()),
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
                )
              : Container(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: Column(
            children: [
              TopBackgound(backgroundColor: AppColors.red),
              Container(
                height: MediaQuery.of(context).size.height - 30,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      controller.detailOutlet?.value != null
                          ? _header(controller.detailOutlet!.value)
                          : Container(),
                      controller.detailOutlet?.value != null
                          ? _search()
                          : Container(),
                      // detailOutlet != null
                      //     ? _category(detailOutlet!, filterCategory!)
                      //     : Container(),
                      // detailOutlet != null
                      //     ? _promo(detailOutlet!)
                      //     : Container(),
                      // detailOutlet != null
                      //     ? _product(detailOutlet!)
                      //     : Container(),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
