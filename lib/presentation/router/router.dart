// import 'package:digiresto/presentation/home/add_location.dart';
import 'package:digiresto/domain/profile/user_profile.dart';
import 'package:digiresto/presentation/address/list/home_all_address.dart';
import 'package:digiresto/presentation/address/map/add_address.dart';
import 'package:digiresto/presentation/address/map/add_location.dart';
import 'package:digiresto/presentation/auth/auth_listener.dart';
import 'package:digiresto/presentation/auth/validate_otp/validate_otp_page.dart';
import 'package:digiresto/presentation/cart/cart.dart';
// import 'package:digiresto/presentation/auth/auth_page.dart';
import 'package:digiresto/presentation/home/home.dart';
import 'package:digiresto/presentation/home/home_all_hot_promo.dart';
import 'package:digiresto/presentation/home/home_all_promo.dart';
import 'package:digiresto/presentation/home/home_category_outlet.dart';
import 'package:digiresto/presentation/home/home_digidiscount.dart';
import 'package:digiresto/presentation/home/home_nearby_outlet.dart';
import 'package:digiresto/presentation/home/home_promo_url.dart';
import 'package:digiresto/presentation/home/home_see_all_outlet.dart';
import 'package:digiresto/presentation/intro/intro_page.dart';
import 'package:digiresto/presentation/order/detail_outlet.dart';
import 'package:digiresto/presentation/order/payment_receipt.dart';
import 'package:digiresto/presentation/order/payment_va.dart';
import 'package:digiresto/presentation/order/payment_web_view.dart';
import 'package:digiresto/presentation/order/select_delivery_method.dart';
import 'package:digiresto/presentation/order/select_payment_method.dart';
import 'package:digiresto/presentation/order/select_voucher_method.dart';
import 'package:digiresto/presentation/profile/edit_profile/edit_profile_page.dart';
import 'package:digiresto/presentation/profile/order_history/order_history_page.dart';
import 'package:digiresto/presentation/profile/profile_page.dart';
import 'package:digiresto/presentation/splash/splash_page.dart';
import 'package:get/route_manager.dart';

class Routers {
  static const String splash = '/';
  static const String intro = '/intro';
  static const String auth = '/auth';
  static const String home = '/home';
  static const String login = '/login';
  static const String profile = '/profile';
  static const String editProfile = '/edit_profile';
  static const String orderHistory = '/order_history';
  static const String homePromoUrl = '/home_promo_url';
  static const String homeAllPromo = '/home_all_promo';
  static const String homeAllAddress = '/home_all_address';
  static const String homeAllHotPromo = '/home_all_hot_promo';
  static const String homeAddLocation = '/home_add_location';
  static const String homeNearbyOutlet = '/home_nearby_outlet';
  static const String homeDigiDiscount = '/home_digidiscount';
  static const String homeOutletCategory = '/home_outletCategory';
  static const String homeSeeAllOutlet = '/home_see_all_outlet';
  static const String onboarding = '/onboarding';
  static const String inputPhone = '/inputphone';
  static const String verifyOtp = '/verifyotp';
  static const String loginPin = '/login_pin';
  static const String about = '/about';
  static const String privacyPolicy = '/privacy_policy';
  static const String homeAddAddress = '/home_add_address';
  static const String history = '/history';
  static const String historyDetail = '/history_detail';
  static const String register = '/register';
  static const String orderDetailOutlet = '/order_detail_outlet';
  static const String orderCart = '/order_cart';
  static const String selectPaymentMethod = '/select_payment_method';
  static const String selectVoucherVoucher = '/select_payment_voucher';
  static const String selectDeliveryMethod = '/select_delivery_method';
  static const String selectSalesTypeMethod = '/select_sales_type_method';
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
      name: Routers.splash,
      page: () => SplashPage(),
    ),
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
      name: Routers.profile,
      page: () => ProfilePage(),
    ),
    GetPage(
      name: Routers.editProfile,
      page: () => EditProfilePage(Get.arguments as UserProfile),
    ),
    GetPage(
      name: Routers.orderHistory,
      page: () => OrderHistoryPage(),
    ),
    GetPage(
        name: Routers.verifyOtp,
        page: () => ValidateOtpPage(
              phoneNumber: Get.arguments as String,
            )),
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
      page: () => AddLocationScreen(),
    ),
    GetPage(
      name: Routers.homeNearbyOutlet,
      page: () => HomeNearbyOutletScreen(),
    ),
    GetPage(
      name: Routers.homeDigiDiscount,
      page: () => HomeDigidiscountScreen(),
    ),
    GetPage(name: Routers.homeAddAddress, page: () => AddAddressScreen()),
    GetPage(name: Routers.orderDetailOutlet, page: () => DetailOutletScreen()),
    GetPage(
        name: Routers.homeOutletCategory,
        page: () => HomeCategoryOutletScreen()),
    GetPage(name: Routers.orderCart, page: () => CartScreen()),
    GetPage(name: Routers.homeSeeAllOutlet, page: () => HomeSeeAllOutlet()),
    GetPage(
        name: Routers.selectPaymentMethod,
        page: () => SelectPaymentMethodScreen()),
    GetPage(
        name: Routers.selectVoucherVoucher,
        page: () => SelectVouchertMethodScreen()),
    GetPage(
        name: Routers.selectDeliveryMethod,
        page: () => SelectDeliveryMethodScreen()),
    GetPage(name: Routers.paymentReceipt, page: () => PaymentReceiptScreen()),
    GetPage(name: Routers.paymentVa, page: () => PaymentVAScreen()),
    GetPage(name: Routers.paymentWebView, page: () => PaymentWebViewScreen()),
  ];
}
