import 'package:digiresto/presentation/auth/auth_page.dart';
import 'package:digiresto/presentation/auth/validate_otp/validate_otp_page.dart';
import 'package:digiresto/presentation/intro/intro_page.dart';
import 'package:get/route_manager.dart';

class Routers {
  static const String landing = '/';
  static const String intro = '/intro';
  static const String auth = '/auth';
  static const String validateOtp = '/validateotp';

  final List<GetPage> routers = [
    GetPage(
      name: Routers.intro,
      page: () => IntroPage(),
    ),
    GetPage(
      name: Routers.auth,
      page: () => AuthPage(),
    ),
    GetPage(
      name: Routers.validateOtp,
      page: () => ValidateOtpPage(),
    ),
  ];
}
