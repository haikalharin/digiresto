import 'package:digiresto/presentation/auth/auth_page.dart';
import 'package:digiresto/presentation/auth/validate_otp/validate_otp_page.dart';
import 'package:digiresto/presentation/home/add_location.dart';
import 'package:digiresto/presentation/home/home.dart';
import 'package:digiresto/presentation/home/home_all_address.dart';
import 'package:digiresto/presentation/home/home_all_hot_promo.dart';
import 'package:digiresto/presentation/home/home_all_promo.dart';
import 'package:digiresto/presentation/home/home_digidiscount.dart';
import 'package:digiresto/presentation/home/home_nearby_outlet.dart';
import 'package:digiresto/presentation/home/home_promo_url.dart';
import 'package:digiresto/presentation/intro/intro_page.dart';
import 'package:get/route_manager.dart';

class Routers {
  static const String landing = '/';
  static const String intro = '/intro';
  static const String auth = '/auth';
  static const String validateOtp = '/validateotp';
  static const String home = '/home';
  static const String homePromoUrl = '/home_promo_url';
  static const String homeAllPromo = '/home_all_promo';
  static const String homeAllAddress = '/home_all_address';
  static const String homeAllHotPromo = '/home_all_hot_promo';
  static const String homeAddLocation = '/home_add_location';
  static const String homeNearbyOutlet = '/home_nearby_outlet';
  static const String homeDigiDiscount = '/home_digidiscount';

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
    GetPage(
      name: Routers.home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: Routers.homePromoUrl,
      page: () => HomePromoUrlScreen(),
    ),
    GetPage(
      name: Routers.homeAllPromo,
      page: () => HomeAllPromoScreen(),
    ),
    GetPage(
      name: Routers.homeAllAddress,
      page: () => HomeAllAddressScreen(),
    ),
    GetPage(
      name: Routers.homeAllHotPromo,
      page: () => HomeAllHotPromoScreen(),
    ),
    GetPage(
      name: Routers.homeAddLocation,
      page: () => HomeAddLocationScreen(),
    ),
    GetPage(
      name: Routers.homeNearbyOutlet,
      page: () => HomeNearbyOutletScreen(),
    ),
    GetPage(
      name: Routers.homeDigiDiscount,
      page: () => HomeDigidiscountScreen(),
    ),
  ];
}
