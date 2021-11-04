import 'package:digiresto/domain/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'home_user_bloc/home_user_bloc.dart';

class HomeNavigationViewController extends GetxController {
  var selectedTabIndex = 0.obs;
  var isHaveCart = false.obs;
  var creditTopupPending = 0.obs;
  var indexOnTap = 0.obs;
  void getCartSession() {
    Get.context!.read<HomeUserBloc>().add(HomeUserEvent.getCartSessionID());
  }

  void setHaveCart(bool value) {
    isHaveCart.value = value;
    update();
  }

  void setCreditTopupPending(int value) {
    creditTopupPending.value = value;
    update();
  }

  void getCountCredit() {
    Get.context!.read<HomeUserBloc>().add(HomeUserEvent.getCountCredit());
  }

  Widget cartBadge(bool isActive) {
    if (isActive) {
      return new Stack(children: <Widget>[
        new Image.asset(
          AppAssets.iconMenuCartActive,
          width: 30,
          height: 30,
        ),
        // _orderStore?.orderProduct?.isEmpty ??
        //         false ||
        //             _orderStore?.orderMerchantName == "" ||
        //             _orderStore?.transactionData == null
        //     ? new Positioned(
        //         // draw a red marble
        //         top: 0.0,
        //         right: 0.0,
        //         child: Container(),
        //       )
        //     : new Positioned(
        //         // draw a red marble
        //         bottom: 0,
        //         right: 0,
        //         child: Container(
        //           padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        //           decoration: BoxDecoration(
        //               shape: BoxShape.circle, color: AppColors.redYoung),
        //           // alignment: Alignment.topCenter,
        //           child: Text(
        //             _orderStore?.orderProduct?.isEmpty ??
        //                     false ||
        //                         _orderStore?.orderMerchantName == "" ||
        //                         _orderStore?.transactionData == null
        //                 ? "0"
        //                 : _orderStore!.orderProduct!.length.toString(),
        //             style: TextStyle(color: Colors.white),
        //           ),
        //         ),
        //       )
      ]);
    } else {
      return new Stack(children: <Widget>[
        new Image.asset(
          AppAssets.iconMenuCart,
          width: 30,
          height: 30,
        ),
        // _orderStore?.orderProduct?.isEmpty ??
        //         false ||
        //             _orderStore?.orderMerchantName == "" ||
        //             _orderStore?.transactionData == null
        //     ? new Positioned(
        //         // draw a red marble
        //         top: 0.0,
        //         right: 0.0,
        //         child: Container(),
        //       )
        //     : new Positioned(
        //         // draw a red marble
        //         bottom: 0,
        //         right: 0,
        //         child: Container(
        //           padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        //           decoration: BoxDecoration(
        //               shape: BoxShape.circle, color: AppColors.redYoung),
        //           // alignment: Alignment.topCenter,
        //           child: Text(
        //             _orderStore?.orderProduct?.isEmpty ??
        //                     false ||
        //                         _orderStore?.orderMerchantName == "" ||
        //                         _orderStore?.transactionData == null
        //                 ? "0"
        //                 : _orderStore!.orderProduct!.length.toString(),
        //             style: TextStyle(color: Colors.white),
        //           ),
        //         ),
        //       )
      ]);
    }
  }
}
