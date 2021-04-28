import 'package:boilerplate/constants/assets.dart';
import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/stores/user/user_store.dart';
import 'package:boilerplate/ui/home/home.dart';
import 'package:boilerplate/ui/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/ui/credit/credit.dart';
import 'package:boilerplate/ui/home/home_content.dart';
import 'package:boilerplate/ui/cart/cart.dart';
import 'package:provider/provider.dart';

class HomeNavigationScreen extends StatefulWidget {
  @override
  _HomeNavigationScreenState createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index){
    setState(() {
      _selectedTabIndex = index;
    });
  }
  UserStore _userStore;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _userStore = Provider.of<UserStore>(context);
    print(_userStore.activeHomeTab);
    if (_userStore.activeHomeTab=='profile'){
      _onNavBarTapped(3);
    }else if (_userStore.activeHomeTab=='home'){
      _onNavBarTapped(0);
    }
    //parameter route
  }
  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      HomeContentScreen(),
      CartScreen(),
      CreditScreen(),
      ProfileScreen(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[

      BottomNavigationBarItem(
          icon: new Image.asset(Assets.iconMenuHome,width: 24,height: 24,),
          activeIcon: new Image.asset(Assets.iconMenuHomeActive,width: 24,height: 24),
          label: 'Home'
      ),
      BottomNavigationBarItem(
          icon: new Image.asset(Assets.iconMenuCart,width: 24,height: 24,),
          activeIcon: new Image.asset(Assets.iconMenuCartActive,width: 24,height: 24),
          label: 'Cart'
      ),

      BottomNavigationBarItem(
          icon: new Image.asset(Assets.iconMenuCredit,width: 24,height: 24,),
          activeIcon: new Image.asset(Assets.iconMenuCreditActive,width: 24,height: 24),
          label: 'Credit'
      ),
      BottomNavigationBarItem(
          icon: new Image.asset(Assets.iconMenuProfile,width: 24,height: 24,),
          activeIcon: new Image.asset(Assets.iconMenuProfileActive,width: 24,height: 24),
          label: 'Profile'
      ),
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
        iconSize:20,
    );
    return Scaffold(
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _buttomNavBar,
    );
  }
}