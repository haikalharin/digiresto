
import 'dart:async';

import 'package:boilerplate/routes.dart';
import 'package:boilerplate/stores/order/order_store.dart';
import 'package:boilerplate/stores/transaction/transaction_store.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/widgets/Error_popup_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  OrderStore _orderStore;
  UserStore _userStore;
  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _orderStore = Provider.of<OrderStore>(context);
    _userStore = Provider.of<UserStore>(context);

    // it will navigate to
    if (_userStore.skipAndContinue??false){
      Timer.run(() {
        ErrorPopupWidget.showLoginRequired(context,(){
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(Routes.home);
        },(){
          _userStore.removeSkipAndContinue();
          _userStore.removeAuthToken();
          Navigator.of(context).pushNamed(Routes.input_phone);
        });
      });
    }else if (_orderStore.orderProduct.isEmpty || _orderStore.orderMerchantName=="" || _orderStore.transactionData==null ){
       Timer.run(() {
         ErrorPopupWidget.show(context, "Keranjang", "Keranjang pesananmu kosong, silahkan pilih menu", () {
           _userStore.setActivedHomeTab("home");
           Navigator.of(context)
               .pushNamedAndRemoveUntil(
               Routes.home,
                   (Route<dynamic> route) => false);
          // Navigator.of(context).pop();
         });
       });
    }else{
      Timer.run(() {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(
            Routes.order_cart,
                (Route<dynamic> route) => false);
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
