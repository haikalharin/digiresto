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
import 'package:boilerplate/widgets/list/detail_outlet_hot_promo_widget.dart';
import 'package:boilerplate/widgets/list/list_food_category_widget.dart';
import 'package:boilerplate/widgets/list/list_product_cart_widget.dart';
import 'package:boilerplate/widgets/list/list_product_outlet_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:provider/provider.dart';
import 'dart:core';
import 'package:boilerplate/utils/loading/loading.dart';

class OrderCartScreen extends StatefulWidget {
  @override
  _OrderCartScreenState createState() => _OrderCartScreenState();
}

class _OrderCartScreenState extends State<OrderCartScreen> {
  final searchController = TextEditingController();
  final ScrollController _scrollController = new ScrollController();
  UserStore _userStore;
  OrderStore _orderStore;
  DetailOutlet detailOutlet;

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userStore = Provider.of<UserStore>(context);
    _orderStore = Provider.of<OrderStore>(context);
  }
  void _editCart(Map<String, dynamic> x, String y){

  }
  Widget _order() {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: EdgeInsets.only(top: 10, left: 15, right: 15),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              _orderStore.orderOutletDetailName,
              //_orderStore.orderOutlet.detail["name"],
              //detailOutlet != null ? data.outlet["detail"]["name"] : ""
              style: TextStyle(
                fontFamily: "roboto",
                //color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              _orderStore.orderMerchantName,
              //_orderStore.orderOutlet.merchantName,
              //detailOutlet != null ? data.outlet["detail"]["name"] : ""
              style: TextStyle(
                fontFamily: "roboto",
                //color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

            ListProductCartWidget(
              orderType: _orderStore.orderSalesTypesCode,
              data: _orderStore.orderProduct,
              runEditAction: _editCart,
              scrollDirection: Axis.vertical,
            ),
        ],
      ),
    );
  }

  Widget _addNew() {
    return Column(
      children: [
        Container(
          color: AppColors.greyStroke,
          height: 5,
          width: double.infinity,
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  children: [
                    Text("Mau pesan yang lain ? ",
                        style: TextStyle(
                          fontFamily: "roboto",
                          //color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 5,bottom: 10),
                      child: Text("Tambahkan pesanan lainnya ",
                          style: TextStyle(
                            fontFamily: "roboto",
                            //color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                height: 35,
                child: RaisedButton(
                  onPressed: () {
                    // print(_orderStore.orderOutletDetailName);
                    // print(_orderStore.orderMerchantName);
                    // print(_orderStore.orderSalesTypesCode);
                    // print(_orderStore.orderSalesTypes);
                    // print(_orderStore.orderProduct);
                  },
                  color: Colors.white,
                  child: Text("Tambah",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red)),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    side: BorderSide(
                      width: 1,
                      color: AppColors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.greyStroke,
          height: 10,
          width: double.infinity,
        ),
      ],
    );
  }

  Widget _header() {
    return Stack(children: [
      Container(
        height: 120,
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
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new IconButton(
                  icon: new Icon(Icons.arrow_back_outlined,
                      color: Colors.white, size: 24.0),
                  onPressed: (){
                    //if (_userStore.activeHistoryScreen=='profile.address'){
                      _userStore.setActivedHomeTab("home");
                      Navigator.of(context).pushNamed(Routes.home);
                    //}
                    },
                ),
                Container(
                  child: Text("Detail Order",
                      //detailOutlet != null ? data.outlet["detail"]["name"] : ""
                      style: TextStyle(
                        fontFamily: "roboto",
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center),
                ),
                Container(
                  width: 50,
                )
              ],
            ),
          ),
        ],
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 20,
            color: AppColors.red,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 30,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  _header(),
                  _order(),
                  _addNew(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
