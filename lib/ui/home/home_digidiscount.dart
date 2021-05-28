import 'dart:ffi';

import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/data/network/apis/user/user_api.dart';
import 'package:boilerplate/data/sharedpref/constants/preferences.dart';
import 'package:boilerplate/models/order/promo_outlet_model.dart';
import 'package:boilerplate/models/user/user_get_address_model.dart';
import 'package:boilerplate/routes.dart';
import 'package:boilerplate/constants/strings.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/utils/ctoast/ctoast.dart';
import 'package:boilerplate/utils/loading/loading.dart';
import 'package:boilerplate/utils/locale/app_localization.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:boilerplate/widgets/list/digidiscount_widget.dart';
import 'package:boilerplate/widgets/list_item_widget.dart';
import 'package:boilerplate/widgets/order_method_widget.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';
import 'package:package_info/package_info.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeDigidiscountScreen extends StatefulWidget {
  @override
  _HomeDigidiscountScreenState createState() => _HomeDigidiscountScreenState();
}

class _HomeDigidiscountScreenState extends State<HomeDigidiscountScreen> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }
  final searchController = TextEditingController();
  UserStore _userStore;
  OrderStore _orderStore;
  var listPromoOutlet = [];
  int page = 1;

  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userStore = Provider.of<UserStore>(context);
    _orderStore = Provider.of<OrderStore>(context);
    // if (_orderStore.getOutletByLocation(object) != null) {
    //   setState(() {
    //     listOutlet = _userStore.listAddress;
    //   });
    // }
    if (_orderStore.listPromoOutlet==null){
      getPromoOutlet("",1);
    }else{
      listPromoOutlet=_orderStore.listPromoOutlet;
    }

    //getAddress();
  }

  void getPromoOutlet(String search,int pageParam) {
    Loading.show();
    _orderStore.getPromoOutlet({
      "location": _userStore.activeAddressLat+","+_userStore.activeAddresslng,
      "page": pageParam.toString(),
      "filter": search
    }).then((res) {
      Loading.dismiss();
      setState(() {
        listPromoOutlet = res;
      });
    }).catchError((err) {
      Loading.dismiss();
      print(err.toString());
      ErrorPopupWidget.showDioError(context,err,null);
    });
  }

  Widget _search(){
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.grey,
      ),
      child: Container(
       padding: const EdgeInsets.only(left:10,right:10,top:15,bottom: 15),
       child: TextField(
            textInputAction: TextInputAction.search,
             onSubmitted: (value) {
               getPromoOutlet(searchController.text,1);
             },
            controller: searchController,
            readOnly: false,
            onTap: (){
              print("open popup");
            },
            style: TextStyle(
              fontSize: 14.0,
            ),
            decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.greyInput,
                contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                prefixIcon: Icon(Icons.search),
                hintText: "Temukan resto favorit anda",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greyInput, width: 32.0),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.greyInput, width: 32.0),
                    borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 1, color: Colors.white),
              ),
            )

        ),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top:25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new IconButton(
                    icon: new Icon(Icons.arrow_back_outlined,
                        color: Colors.black, size: 28.0),
                    onPressed: () {
                      //getOutletByLocation();
                      Navigator.pop(context);
                    }),
                Text("DigiDiskon",
                    style: TextStyle(
                      fontFamily: "roboto",
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center),
                Container()
              ],
            ),
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: AppColors.grey[50],
                borderRadius: BorderRadius.circular(0),
                border: Border.all(color: Colors.black12,
                  width: 0.5,
                ),
              ),
            ),
            //_search(),
            ListDigidiscountWidget(
              runAction: _orderStore.setOrderParameter,
              height: MediaQuery.of(context).size.height / 1.2,
              data: listPromoOutlet,
              scrollDirection: Axis.vertical,
            ),
          ],
        ),
      ),
    );
  }
}
