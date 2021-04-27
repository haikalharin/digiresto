import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/models/order/detail_outlet_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/ui/order/detailProductDialog.dart';
import 'package:boilerplate/utils/launch_url/launch_url.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/utils/random/random_images.dart';
import 'package:boilerplate/utils/utils.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:boilerplate/widgets/list/detail_outlet_hot_promo_widget.dart';
import 'package:boilerplate/widgets/list/list_food_category_widget.dart';
import 'package:boilerplate/widgets/list/list_product_outlet_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:provider/provider.dart';
import 'dart:core';
import 'package:boilerplate/utils/loading/loading.dart';

class DetailOutletScreen extends StatefulWidget {
  @override
  _DetailOutletScreenState createState() => _DetailOutletScreenState();
}

class _DetailOutletScreenState extends State<DetailOutletScreen> {
  final searchController = TextEditingController();
  final ScrollController _scrollController = new ScrollController();
  UserStore _userStore;
  OrderStore _orderStore;
  DetailOutlet detailOutlet;

  //bool loadDataApi;
  int page = 1;
  String filterCategory;
  String searchName;
  String orderType;
  bool detailOutletLoading=false;
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        getDetailOutlet(
            _orderStore.orderOutletName, searchName, filterCategory, page + 1);
      }
    });
  }


  refresh() {
    setState(() {
      //all the reload processes
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userStore = Provider.of<UserStore>(context);
    _orderStore = Provider.of<OrderStore>(context);

    setState(() {
      filterCategory = null;
      searchName = "";
      orderType = _orderStore.orderSalesTypesCode;
    });
    getDetailOutlet(
        _orderStore.orderOutletName, searchName, filterCategory, page);
  }

  void searchActionText(String keyword) {
    setState(() {
      page = 1;
      searchName = keyword;
    });
    getDetailOutlet(_orderStore.orderOutletName, searchName, filterCategory, 1);
  }

  void searchActionCategory(String category) {
    setState(() {
      page = 1;
      filterCategory = category;
    });
    getDetailOutlet(_orderStore.orderOutletName, searchName, filterCategory, 1);
  }

  void getDetailOutlet(String outletName, String filter, String category,
      int pageParam) {
    setState(() {
      detailOutletLoading=true;
    });
    _orderStore.getDetailOutlet({
      "outletName": outletName,
      "page": pageParam,
      "limit": 0,
      "produclds": [],
      "filter": filter,
      "category": category
    }).then((res) {
      if (pageParam > page) {
        setState(() {
          page += 1;
          detailOutlet.product.addAll(res.product);
        });
      } else {
        setState(() {
          page = 1;
          detailOutlet = res;
        });
      }
      detailOutletLoading=false;
    }).catchError((err) {
      detailOutletLoading=false;
      print(err.toString());
      ErrorPopupWidget.showDioError(context,err,null);
    });
  }


  Widget _search() {
    return Theme(
      data: Theme.of(context).copyWith(
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

  Widget _header(DetailOutlet data) {
    return Stack(children: [
      Container(
        height: 135,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.bgHome),
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
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Container(
                  width: 200,
                  child: Text(_orderStore.orderOutletDetailName,
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
                  onPressed: () =>
                      getDetailOutlet(_orderStore.orderOutletName, searchName,
                          filterCategory, 1),
                ),
              ],
            ),
          ),
          Container(
            child: Text(_orderStore.orderMerchantName,
                style: TextStyle(
                  fontFamily: "roboto",
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center),
          ),
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
          detailOutlet != null ? Row(
              mainAxisAlignment: MainAxisAlignment.end, children: [
            GestureDetector(
              onTap: () {
                print(
                    "launch call " + data.outlet["detail"]["phone"].toString());
                LaunchUrl.call(data.outlet["detail"]["phone"].toString());
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: EdgeInsets.only(right: 10),
                child:
                new Icon(Icons.call, color: AppColors.redYoung, size: 20.0),
              ),
            ),
            GestureDetector(
              onTap: () {
                String phone = data.outlet["detail"]["phone"].toString();
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
          ]) : Container()
        ],
      ),
    ]);
  }


  Widget _category(DetailOutlet data, String selected) {
    List<dynamic> paramCategory = [];
    paramCategory.add({"id": 0, "title": "SEMUA"});
    paramCategory.addAll(data.category);
    return ListFoodCategory(data: paramCategory,
        selected: selected,
        runAction: searchActionCategory);
  }

  Widget _promo(DetailOutlet data) {
    return DetailOutletHotPromoWidget(
      height: 175.0,
      data: data.merchant["promo"],
      scrollDirection: Axis.horizontal,
    );
  }

  Widget _product(DetailOutlet data) {
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
          orderType: orderType,
          data: data.product,
          runDetailAction: _showDetailProduct,
          scrollDirection: Axis.vertical,
        ),
        Loading.smallLoading(detailOutletLoading),
      ],
    );
  }

  _showDetailProduct(Map<String, dynamic> dataProduct, String orderType) {
    //Navigator.push(context,MaterialPageRoute(builder: (context) => Page2())).then((value) { setState(() {});
    Navigator.push(
        context,
        MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return DetailProductDialog(
                  dataProduct: dataProduct, orderType: orderType);
            },
            fullscreenDialog: true
        )
    ).then((value) {
      setState(() {});
    });
  }
        @override
        Widget build(BuildContext context)
    {
      return Scaffold(
        floatingActionButton: _orderStore.orderProduct.length > 0 ? GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(
                Routes.order_cart);
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
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 50,
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            _orderStore.orderProduct.length.toString() +
                                " items",
                            style: TextStyle(
                              fontFamily: "roboto",
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
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

                      Text(
                        "Rp. " + Utils.formatRupiah(_orderStore.orderPriceTotal.toString()),
                        style: TextStyle(
                          fontFamily: "roboto",
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
            ),
          ),
        ) : Container(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 20,
              color: AppColors.red,
            ),
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height - 30,
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    _header(detailOutlet),
                    detailOutlet != null ? _search() : Container(),
                    detailOutlet != null
                        ? _category(detailOutlet, filterCategory)
                        : Container(),
                    detailOutlet != null ? _promo(detailOutlet) : Container(),
                    detailOutlet != null ? _product(detailOutlet) : Container(),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
  }
