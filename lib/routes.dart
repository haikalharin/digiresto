import 'package:flutter/material.dart';

import 'ui/home/home.dart';
import 'ui/login/login.dart';
import 'ui/splash/splash.dart';
import 'ui/onboarding/get_started.dart';
import 'ui/onboarding/address.dart';
import 'ui/onboarding/favorite.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String onboarding_get_started = '/onboarding_get_started';
  static const String onboarding_address = '/onboarding_address';
  static const String onboarding_favorite = '/onboarding_favorite';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
    onboarding_get_started: (BuildContext context) => GetStartedScreen(),
    onboarding_address: (BuildContext context) => AddressScreen(),
    onboarding_favorite: (BuildContext context) => FavoriteScreen(),
  };
}



