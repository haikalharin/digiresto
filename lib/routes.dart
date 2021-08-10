import 'package:flutter/material.dart';

import 'presentation/home/home.dart';
import 'presentation/home/home_all_address.dart';
import 'presentation/home/home_digidiscount.dart';
import 'presentation/home/home_nearby_outlet.dart';
import 'presentation/home/home_promo_url.dart';

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
  static const String history_detail = '/history_detail';
  static const String register = '/register';
  static const String home_promo_url = '/home_promo_url';
  static const String home_all_promo = '/home_all_promo';
  static const String home_all_address = '/home_all_address';
  static const String home_add_location = '/home_add_location';
  static const String home_nearby_outlet = '/home_nearby_outlet';
  static const String home_digidiscount = '/home_digidiscount';
  static const String home_all_hot_promo = '/home_all_hot_promo';
  static const String order_detail_outlet = '/order_detail_outlet';
  static const String order_cart = '/order_cart';
  static const String select_payment_method = '/select_payment_method';
  static const String select_delivery_method = '/select_delivery_method';
  static const String payment_receipt = '/payment_receipt';
  static const String payment_web_view = '/payment_web_view';
  static const String payment_va = '/payment_va';
  static const String update_profile = '/update_profile';
  static const String topupCredit = '/topup_credit';
  static const String topupCreditNominal = '/topup_credit_nominal';
  static const String paymentTopupCreditBT = '/payment_topup_credit_bt';
  static const String paymentTopupCreditVA = '/payment_topup_credit_va';
  static const String historyCredit = '/history_credit';

  static final routes = <String, WidgetBuilder>{
    //splash: (BuildContext context) => SplashScreen(),
    //   login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
    //onboarding: (BuildContext context) => OnboardingScreen(),
    // input_phone: (BuildContext context) => InputPhoneScreen(),
    // verify_otp: (BuildContext context) => VerifyOtpScreen(),
    // login_pin: (BuildContext context) => LoginPinScreen(),
    // register: (BuildContext context) => RegisterScreen(),
    // about: (BuildContext context) => AboutScreen(),
    // privacy_policy: (BuildContext context) => PrivacyPolicyScreen(),
    // history: (BuildContext context) => HistoryScreen(),
    // history_detail: (BuildContext context) => HistoryDetailScreen(),
    // set_address_list: (BuildContext context) => SetAddressScreen(),
    // set_address_add: (BuildContext context) => AddAddressScreen(),
    home_promo_url: (BuildContext context) => HomePromoUrlScreen(),
    // home_all_promo: (BuildContext context) => HomeAllPromoScreen(),
    home_all_address: (BuildContext context) => HomeAllAddressScreen(),
    // home_all_hot_promo: (BuildContext context) => HomeAllHotPromoScreen(),
    // home_add_location: (BuildContext context) => HomeAddLocationScreen(),
    home_nearby_outlet: (BuildContext context) => HomeNearbyOutletScreen(),
    home_digidiscount: (BuildContext context) => HomeDigidiscountScreen(),
    // order_detail_outlet: (BuildContext context) => DetailOutletScreen(),
    // order_cart: (BuildContext context) => OrderCartScreen(),
    // select_payment_method: (BuildContext context) =>
    //     SelectPaymentMethodScreen(),
    // select_delivery_method: (BuildContext context) =>
    //     SelectDeliveryMethodScreen(),
    // payment_receipt: (BuildContext context) => PaymentReceiptScreen(),
    // payment_web_view: (BuildContext context) => PaymentWebView(),
    // payment_va: (BuildContext context) => PaymentVA(),
    // update_profile: (BuildContext context) => UpdateProfileScreen(),
    // topupCredit: (BuildContext context) => TopupCreditScreen(),
    // paymentTopupCreditBT: (BuildContext context) =>
    //     PaymentTopupCreditBTScreen(),
    // paymentTopupCreditVA: (BuildContext context) =>
    //     PaymentTopupCreditVAScreen(),
    // topupCreditNominal: (BuildContext context) => TopupCreditNominalScreen(),
    // historyCredit: (BuildContext context) => HistoryCreditScreen(),
  };
}
