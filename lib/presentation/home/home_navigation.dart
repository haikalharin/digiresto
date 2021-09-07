import 'package:digiresto/application/home/home_user_bloc/home_user_bloc.dart';
import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/cart/cart.dart';
import 'package:digiresto/presentation/credit/credit_page.dart';
import 'package:digiresto/presentation/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'home_content.dart';

class HomeNavigationScreen extends StatefulWidget {
  @override
  _HomeNavigationScreenState createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  int _selectedTabIndex = 0;
  bool isHaveCart = false;
  void _onNavBarTapped(int index) {
    Get.context!.read<HomeUserBloc>().add(HomeUserEvent.getCartSessionID());
    setState(() {
      if (isHaveCart) {
        _selectedTabIndex = index;
      } else {
        _selectedTabIndex = index;
        if (_selectedTabIndex == 1) {
          _selectedTabIndex = 0;
          showMyDialog();
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Get.context!.read<HomeUserBloc>().add(HomeUserEvent.getCartSessionID());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Get.context!.read<HomeUserBloc>().add(HomeUserEvent.getCartSessionID());
  }

  Future<void> showMyDialog() async {
    return showDialog<void>(
      context: context,
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
                  child: RaisedButton(
                    onPressed: () {
                      Get.back(closeOverlays: true);
                    },
                    color: AppColors.red,
                    child: Text("Ok",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                      side: BorderSide(
                        width: 1,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
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

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      HomeContentScreen(),
      CartScreen(),
      CreditPage(),
      ProfilePage(),
    ];

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
          icon: cartBadge(false),
          activeIcon: cartBadge(true),
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
      currentIndex: _selectedTabIndex,
      onTap: _onNavBarTapped,
      selectedItemColor: AppColors.red,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      unselectedItemColor: Colors.black,
      iconSize: 20,
    );
    return Scaffold(
      body: BlocConsumer<HomeUserBloc, HomeUserState>(
        listener: (context, state) {
          state.maybeMap(
              getCartSessionIDSuccess: (r) {
                if (r.sessionID == null || r.sessionID == "") {
                  isHaveCart = false;
                } else {
                  isHaveCart = true;
                }
              },
              orElse: () {});
        },
        builder: (context, state) {
          return Container(
            child: _listPage[_selectedTabIndex],
          );
        },
      ),
      bottomNavigationBar: _buttomNavBar,
    );
  }
}
