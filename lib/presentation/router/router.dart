import 'package:digiresto/presentation/auth/auth_listener.dart';
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
  static const String home = '/home';
  static const String homePromoUrl = '/home_promo_url';
  static const String homeAllPromo = '/home_all_promo';
  static const String homeAllAddress = '/home_all_address';
  static const String homeAllHotPromo = '/home_all_hot_promo';
  static const String homeAddLocation = '/home_add_location';
  static const String homeNearbyOutlet = '/home_nearby_outlet';
  static const String homeDigiDiscount = '/home_digidiscount';
  static const String onboarding = '/onboarding';
  static const String inputPhone = '/inputphone';
  static const String verifyOtp = '/verifyotp';
  static const String loginPin = '/login_pin';
  static const String about = '/about';
  static const String privacyPolicy = '/privacy_policy';
  static const String setAddressList = '/set_address';
  static const String setAddressAdd = '/add_address';
  static const String history = '/history';
  static const String historyDetail = '/history_detail';
  static const String register = '/register';
  static const String orderDetailOutlet = '/order_detail_outlet';
  static const String orderCart = '/order_cart';
  static const String selectPaymentMethod = '/select_payment_method';
  static const String selectDeliveryMethod = '/select_delivery_method';
  static const String paymentReceipt = '/payment_receipt';
  static const String paymentWebView = '/payment_web_view';
  static const String paymentVa = '/payment_va';
  static const String updateProfile = '/update_profile';
  static const String topupCredit = '/topup_credit';
  static const String topupCreditNominal = '/topup_credit_nominal';
  static const String paymentTopupCreditBT = '/payment_topup_credit_bt';
  static const String paymentTopupCreditVA = '/payment_topup_credit_va';
  static const String historyCredit = '/history_credit';

  final List<GetPage> routers = [
    GetPage(
      name: Routers.intro,
      page: () => IntroPage(),
    ),
    GetPage(
      name: Routers.auth,
      page: () => AuthListener(),
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
