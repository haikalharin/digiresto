import 'package:digiresto/domain/core/constants/assets.dart';
import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/presentation/cart/cart.dart';
import 'package:digiresto/presentation/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_content.dart';

class HomeNavigationScreen extends StatefulWidget {
  @override
  _HomeNavigationScreenState createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  // UserStore? _userStore;
  // OrderStore? _orderStore;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _userStore = Provider.of<UserStore>(context);
    // _orderStore = Provider.of<OrderStore>(context);
    // print(_userStore?.activeHomeTab);
    // if (_userStore?.activeHomeTab == 'profile') {
    //   _onNavBarTapped(3);
    // } else if (_userStore?.activeHomeTab == 'credits') {
    //   _onNavBarTapped(2);
    // } else if (_userStore?.activeHomeTab == 'home') {
    //   _onNavBarTapped(0);
    // }
    //parameter route
  }

  Widget cartBadge() {
    return new Stack(children: <Widget>[
      new Image.asset(
        AppAssets.iconMenuCart,
        width: 24,
        height: 24,
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

  @override
  Widget build(BuildContext context) {
    Get.put(HomeContentController());
    final _listPage = <Widget>[
      HomePage(),
      CartScreen(),
      Container(),
      Container(),
      // CartScreen(),
      // CreditScreen(),
      // ProfileScreen(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: new Image.asset(
            AppAssets.iconMenuHome,
            width: 24,
            height: 24,
          ),
          activeIcon: new Image.asset(AppAssets.iconMenuHomeActive,
              width: 24, height: 24),
          label: 'Home'),
      BottomNavigationBarItem(
          //icon: new Image.asset(Assets.iconMenuCart,width: 24,height: 24,),
          icon: cartBadge(),
          activeIcon: cartBadge(),
          label: 'Cart'),
      BottomNavigationBarItem(
          icon: new Image.asset(
            AppAssets.iconMenuCredit,
            width: 24,
            height: 24,
          ),
          activeIcon: new Image.asset(AppAssets.iconMenuCreditActive,
              width: 24, height: 24),
          label: 'Credit'),
      BottomNavigationBarItem(
          icon: new Image.asset(
            AppAssets.iconMenuProfile,
            width: 24,
            height: 24,
          ),
          activeIcon: new Image.asset(AppAssets.iconMenuProfileActive,
              width: 24, height: 24),
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
      body: Container(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _buttomNavBar,
    );
  }
}
