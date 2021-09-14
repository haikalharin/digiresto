import 'package:digiresto/application/home/home_navigation_view_controller.dart';
import 'package:digiresto/application/home/home_user_bloc/home_user_bloc.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/cart/cart.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/credit/credit_page.dart';
import 'package:digiresto/presentation/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'home_content.dart';

class HomeNavigationScreen extends GetView<HomeNavigationViewController> {
  final I10n lang = I10n.of(Get.context!);
  void _onNavBarTapped(int index) {
    controller.indexOnTap.value = index;
    controller.getCartSession();
  }

  void selectTab() {
    if (controller.isHaveCart.value) {
      controller.selectedTabIndex.value = controller.indexOnTap.value;
    } else {
      controller.selectedTabIndex.value = controller.indexOnTap.value;
      if (controller.selectedTabIndex.value == 1) {
        controller.selectedTabIndex.value = 0;
        showMyDialog();
      }
    }
  }

  Future<void> showMyDialog() async {
    return showDialog<void>(
      context: Get.context!,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          //title: Text(param.detail["name"]),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Keranjang",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Keranjang pesananmu kosong, silahkan pilih menu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    )),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 100,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back(closeOverlays: true);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                        side: BorderSide(
                          width: 1,
                          color: AppColors.red,
                        ),
                      ),
                    ),
                    child: Text("Ok",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  final _listPage = <Widget>[
    HomeContentScreen(),
    CartScreen(),
    CreditPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    controller.getCartSession();
    return BlocConsumer<HomeUserBloc, HomeUserState>(
      listener: (context, state) {
        state.maybeMap(getCartSessionIDSuccess: (r) {
          if (r.sessionID == null || r.sessionID == "") {
            controller.isHaveCart.value = false;
          } else {
            controller.isHaveCart.value = true;
          }
          selectTab();
        }, getCartSessionIDFail: (e) {
          controller.isHaveCart.value = false;
          selectTab();
        }, orElse: () {
          //selectTab();
        });
      },
      builder: (context, state) {
        final _bottomNavBarItems = <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: new Image.asset(
                AppAssets.iconMenuHome,
                width: 28,
                height: 28,
              ),
              activeIcon: new Image.asset(AppAssets.iconMenuHomeActive,
                  width: 28, height: 28),
              label: 'Home'),
          BottomNavigationBarItem(
              //icon: new Image.asset(Assets.iconMenuCart,width: 24,height: 24,),
              icon: controller.cartBadge(false),
              activeIcon: controller.cartBadge(true),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: new Image.asset(
                AppAssets.iconMenuCredit,
                width: 30,
                height: 30,
              ),
              activeIcon: new Image.asset(AppAssets.iconMenuCreditActive,
                  width: 30, height: 30),
              label: 'Credit'),
          BottomNavigationBarItem(
              icon: new Image.asset(
                AppAssets.iconMenuProfile,
                width: 28,
                height: 28,
              ),
              activeIcon: new Image.asset(AppAssets.iconMenuProfileActive,
                  width: 28, height: 28),
              label: 'Profile'),
        ];

        final _buttomNavBar = BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _bottomNavBarItems,
          currentIndex: controller.selectedTabIndex.value,
          onTap: _onNavBarTapped,
          selectedItemColor: AppColors.red,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.black,
          iconSize: 20,
        );

        return Obx(() {
          return Scaffold(
              body: Container(
                child: _listPage[controller.selectedTabIndex.value],
              ),
              bottomNavigationBar: _buttomNavBar);
        });
      },
    );
  }
}
