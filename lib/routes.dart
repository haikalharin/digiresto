import 'package:boilerplate/models/login/login_pin_model.dart';
import 'package:boilerplate/ui/profile/about.dart';
import 'package:boilerplate/ui/profile/history.dart';
import 'package:boilerplate/ui/profile/privacy_policy.dart';
import 'package:boilerplate/ui/profile/set_address/set_address.dart';
import 'package:boilerplate/ui/profile/set_address/add_address.dart';
import 'package:flutter/material.dart';

import 'ui/home/home.dart';
import 'ui/login/login.dart';
import 'ui/splash/splash.dart';
import 'ui/onboarding/onboarding.dart';
import 'ui/login/input_phone.dart';
import 'ui/login/verify_otp.dart';
import 'ui/login/login_pin.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String onboarding = '/onboarding';
  static const String input_phone = '/inputphone';
  static const String verify_otp = '/verifyotp';
  static const String login_pin = '/login_pin';
  static const String about = '/about';
  static const String privacy_policy = '/privacy_policy';
  static const String set_address_list = '/set_address';
  static const String set_address_add = '/add_address';
  static const String history = '/history';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
    onboarding: (BuildContext context) => OnboardingScreen(),
    input_phone: (BuildContext context) => InputPhoneScreen(),
    verify_otp: (BuildContext context) => VerifyOtpScreen(),
    login_pin: (BuildContext context) => LoginPinScreen(),
    about: (BuildContext context) => AboutScreen(),
    privacy_policy: (BuildContext context)=> PrivacyPolicy(),
    history: (BuildContext context)=> HistoryScreen(),
    set_address_list: (BuildContext context)=> SetAddressScreen(),
    set_address_add: (BuildContext context)=> AddAddressScreen(),
  };
}



