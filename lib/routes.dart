import 'package:flutter/material.dart';

import 'ui/home/home.dart';
import 'ui/login/login.dart';
import 'ui/splash/splash.dart';
import 'ui/onboarding/onboarding.dart';
import 'ui/login/input_phone.dart';
import 'ui/login/verify_otp.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String onboarding = '/onboarding';
  static const String input_phone = '/inputphone';
  static const String verify_otp = '/verifyotp';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
    onboarding: (BuildContext context) => OnboardingScreen(),
    input_phone: (BuildContext context) => InputPhoneScreen(),
    verify_otp: (BuildContext context) => VerifyOtpScreen(),
  };
}



