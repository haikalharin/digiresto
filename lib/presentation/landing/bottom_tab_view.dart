import 'package:badges/badges.dart';
import 'package:digiresto/application/landing/bottom_tab_cubit.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/injection.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:digiresto/presentation/credit/credit_page.dart';
import 'package:digiresto/presentation/home_new/home_page.dart';
import 'package:digiresto/presentation/profile/profile_page.dart';
import 'package:digiresto/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BottomTabView extends StatelessWidget {
  final I10n lang = I10n.current;

  Widget cartBadge(bool isActive) {
    if (isActive) {
      return new Stack(children: <Widget>[
        new Image.asset(
          AppAssets.iconMenuCartActive,
          width: 30,
          height: 30,
        ),
      ]);
    } else {
      return new Stack(children: <Widget>[
        new Image.asset(
          AppAssets.iconMenuCart,
          width: 30,
          height: 30,
        ),
      ]);
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
                      I10n.current.home_cart,
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
                    I10n.current.beranda_cart_empty,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
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
    HomePage(),
    Center(
      child: CircularProgressIndicator(),
    ),
    CreditPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomTabCubit, BottomTabState>(
      bloc: getIt<BottomTabCubit>()..checkAllCounter(),
      listener: (context, state) {
        if (state.currentIndex == 1) {
          Get.toNamed(Routers.orderCart)?.then((value) {
            context.read<BottomTabCubit>().changeTab(0);
          });
        }
      },
      builder: (context, state) {
        void _onNavBarTapped(int index) {
          context.read<BottomTabCubit>().changeTab(index);
        }

        final _bottomNavBarItems = <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: new Image.asset(
                AppAssets.iconMenuHome,
                width: 28,
                height: 28,
              ),
              activeIcon: new Image.asset(AppAssets.iconMenuHomeActive,
                  width: 28, height: 28),
              label: I10n.current.home_beranda),
          BottomNavigationBarItem(
              //icon: new Image.asset(Assets.iconMenuCart,width: 24,height: 24,),
              icon: Badge(
                showBadge: state.cartCount > 0,
                badgeColor: AppColors.red,
                padding: EdgeInsets.all(7),
                badgeContent: Text(
                  '1',
                  style: Styles.badgeContentStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                child: cartBadge(false),
              ),
              activeIcon: Badge(
                showBadge: state.cartCount > 0,
                badgeColor: AppColors.red,
                padding: EdgeInsets.all(7),
                badgeContent: Text(
                  '1',
                  style: Styles.badgeContentStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                child: cartBadge(true),
              ),
              label: I10n.current.home_cart),
          BottomNavigationBarItem(
              icon: Badge(
                showBadge: state.creditCount > 0,
                badgeColor: AppColors.red,
                padding: EdgeInsets.all(7),
                badgeContent: Text(
                  state.creditCount.toString(),
                  style: Styles.badgeContentStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                child: Image.asset(
                  AppAssets.iconMenuCredit,
                  width: 30,
                  height: 30,
                ),
              ),
              activeIcon: Badge(
                showBadge: state.creditCount > 0,
                badgeColor: AppColors.red,
                padding: EdgeInsets.all(7),
                badgeContent: Text(
                  state.creditCount.toString(),
                  style: Styles.badgeContentStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                child: Image.asset(
                  AppAssets.iconMenuCreditActive,
                  width: 30,
                  height: 30,
                ),
              ),
              label: I10n.current.home_credit),
          BottomNavigationBarItem(
              icon: new Image.asset(
                AppAssets.iconMenuProfile,
                width: 28,
                height: 28,
              ),
              activeIcon: new Image.asset(AppAssets.iconMenuProfileActive,
                  width: 28, height: 28),
              label: I10n.current.home_profile),
        ];

        final _buttomNavBar = BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: _bottomNavBarItems,
          currentIndex: state.currentIndex,
          onTap: _onNavBarTapped,
          selectedItemColor: AppColors.red,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.black,
          iconSize: 20,
        );
        return Scaffold(
          body: Container(
            child: _listPage[state.currentIndex],
          ),
          bottomNavigationBar: _buttomNavBar,
        );
      },
    );
  }
}
