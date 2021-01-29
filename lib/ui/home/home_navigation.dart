import 'package:boilerplate/constants/colors.dart';
import 'package:boilerplate/ui/home/home.dart';
import 'package:boilerplate/ui/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/ui/credit/credit.dart';
import 'package:boilerplate/ui/home/home_content.dart';
import 'package:boilerplate/ui/cart/cart.dart';

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
  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      HomeContentScreen(),
      CartScreen(),
      ProfileScreen(),
      CreditScreen(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[

      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart'
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.person ),
          label: 'Profile'
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          label: 'Credit'
      ),
    ];

    final _buttomNavBar = BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _bottomNavBarItems,
        currentIndex: _selectedTabIndex,
        onTap: _onNavBarTapped,
        selectedItemColor: AppColors.red,
        selectedFontSize: 12,
        unselectedFontSize: 10,
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