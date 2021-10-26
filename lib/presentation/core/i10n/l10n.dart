// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `en`
  String get lang {
    return Intl.message(
      'en',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onboarding_skip {
    return Intl.message(
      'Next',
      name: 'onboarding_skip',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboarding_get_started {
    return Intl.message(
      'Get Started',
      name: 'onboarding_get_started',
      desc: '',
      args: [],
    );
  }

  /// `Find your favourite food here`
  String get onboarding_title_1 {
    return Intl.message(
      'Find your favourite food here',
      name: 'onboarding_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Different types of food are ready-to-order easily.`
  String get onboarding_desc_1 {
    return Intl.message(
      'Different types of food are ready-to-order easily.',
      name: 'onboarding_desc_1',
      desc: '',
      args: [],
    );
  }

  /// `Enter destination address`
  String get onboarding_title_2 {
    return Intl.message(
      'Enter destination address',
      name: 'onboarding_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Enter your address to help us deliver your food.`
  String get onboarding_desc_2 {
    return Intl.message(
      'Enter your address to help us deliver your food.',
      name: 'onboarding_desc_2',
      desc: '',
      args: [],
    );
  }

  /// `Fast and Safe Delivery`
  String get onboarding_title_3 {
    return Intl.message(
      'Fast and Safe Delivery',
      name: 'onboarding_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Your food is ready to be delivered to the destination address with our trusted couriers.`
  String get onboarding_desc_3 {
    return Intl.message(
      'Your food is ready to be delivered to the destination address with our trusted couriers.',
      name: 'onboarding_desc_3',
      desc: '',
      args: [],
    );
  }

  /// `Dev Mode`
  String get dev_mode_title {
    return Intl.message(
      'Dev Mode',
      name: 'dev_mode_title',
      desc: '',
      args: [],
    );
  }

  /// `Connection issue.`
  String get error_message_failed_get_response {
    return Intl.message(
      'Connection issue.',
      name: 'error_message_failed_get_response',
      desc: '',
      args: [],
    );
  }

  /// `Sorry..`
  String get error_message_title {
    return Intl.message(
      'Sorry..',
      name: 'error_message_title',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get alert_cancel {
    return Intl.message(
      'Cancel',
      name: 'alert_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get alert_ok {
    return Intl.message(
      'Ok',
      name: 'alert_ok',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get alert_save {
    return Intl.message(
      'Save',
      name: 'alert_save',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get alert_back {
    return Intl.message(
      'Back',
      name: 'alert_back',
      desc: '',
      args: [],
    );
  }

  /// `Failed to make a call, please try again later.`
  String get alert_failed_to_action_dial {
    return Intl.message(
      'Failed to make a call, please try again later.',
      name: 'alert_failed_to_action_dial',
      desc: '',
      args: [],
    );
  }

  /// `{param}/%2$s`
  String input_count_limit(Object param) {
    return Intl.message(
      '$param/%2\$s',
      name: 'input_count_limit',
      desc: '',
      args: [param],
    );
  }

  /// `You haven not login yet, please login first.`
  String get user_not_login_alert {
    return Intl.message(
      'You haven not login yet, please login first.',
      name: 'user_not_login_alert',
      desc: '',
      args: [],
    );
  }

  /// `Oops sorry`
  String get oops_title {
    return Intl.message(
      'Oops sorry',
      name: 'oops_title',
      desc: '',
      args: [],
    );
  }

  /// `Your login session has ended, please login again.`
  String get alert_out_of_session {
    return Intl.message(
      'Your login session has ended, please login again.',
      name: 'alert_out_of_session',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get webview_close {
    return Intl.message(
      'Close',
      name: 'webview_close',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _logout {
    return Intl.message(
      '',
      name: '_logout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure want to quit?`
  String get logout_alert {
    return Intl.message(
      'Are you sure want to quit?',
      name: 'logout_alert',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_landing screen' key

  /// `Welcome to {param}, \nplease choose your location to start order.`
  String landing_welcome_to(Object param) {
    return Intl.message(
      'Welcome to $param, \nplease choose your location to start order.',
      name: 'landing_welcome_to',
      desc: '',
      args: [param],
    );
  }

  /// `Select location`
  String get landing_select_location {
    return Intl.message(
      'Select location',
      name: 'landing_select_location',
      desc: '',
      args: [],
    );
  }

  /// `Dine In`
  String get landing_dine_in {
    return Intl.message(
      'Dine In',
      name: 'landing_dine_in',
      desc: '',
      args: [],
    );
  }

  /// `Take Away`
  String get landing_take_away {
    return Intl.message(
      'Take Away',
      name: 'landing_take_away',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get landing_delivery {
    return Intl.message(
      'Delivery',
      name: 'landing_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Drive Thru`
  String get landing_drive_thru {
    return Intl.message(
      'Drive Thru',
      name: 'landing_drive_thru',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get landing_search_outlet {
    return Intl.message(
      'Search',
      name: 'landing_search_outlet',
      desc: '',
      args: [],
    );
  }

  /// `Enter outlet name`
  String get landing_search_outlet_name {
    return Intl.message(
      'Enter outlet name',
      name: 'landing_search_outlet_name',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_sign up' key

  /// `Continue verification`
  String get sign_up_title {
    return Intl.message(
      'Continue verification',
      name: 'sign_up_title',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get sign_up_username {
    return Intl.message(
      'Username',
      name: 'sign_up_username',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get sign_up_email {
    return Intl.message(
      'Email',
      name: 'sign_up_email',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get sign_up_phone {
    return Intl.message(
      'Phone number',
      name: 'sign_up_phone',
      desc: '',
      args: [],
    );
  }

  /// `Passcode`
  String get sign_up_password {
    return Intl.message(
      'Passcode',
      name: 'sign_up_password',
      desc: '',
      args: [],
    );
  }

  /// `Skip and Continue`
  String get sign_up_skip_continue {
    return Intl.message(
      'Skip and Continue',
      name: 'sign_up_skip_continue',
      desc: '',
      args: [],
    );
  }

  /// `Verify Phone`
  String get verify_phone {
    return Intl.message(
      'Verify Phone',
      name: 'verify_phone',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _login {
    return Intl.message(
      '',
      name: '_login',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_title {
    return Intl.message(
      'Login',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Customer Service`
  String get login_customer_service {
    return Intl.message(
      'Customer Service',
      name: 'login_customer_service',
      desc: '',
      args: [],
    );
  }

  /// `For informations, complaints, and recommendations in using this app, please contact us at :`
  String get login_customer_service_desc {
    return Intl.message(
      'For informations, complaints, and recommendations in using this app, please contact us at :',
      name: 'login_customer_service_desc',
      desc: '',
      args: [],
    );
  }

  /// `Continue verification`
  String get login_btn {
    return Intl.message(
      'Continue verification',
      name: 'login_btn',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get login_phone {
    return Intl.message(
      'Phone number',
      name: 'login_phone',
      desc: '',
      args: [],
    );
  }

  /// `Dev Mode`
  String get login_dev_mode {
    return Intl.message(
      'Dev Mode',
      name: 'login_dev_mode',
      desc: '',
      args: [],
    );
  }

  /// `Please select Base Url for the testing, or enter the base url you want to use`
  String get login_body_base {
    return Intl.message(
      'Please select Base Url for the testing, or enter the base url you want to use',
      name: 'login_body_base',
      desc: '',
      args: [],
    );
  }

  /// `Dev : {url}`
  String login_select_dev(Object url) {
    return Intl.message(
      'Dev : $url',
      name: 'login_select_dev',
      desc: '',
      args: [url],
    );
  }

  /// `Prod : {url}`
  String login_select_prod(Object url) {
    return Intl.message(
      'Prod : $url',
      name: 'login_select_prod',
      desc: '',
      args: [url],
    );
  }

  /// `Other`
  String get login_select_other {
    return Intl.message(
      'Other',
      name: 'login_select_other',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_forgot password' key

  /// `Forgot Password`
  String get forgot_password_title {
    return Intl.message(
      'Forgot Password',
      name: 'forgot_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Send Reset Link`
  String get forgot_password_send {
    return Intl.message(
      'Send Reset Link',
      name: 'forgot_password_send',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _home {
    return Intl.message(
      '',
      name: '_home',
      desc: '',
      args: [],
    );
  }

  /// `Shipping address`
  String get home_address {
    return Intl.message(
      'Shipping address',
      name: 'home_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter your address to make \ndelivery easier and find out the nearest \nrestaurant around you.`
  String get home_address_hint {
    return Intl.message(
      'Enter your address to make \ndelivery easier and find out the nearest \nrestaurant around you.',
      name: 'home_address_hint',
      desc: '',
      args: [],
    );
  }

  /// `Find your favorite food`
  String get home_search_food {
    return Intl.message(
      'Find your favorite food',
      name: 'home_search_food',
      desc: '',
      args: [],
    );
  }

  /// `Find the favorite food you want.`
  String get home_search_food_hint {
    return Intl.message(
      'Find the favorite food you want.',
      name: 'home_search_food_hint',
      desc: '',
      args: [],
    );
  }

  /// `Home Banner`
  String get home_banner {
    return Intl.message(
      'Home Banner',
      name: 'home_banner',
      desc: '',
      args: [],
    );
  }

  /// `Find interesting and latest info.`
  String get home_banner_hint {
    return Intl.message(
      'Find interesting and latest info.',
      name: 'home_banner_hint',
      desc: '',
      args: [],
    );
  }

  /// `Nearby`
  String get home_nearby_outlet {
    return Intl.message(
      'Nearby',
      name: 'home_nearby_outlet',
      desc: '',
      args: [],
    );
  }

  /// `Find the nearest restaurant from your location.`
  String get home_nearby_outlet_hint {
    return Intl.message(
      'Find the nearest restaurant from your location.',
      name: 'home_nearby_outlet_hint',
      desc: '',
      args: [],
    );
  }

  /// `DigiDiskon`
  String get home_digidiskon {
    return Intl.message(
      'DigiDiskon',
      name: 'home_digidiskon',
      desc: '',
      args: [],
    );
  }

  /// `Find various special discounts around you.`
  String get home_digidiskon_hint {
    return Intl.message(
      'Find various special discounts around you.',
      name: 'home_digidiskon_hint',
      desc: '',
      args: [],
    );
  }

  /// `Pre Order`
  String get home_preorder {
    return Intl.message(
      'Pre Order',
      name: 'home_preorder',
      desc: '',
      args: [],
    );
  }

  /// `Various menus with the purchase system \norder and pay in advance with a grace \nperiod of delivery determined by the seller.`
  String get home_preorder_hint {
    return Intl.message(
      'Various menus with the purchase system \norder and pay in advance with a grace \nperiod of delivery determined by the seller.',
      name: 'home_preorder_hint',
      desc: '',
      args: [],
    );
  }

  /// `Frozen Food`
  String get home_frozen_food {
    return Intl.message(
      'Frozen Food',
      name: 'home_frozen_food',
      desc: '',
      args: [],
    );
  }

  /// `Find a variety of frozen foods that \nare easy and fast to serve.`
  String get home_frozen_food_hint {
    return Intl.message(
      'Find a variety of frozen foods that \nare easy and fast to serve.',
      name: 'home_frozen_food_hint',
      desc: '',
      args: [],
    );
  }

  /// `Food packages for those of you who are self quarantine`
  String get home_indonesia_pasti_bisa_hint {
    return Intl.message(
      'Food packages for those of you who are self quarantine',
      name: 'home_indonesia_pasti_bisa_hint',
      desc: '',
      args: [],
    );
  }

  /// `Find a variety of {param} foods.`
  String home_category_hint(Object param) {
    return Intl.message(
      'Find a variety of $param foods.',
      name: 'home_category_hint',
      desc: '',
      args: [param],
    );
  }

  /// `No orders`
  String get home_track_order_empty {
    return Intl.message(
      'No orders',
      name: 'home_track_order_empty',
      desc: '',
      args: [],
    );
  }

  /// `Hot Promo`
  String get home_hot_promo {
    return Intl.message(
      'Hot Promo',
      name: 'home_hot_promo',
      desc: '',
      args: [],
    );
  }

  /// `Find attractive promos of choice from various Digiresto Merchants.`
  String get home_hot_promo_hint {
    return Intl.message(
      'Find attractive promos of choice from various Digiresto Merchants.',
      name: 'home_hot_promo_hint',
      desc: '',
      args: [],
    );
  }

  /// `No Hot Promo`
  String get home_hot_promo_desc {
    return Intl.message(
      'No Hot Promo',
      name: 'home_hot_promo_desc',
      desc: '',
      args: [],
    );
  }

  /// `PROMO`
  String get home_hot_promo_flag {
    return Intl.message(
      'PROMO',
      name: 'home_hot_promo_flag',
      desc: '',
      args: [],
    );
  }

  /// `Join with Us`
  String get home_join_digimitra {
    return Intl.message(
      'Join with Us',
      name: 'home_join_digimitra',
      desc: '',
      args: [],
    );
  }

  /// `Receive non-cash payments and make instant delivery even easier!`
  String get home_join_digimitra_desc {
    return Intl.message(
      'Receive non-cash payments and make instant delivery even easier!',
      name: 'home_join_digimitra_desc',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get home_join_digimitra_action {
    return Intl.message(
      'Next',
      name: 'home_join_digimitra_action',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_beranda {
    return Intl.message(
      'Home',
      name: 'home_beranda',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get home_cart {
    return Intl.message(
      'Cart',
      name: 'home_cart',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get home_profile {
    return Intl.message(
      'Profile',
      name: 'home_profile',
      desc: '',
      args: [],
    );
  }

  /// `Credit`
  String get home_credit {
    return Intl.message(
      'Credit',
      name: 'home_credit',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_outlet list' key

  /// `View all {param} outlets`
  String outlet_list_see_all_outlet(Object param) {
    return Intl.message(
      'View all $param outlets',
      name: 'outlet_list_see_all_outlet',
      desc: '',
      args: [param],
    );
  }

  /// `List Outlet`
  String get outlet_list_title {
    return Intl.message(
      'List Outlet',
      name: 'outlet_list_title',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_pre order' key

  /// `Find your favorite restaurant`
  String get preorder_filter_hint {
    return Intl.message(
      'Find your favorite restaurant',
      name: 'preorder_filter_hint',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get preorder_filter_all {
    return Intl.message(
      'All',
      name: 'preorder_filter_all',
      desc: '',
      args: [],
    );
  }

  /// `{param} Day`
  String preorder_filter_a_day(Object param) {
    return Intl.message(
      '$param Day',
      name: 'preorder_filter_a_day',
      desc: '',
      args: [param],
    );
  }

  /// `More than {param} Days`
  String preorder_filter_else(Object param) {
    return Intl.message(
      'More than $param Days',
      name: 'preorder_filter_else',
      desc: '',
      args: [param],
    );
  }

  /// `The Pre Order menu is not found.`
  String get preorder_not_found {
    return Intl.message(
      'The Pre Order menu is not found.',
      name: 'preorder_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Pre Order Terms`
  String get preorder_tnc_title {
    return Intl.message(
      'Pre Order Terms',
      name: 'preorder_tnc_title',
      desc: '',
      args: [],
    );
  }

  /// `The deadline of order and payment maximum at {param} WIB`
  String preorder_tnc_desc_1(Object param) {
    return Intl.message(
      'The deadline of order and payment maximum at $param WIB',
      name: 'preorder_tnc_desc_1',
      desc: '',
      args: [param],
    );
  }

  /// `Order and payment after {param} will be added 1 day for the delivery process`
  String preorder_tnc_desc_2(Object param) {
    return Intl.message(
      'Order and payment after $param will be added 1 day for the delivery process',
      name: 'preorder_tnc_desc_2',
      desc: '',
      args: [param],
    );
  }

  /// `added 1 day`
  String get preorder_tnc_desc_2_bold {
    return Intl.message(
      'added 1 day',
      name: 'preorder_tnc_desc_2_bold',
      desc: '',
      args: [],
    );
  }

  /// `Understand`
  String get preorder_tnc_ok {
    return Intl.message(
      'Understand',
      name: 'preorder_tnc_ok',
      desc: '',
      args: [],
    );
  }

  /// `Deadline for ordering and payment is {param} WIB. Orders and payments after {param}, will be added 1 day for the delivery process.`
  String preorder_detail_desc(Object param) {
    return Intl.message(
      'Deadline for ordering and payment is $param WIB. Orders and payments after $param, will be added 1 day for the delivery process.',
      name: 'preorder_detail_desc',
      desc: '',
      args: [param],
    );
  }

  /// `Estimated delivery date : {param}`
  String preorder_detail_estimate(Object param) {
    return Intl.message(
      'Estimated delivery date : $param',
      name: 'preorder_detail_estimate',
      desc: '',
      args: [param],
    );
  }

  /// `Estimated delivery date: {param}`
  String preorder_billing_desc(Object param) {
    return Intl.message(
      'Estimated delivery date: $param',
      name: 'preorder_billing_desc',
      desc: '',
      args: [param],
    );
  }

  /// ``
  String get _beranda {
    return Intl.message(
      '',
      name: '_beranda',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get beranda_category_see_all {
    return Intl.message(
      'See All',
      name: 'beranda_category_see_all',
      desc: '',
      args: [],
    );
  }

  /// `No Favourite Outlet`
  String get beranda_no_favourite_outlet {
    return Intl.message(
      'No Favourite Outlet',
      name: 'beranda_no_favourite_outlet',
      desc: '',
      args: [],
    );
  }

  /// `No Recent Order`
  String get beranda_no_recent_order {
    return Intl.message(
      'No Recent Order',
      name: 'beranda_no_recent_order',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get beranda_search {
    return Intl.message(
      'Search',
      name: 'beranda_search',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get beranda_recent_order {
    return Intl.message(
      'Reorder',
      name: 'beranda_recent_order',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get beranda_all_product {
    return Intl.message(
      'All',
      name: 'beranda_all_product',
      desc: '',
      args: [],
    );
  }

  /// `Outlet has been changed`
  String get beranda_outlet_change {
    return Intl.message(
      'Outlet has been changed',
      name: 'beranda_outlet_change',
      desc: '',
      args: [],
    );
  }

  /// `Order method has been changed`
  String get beranda_order_method_change {
    return Intl.message(
      'Order method has been changed',
      name: 'beranda_order_method_change',
      desc: '',
      args: [],
    );
  }

  /// `, all product in cart will be deleted.`
  String get beranda_all_product_deleted {
    return Intl.message(
      ', all product in cart will be deleted.',
      name: 'beranda_all_product_deleted',
      desc: '',
      args: [],
    );
  }

  /// `Cart is empty, please choose item you want to order first.`
  String get beranda_cart_empty {
    return Intl.message(
      'Cart is empty, please choose item you want to order first.',
      name: 'beranda_cart_empty',
      desc: '',
      args: [],
    );
  }

  /// `View Cart`
  String get beranda_view_cart {
    return Intl.message(
      'View Cart',
      name: 'beranda_view_cart',
      desc: '',
      args: [],
    );
  }

  /// `Outlet is currently closed.`
  String get beranda_outlet_close {
    return Intl.message(
      'Outlet is currently closed.',
      name: 'beranda_outlet_close',
      desc: '',
      args: [],
    );
  }

  /// `Wait`
  String get beranda_tracking_order_waiting {
    return Intl.message(
      'Wait',
      name: 'beranda_tracking_order_waiting',
      desc: '',
      args: [],
    );
  }

  /// `Your Location`
  String get beranda_your_location {
    return Intl.message(
      'Your Location',
      name: 'beranda_your_location',
      desc: '',
      args: [],
    );
  }

  /// `Find your favourite food`
  String get beranda_find_your_favorite_food {
    return Intl.message(
      'Find your favourite food',
      name: 'beranda_find_your_favorite_food',
      desc: '',
      args: [],
    );
  }

  /// `Find your favourite frozen food`
  String get beranda_find_your_favorite_frozen_food {
    return Intl.message(
      'Find your favourite frozen food',
      name: 'beranda_find_your_favorite_frozen_food',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _Outlet {
    return Intl.message(
      '',
      name: '_Outlet',
      desc: '',
      args: [],
    );
  }

  /// `No Outlet Found`
  String get outlet_not_found {
    return Intl.message(
      'No Outlet Found',
      name: 'outlet_not_found',
      desc: '',
      args: [],
    );
  }

  /// `No Menu Found`
  String get outlet_menu_not_found {
    return Intl.message(
      'No Menu Found',
      name: 'outlet_menu_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Oops… there is no promo yet`
  String get outlet_promo_not_found {
    return Intl.message(
      'Oops… there is no promo yet',
      name: 'outlet_promo_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Back to top`
  String get outlet_scroll_to_top {
    return Intl.message(
      'Back to top',
      name: 'outlet_scroll_to_top',
      desc: '',
      args: [],
    );
  }

  /// `Outlet Information`
  String get outlet_information {
    return Intl.message(
      'Outlet Information',
      name: 'outlet_information',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get outlet_open {
    return Intl.message(
      'Open',
      name: 'outlet_open',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get outlet_closed {
    return Intl.message(
      'Close',
      name: 'outlet_closed',
      desc: '',
      args: [],
    );
  }

  /// `Last update {param}`
  String outlet_last_update(Object param) {
    return Intl.message(
      'Last update $param',
      name: 'outlet_last_update',
      desc: '',
      args: [param],
    );
  }

  /// `Call CS`
  String get outlet_call {
    return Intl.message(
      'Call CS',
      name: 'outlet_call',
      desc: '',
      args: [],
    );
  }

  /// `Send Message`
  String get outlet_message {
    return Intl.message(
      'Send Message',
      name: 'outlet_message',
      desc: '',
      args: [],
    );
  }

  /// `See Location`
  String get outlet_location {
    return Intl.message(
      'See Location',
      name: 'outlet_location',
      desc: '',
      args: [],
    );
  }

  /// `Sorry the outlet is closed.`
  String get outlet_closed_title {
    return Intl.message(
      'Sorry the outlet is closed.',
      name: 'outlet_closed_title',
      desc: '',
      args: [],
    );
  }

  /// `Please contact the outlet for more information by clicking the outlet phone button or send a message below.`
  String get outlet_closed_desc {
    return Intl.message(
      'Please contact the outlet for more information by clicking the outlet phone button or send a message below.',
      name: 'outlet_closed_desc',
      desc: '',
      args: [],
    );
  }

  /// `Overview`
  String get outlet_overview {
    return Intl.message(
      'Overview',
      name: 'outlet_overview',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get outlet_menu {
    return Intl.message(
      'Menu',
      name: 'outlet_menu',
      desc: '',
      args: [],
    );
  }

  /// `Please select the order type`
  String get outlet_choose_order_type {
    return Intl.message(
      'Please select the order type',
      name: 'outlet_choose_order_type',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _profile {
    return Intl.message(
      '',
      name: '_profile',
      desc: '',
      args: [],
    );
  }

  /// `My Voucher`
  String get profile_voucher {
    return Intl.message(
      'My Voucher',
      name: 'profile_voucher',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get profile_history {
    return Intl.message(
      'History',
      name: 'profile_history',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get profile_address {
    return Intl.message(
      'Address',
      name: 'profile_address',
      desc: '',
      args: [],
    );
  }

  /// `Customer Service`
  String get profile_customer_service {
    return Intl.message(
      'Customer Service',
      name: 'profile_customer_service',
      desc: '',
      args: [],
    );
  }

  /// `About {param}`
  String profile_about(Object param) {
    return Intl.message(
      'About $param',
      name: 'profile_about',
      desc: '',
      args: [param],
    );
  }

  /// `App Version`
  String get profile_version {
    return Intl.message(
      'App Version',
      name: 'profile_version',
      desc: '',
      args: [],
    );
  }

  /// `Change PIN`
  String get profile_change_pin {
    return Intl.message(
      'Change PIN',
      name: 'profile_change_pin',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get profile_privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'profile_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Term of Service`
  String get profile_tos {
    return Intl.message(
      'Term of Service',
      name: 'profile_tos',
      desc: '',
      args: [],
    );
  }

  /// `Choose Language`
  String get profile_language {
    return Intl.message(
      'Choose Language',
      name: 'profile_language',
      desc: '',
      args: [],
    );
  }

  /// `Join {param}`
  String profile_join_digiresto(Object param) {
    return Intl.message(
      'Join $param',
      name: 'profile_join_digiresto',
      desc: '',
      args: [param],
    );
  }

  /// `Log Out`
  String get profile_logout {
    return Intl.message(
      'Log Out',
      name: 'profile_logout',
      desc: '',
      args: [],
    );
  }

  /// `Powered By Digiresto`
  String get powered_by_digiresto {
    return Intl.message(
      'Powered By Digiresto',
      name: 'powered_by_digiresto',
      desc: '',
      args: [],
    );
  }

  /// `Pesanggerahan`
  String get placeholder_outlet {
    return Intl.message(
      'Pesanggerahan',
      name: 'placeholder_outlet',
      desc: '',
      args: [],
    );
  }

  /// `Ninety-Nine`
  String get ninety_nine {
    return Intl.message(
      'Ninety-Nine',
      name: 'ninety_nine',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profil`
  String get profile_edit_title {
    return Intl.message(
      'Edit Profil',
      name: 'profile_edit_title',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get profile_edit_name {
    return Intl.message(
      'Name',
      name: 'profile_edit_name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get profile_edit_email {
    return Intl.message(
      'Email',
      name: 'profile_edit_email',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get profile_edit_phone {
    return Intl.message(
      'Phone Number',
      name: 'profile_edit_phone',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get profile_edit_action {
    return Intl.message(
      'Edit',
      name: 'profile_edit_action',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get profile_edit_save {
    return Intl.message(
      'Save',
      name: 'profile_edit_save',
      desc: '',
      args: [],
    );
  }

  /// `Success edit profile`
  String get profile_edit_success {
    return Intl.message(
      'Success edit profile',
      name: 'profile_edit_success',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _credit {
    return Intl.message(
      '',
      name: '_credit',
      desc: '',
      args: [],
    );
  }

  /// `{param} Credit`
  String credit_title(Object param) {
    return Intl.message(
      '$param Credit',
      name: 'credit_title',
      desc: '',
      args: [param],
    );
  }

  /// `My Credit`
  String get credit_me {
    return Intl.message(
      'My Credit',
      name: 'credit_me',
      desc: '',
      args: [],
    );
  }

  /// `Rp`
  String get credit_currency_code {
    return Intl.message(
      'Rp',
      name: 'credit_currency_code',
      desc: '',
      args: [],
    );
  }

  /// `Top Up Credit`
  String get credit_topup {
    return Intl.message(
      'Top Up Credit',
      name: 'credit_topup',
      desc: '',
      args: [],
    );
  }

  /// `Choose Payment Method`
  String get credit_topup_method {
    return Intl.message(
      'Choose Payment Method',
      name: 'credit_topup_method',
      desc: '',
      args: [],
    );
  }

  /// `Rp {param}`
  String credit_nominal(Object param) {
    return Intl.message(
      'Rp $param',
      name: 'credit_nominal',
      desc: '',
      args: [param],
    );
  }

  /// ``
  String get _topup {
    return Intl.message(
      '',
      name: '_topup',
      desc: '',
      args: [],
    );
  }

  /// `Top Up`
  String get topup_title {
    return Intl.message(
      'Top Up',
      name: 'topup_title',
      desc: '',
      args: [],
    );
  }

  /// `Choose Bank`
  String get topup_choose_bank {
    return Intl.message(
      'Choose Bank',
      name: 'topup_choose_bank',
      desc: '',
      args: [],
    );
  }

  /// `No bank options`
  String get topup_alert_empty_bank {
    return Intl.message(
      'No bank options',
      name: 'topup_alert_empty_bank',
      desc: '',
      args: [],
    );
  }

  /// `Top Up Credit via `
  String get topup_credit_via {
    return Intl.message(
      'Top Up Credit via ',
      name: 'topup_credit_via',
      desc: '',
      args: [],
    );
  }

  /// `Choose Amount`
  String get topup_credit_denum {
    return Intl.message(
      'Choose Amount',
      name: 'topup_credit_denum',
      desc: '',
      args: [],
    );
  }

  /// `Or enter manually`
  String get topup_credit_input {
    return Intl.message(
      'Or enter manually',
      name: 'topup_credit_input',
      desc: '',
      args: [],
    );
  }

  /// `minimal Rp 10.000`
  String get topup_credit_minimal {
    return Intl.message(
      'minimal Rp 10.000',
      name: 'topup_credit_minimal',
      desc: '',
      args: [],
    );
  }

  /// `The top up process will take ± 15 minutes and make sure the 3 digits last numbers in the nominal match`
  String get topup_confirmation {
    return Intl.message(
      'The top up process will take ± 15 minutes and make sure the 3 digits last numbers in the nominal match',
      name: 'topup_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `The minimum amount to top up balance is Rp 10,000!`
  String get topup_credit_input_alert {
    return Intl.message(
      'The minimum amount to top up balance is Rp 10,000!',
      name: 'topup_credit_input_alert',
      desc: '',
      args: [],
    );
  }

  /// `The total top up balance cannot be Rp. 0`
  String get topup_credit_input_alert_0 {
    return Intl.message(
      'The total top up balance cannot be Rp. 0',
      name: 'topup_credit_input_alert_0',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Information`
  String get topup_info_transfer {
    return Intl.message(
      'Transfer Information',
      name: 'topup_info_transfer',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get topup_copy_action {
    return Intl.message(
      'Copy',
      name: 'topup_copy_action',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _cart {
    return Intl.message(
      '',
      name: '_cart',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get cart_title {
    return Intl.message(
      'Order Details',
      name: 'cart_title',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get cart_address {
    return Intl.message(
      'Delivery Address',
      name: 'cart_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter address`
  String get cart_input_address {
    return Intl.message(
      'Enter address',
      name: 'cart_input_address',
      desc: '',
      args: [],
    );
  }

  /// `Voucher Code`
  String get cart_voucher_code {
    return Intl.message(
      'Voucher Code',
      name: 'cart_voucher_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter voucher code`
  String get cart_voucher_code_hint {
    return Intl.message(
      'Enter voucher code',
      name: 'cart_voucher_code_hint',
      desc: '',
      args: [],
    );
  }

  /// `Use`
  String get cart_voucher_code_use {
    return Intl.message(
      'Use',
      name: 'cart_voucher_code_use',
      desc: '',
      args: [],
    );
  }

  /// `My Voucher`
  String get cart_my_voucher {
    return Intl.message(
      'My Voucher',
      name: 'cart_my_voucher',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get cart_payment_method {
    return Intl.message(
      'Payment Method',
      name: 'cart_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get cart_delivery {
    return Intl.message(
      'Delivery',
      name: 'cart_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Choose`
  String get cart_choose {
    return Intl.message(
      'Choose',
      name: 'cart_choose',
      desc: '',
      args: [],
    );
  }

  /// `Payment Details`
  String get cart_payment_details {
    return Intl.message(
      'Payment Details',
      name: 'cart_payment_details',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get cart_order {
    return Intl.message(
      'Order',
      name: 'cart_order',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure want to delete {param} from the order?`
  String cart_delete_item(Object param) {
    return Intl.message(
      'Are you sure want to delete $param from the order?',
      name: 'cart_delete_item',
      desc: '',
      args: [param],
    );
  }

  /// `Are you sure want to delete order {param} from Favorite?`
  String cart_delete_favorite(Object param) {
    return Intl.message(
      'Are you sure want to delete order $param from Favorite?',
      name: 'cart_delete_favorite',
      desc: '',
      args: [param],
    );
  }

  /// `Are you sure you do not want to use the promo voucher {param} for this order?`
  String cart_delete_voucher(Object param) {
    return Intl.message(
      'Are you sure you do not want to use the promo voucher $param for this order?',
      name: 'cart_delete_voucher',
      desc: '',
      args: [param],
    );
  }

  /// `Edit`
  String get cart_edit {
    return Intl.message(
      'Edit',
      name: 'cart_edit',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get cart_product_free {
    return Intl.message(
      'Free',
      name: 'cart_product_free',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get cart_notes {
    return Intl.message(
      'Notes',
      name: 'cart_notes',
      desc: '',
      args: [],
    );
  }

  /// `Modifier`
  String get cart_modifier {
    return Intl.message(
      'Modifier',
      name: 'cart_modifier',
      desc: '',
      args: [],
    );
  }

  /// `Notes reach the limit of 120 characters`
  String get cart_notes_limit_alert {
    return Intl.message(
      'Notes reach the limit of 120 characters',
      name: 'cart_notes_limit_alert',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get cart_notes_apply {
    return Intl.message(
      'Save',
      name: 'cart_notes_apply',
      desc: '',
      args: [],
    );
  }

  /// `Use Schedule`
  String get cart_use_schedule {
    return Intl.message(
      'Use Schedule',
      name: 'cart_use_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get cart_schedule {
    return Intl.message(
      'Schedule',
      name: 'cart_schedule',
      desc: '',
      args: [],
    );
  }

  /// `Pax`
  String get cart_pax {
    return Intl.message(
      'Pax',
      name: 'cart_pax',
      desc: '',
      args: [],
    );
  }

  /// `Number of pax can not be empty!`
  String get cart_pax_alert {
    return Intl.message(
      'Number of pax can not be empty!',
      name: 'cart_pax_alert',
      desc: '',
      args: [],
    );
  }

  /// `Info Dine In`
  String get cart_info_dine_in {
    return Intl.message(
      'Info Dine In',
      name: 'cart_info_dine_in',
      desc: '',
      args: [],
    );
  }

  /// `Info Drive Thru`
  String get cart_info_drive_thru {
    return Intl.message(
      'Info Drive Thru',
      name: 'cart_info_drive_thru',
      desc: '',
      args: [],
    );
  }

  /// `Smoking / Non Smoking`
  String get cart_smoking_title {
    return Intl.message(
      'Smoking / Non Smoking',
      name: 'cart_smoking_title',
      desc: '',
      args: [],
    );
  }

  /// `Smoking`
  String get cart_smoking {
    return Intl.message(
      'Smoking',
      name: 'cart_smoking',
      desc: '',
      args: [],
    );
  }

  /// `Non Smoking`
  String get cart_non_smoking {
    return Intl.message(
      'Non Smoking',
      name: 'cart_non_smoking',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get cart_optional {
    return Intl.message(
      'Optional',
      name: 'cart_optional',
      desc: '',
      args: [],
    );
  }

  /// `Order Id`
  String get cart_order_id {
    return Intl.message(
      'Order Id',
      name: 'cart_order_id',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Date`
  String get cart_transaction_date {
    return Intl.message(
      'Transaction Date',
      name: 'cart_transaction_date',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account Name`
  String get cart_bank_acc_name {
    return Intl.message(
      'Bank Account Name',
      name: 'cart_bank_acc_name',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get cart_bank_name {
    return Intl.message(
      'Bank Name',
      name: 'cart_bank_name',
      desc: '',
      args: [],
    );
  }

  /// `Account Number`
  String get cart_bank_acc_number {
    return Intl.message(
      'Account Number',
      name: 'cart_bank_acc_number',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get cart_amount {
    return Intl.message(
      'Amount',
      name: 'cart_amount',
      desc: '',
      args: [],
    );
  }

  /// `Nomor VA`
  String get cart_va_number {
    return Intl.message(
      'Nomor VA',
      name: 'cart_va_number',
      desc: '',
      args: [],
    );
  }

  /// `Expired in`
  String get cart_va_expired_in {
    return Intl.message(
      'Expired in',
      name: 'cart_va_expired_in',
      desc: '',
      args: [],
    );
  }

  /// `Your {param} credit balance is insufficient for transaction, please top up first to continue payment.`
  String cart_balance_limit(Object param) {
    return Intl.message(
      'Your $param credit balance is insufficient for transaction, please top up first to continue payment.',
      name: 'cart_balance_limit',
      desc: '',
      args: [param],
    );
  }

  /// `Successfull order with transaction ID {param}, Please click OK to continue to payment process %2$s`
  String cart_order_success_with_payment(Object param) {
    return Intl.message(
      'Successfull order with transaction ID $param, Please click OK to continue to payment process %2\$s',
      name: 'cart_order_success_with_payment',
      desc: '',
      args: [param],
    );
  }

  /// `Receipt Code`
  String get cart_receipt_code {
    return Intl.message(
      'Receipt Code',
      name: 'cart_receipt_code',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Transaction Id`
  String get cart_delivery_transaction_id {
    return Intl.message(
      'Delivery Transaction Id',
      name: 'cart_delivery_transaction_id',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Booking Code`
  String get cart_delivery_booking_code {
    return Intl.message(
      'Delivery Booking Code',
      name: 'cart_delivery_booking_code',
      desc: '',
      args: [],
    );
  }

  /// `Minimum transaction {param} needed.`
  String cart_minimum_transaction_alert(Object param) {
    return Intl.message(
      'Minimum transaction $param needed.',
      name: 'cart_minimum_transaction_alert',
      desc: '',
      args: [param],
    );
  }

  /// `{param} can not be empty.`
  String cart_alert_order_info(Object param) {
    return Intl.message(
      '$param can not be empty.',
      name: 'cart_alert_order_info',
      desc: '',
      args: [param],
    );
  }

  /// `Payment`
  String get cart_billing_payment {
    return Intl.message(
      'Payment',
      name: 'cart_billing_payment',
      desc: '',
      args: [],
    );
  }

  /// `done`
  String get cart_done {
    return Intl.message(
      'done',
      name: 'cart_done',
      desc: '',
      args: [],
    );
  }

  /// `Voucher code {param} is invalid.`
  String cart_voucher_invalid(Object param) {
    return Intl.message(
      'Voucher code $param is invalid.',
      name: 'cart_voucher_invalid',
      desc: '',
      args: [param],
    );
  }

  /// `Want to add more ?`
  String get cart_add_other_title {
    return Intl.message(
      'Want to add more ?',
      name: 'cart_add_other_title',
      desc: '',
      args: [],
    );
  }

  /// `Add more product`
  String get cart_add_other_desc {
    return Intl.message(
      'Add more product',
      name: 'cart_add_other_desc',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get cart_add_other_action {
    return Intl.message(
      'Add',
      name: 'cart_add_other_action',
      desc: '',
      args: [],
    );
  }

  /// `Your product {param} is unavailable or sold out.`
  String cart_product_empty(Object param) {
    return Intl.message(
      'Your product $param is unavailable or sold out.',
      name: 'cart_product_empty',
      desc: '',
      args: [param],
    );
  }

  /// `Vehicle type`
  String get cart_car_type_title {
    return Intl.message(
      'Vehicle type',
      name: 'cart_car_type_title',
      desc: '',
      args: [],
    );
  }

  /// `Motorcycle/Car`
  String get cart_car_type_hint {
    return Intl.message(
      'Motorcycle/Car',
      name: 'cart_car_type_hint',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle Color`
  String get cart_car_color_title {
    return Intl.message(
      'Vehicle Color',
      name: 'cart_car_color_title',
      desc: '',
      args: [],
    );
  }

  /// `Your vehicle color`
  String get cart_car_color_hint {
    return Intl.message(
      'Your vehicle color',
      name: 'cart_car_color_hint',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle license plat`
  String get cart_car_number_title {
    return Intl.message(
      'Vehicle license plat',
      name: 'cart_car_number_title',
      desc: '',
      args: [],
    );
  }

  /// `B **** XXX`
  String get cart_car_number_hint {
    return Intl.message(
      'B **** XXX',
      name: 'cart_car_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle type can not be empty!`
  String get cart_car_type_alert {
    return Intl.message(
      'Vehicle type can not be empty!',
      name: 'cart_car_type_alert',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle color can not be empty!`
  String get cart_car_color_alert {
    return Intl.message(
      'Vehicle color can not be empty!',
      name: 'cart_car_color_alert',
      desc: '',
      args: [],
    );
  }

  /// `Outlet`
  String get cart_outlet {
    return Intl.message(
      'Outlet',
      name: 'cart_outlet',
      desc: '',
      args: [],
    );
  }

  /// `Order type`
  String get cart_order_type {
    return Intl.message(
      'Order type',
      name: 'cart_order_type',
      desc: '',
      args: [],
    );
  }

  /// `Delivery location`
  String get cart_delivery_address {
    return Intl.message(
      'Delivery location',
      name: 'cart_delivery_address',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get cart_order_title {
    return Intl.message(
      'Order',
      name: 'cart_order_title',
      desc: '',
      args: [],
    );
  }

  /// `Continue Payment?`
  String get cart_transaction_pending_title {
    return Intl.message(
      'Continue Payment?',
      name: 'cart_transaction_pending_title',
      desc: '',
      args: [],
    );
  }

  /// `You have transaction {param1} which you have not paid for {param2}. If you continue this payment, that transaction will be cancelled.`
  String cart_transaction_pending_alert(Object param1, Object param2) {
    return Intl.message(
      'You have transaction $param1 which you have not paid for $param2. If you continue this payment, that transaction will be cancelled.',
      name: 'cart_transaction_pending_alert',
      desc: '',
      args: [param1, param2],
    );
  }

  /// `Continue Payment`
  String get cart_transaction_pending_next {
    return Intl.message(
      'Continue Payment',
      name: 'cart_transaction_pending_next',
      desc: '',
      args: [],
    );
  }

  /// `Change Payment Method`
  String get cart_transaction_change_payment {
    return Intl.message(
      'Change Payment Method',
      name: 'cart_transaction_change_payment',
      desc: '',
      args: [],
    );
  }

  /// `Location Point Not Found!`
  String get cart_address_not_valid_title {
    return Intl.message(
      'Location Point Not Found!',
      name: 'cart_address_not_valid_title',
      desc: '',
      args: [],
    );
  }

  /// `The location point of your address was not found so we are unable to display the available courier options.\nPlease reset your address location correctly`
  String get cart_address_not_valid {
    return Intl.message(
      'The location point of your address was not found so we are unable to display the available courier options.\nPlease reset your address location correctly',
      name: 'cart_address_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `Set Address Location`
  String get cart_address_not_valid_action {
    return Intl.message(
      'Set Address Location',
      name: 'cart_address_not_valid_action',
      desc: '',
      args: [],
    );
  }

  /// `We need to update your cart data, Click OK to continue`
  String get cart_failed_update_data {
    return Intl.message(
      'We need to update your cart data, Click OK to continue',
      name: 'cart_failed_update_data',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _voucher {
    return Intl.message(
      '',
      name: '_voucher',
      desc: '',
      args: [],
    );
  }

  /// `Voucher is unavailable`
  String get voucher_empty {
    return Intl.message(
      'Voucher is unavailable',
      name: 'voucher_empty',
      desc: '',
      args: [],
    );
  }

  /// `Voucher is invalid to the payment method`
  String get voucher_not_valid_with_payment_method {
    return Intl.message(
      'Voucher is invalid to the payment method',
      name: 'voucher_not_valid_with_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Voucher code is already used`
  String get voucher_already_used {
    return Intl.message(
      'Voucher code is already used',
      name: 'voucher_already_used',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _address {
    return Intl.message(
      '',
      name: '_address',
      desc: '',
      args: [],
    );
  }

  /// `Make the primary address`
  String get address_set_main {
    return Intl.message(
      'Make the primary address',
      name: 'address_set_main',
      desc: '',
      args: [],
    );
  }

  /// `Select Address`
  String get address_search_address {
    return Intl.message(
      'Select Address',
      name: 'address_search_address',
      desc: '',
      args: [],
    );
  }

  /// `Current location`
  String get address_use_current_location {
    return Intl.message(
      'Current location',
      name: 'address_use_current_location',
      desc: '',
      args: [],
    );
  }

  /// `Select location`
  String get address_select_location {
    return Intl.message(
      'Select location',
      name: 'address_select_location',
      desc: '',
      args: [],
    );
  }

  /// `Detail Location`
  String get address_location_detail {
    return Intl.message(
      'Detail Location',
      name: 'address_location_detail',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get address_save {
    return Intl.message(
      'Save',
      name: 'address_save',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get address_name {
    return Intl.message(
      'Name',
      name: 'address_name',
      desc: '',
      args: [],
    );
  }

  /// `Saved address`
  String get address_saved {
    return Intl.message(
      'Saved address',
      name: 'address_saved',
      desc: '',
      args: [],
    );
  }

  /// `Default address`
  String get address_default {
    return Intl.message(
      'Default address',
      name: 'address_default',
      desc: '',
      args: [],
    );
  }

  /// `Set default`
  String get address_default_flag {
    return Intl.message(
      'Set default',
      name: 'address_default_flag',
      desc: '',
      args: [],
    );
  }

  /// `Add New`
  String get address_add {
    return Intl.message(
      'Add New',
      name: 'address_add',
      desc: '',
      args: [],
    );
  }

  /// `View All`
  String get address_view_all {
    return Intl.message(
      'View All',
      name: 'address_view_all',
      desc: '',
      args: [],
    );
  }

  /// `All address`
  String get address_all {
    return Intl.message(
      'All address',
      name: 'address_all',
      desc: '',
      args: [],
    );
  }

  /// `Set destination location`
  String get address_set_destionation_location {
    return Intl.message(
      'Set destination location',
      name: 'address_set_destionation_location',
      desc: '',
      args: [],
    );
  }

  /// `Click to set destination`
  String get address_set_destionation {
    return Intl.message(
      'Click to set destination',
      name: 'address_set_destionation',
      desc: '',
      args: [],
    );
  }

  /// `Use This Location`
  String get address_use_this_location {
    return Intl.message(
      'Use This Location',
      name: 'address_use_this_location',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address_delete {
    return Intl.message(
      'Address',
      name: 'address_delete',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure want to delete {param} ?`
  String address_delete_confirmation(Object param) {
    return Intl.message(
      'Are you sure want to delete $param ?',
      name: 'address_delete_confirmation',
      desc: '',
      args: [param],
    );
  }

  /// `Delete`
  String get address_delete_action {
    return Intl.message(
      'Delete',
      name: 'address_delete_action',
      desc: '',
      args: [],
    );
  }

  /// `Enter address`
  String get address_edit_title {
    return Intl.message(
      'Enter address',
      name: 'address_edit_title',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_product detail' key

  /// `Menu Variant Options`
  String get product_choose_variant {
    return Intl.message(
      'Menu Variant Options',
      name: 'product_choose_variant',
      desc: '',
      args: [],
    );
  }

  /// `You have reached the maximum purchase for this product`
  String get product_detail_max_item {
    return Intl.message(
      'You have reached the maximum purchase for this product',
      name: 'product_detail_max_item',
      desc: '',
      args: [],
    );
  }

  /// `Max. purchase of this item 999 items, please reduce your purchase!`
  String get product_detail_max_item_999 {
    return Intl.message(
      'Max. purchase of this item 999 items, please reduce your purchase!',
      name: 'product_detail_max_item_999',
      desc: '',
      args: [],
    );
  }

  /// `This product has reached its maximum purchase for {param} items.`
  String product_detail_max_item_alert(Object param) {
    return Intl.message(
      'This product has reached its maximum purchase for $param items.',
      name: 'product_detail_max_item_alert',
      desc: '',
      args: [param],
    );
  }

  /// `Sold Out`
  String get product_detail_sold_out {
    return Intl.message(
      'Sold Out',
      name: 'product_detail_sold_out',
      desc: '',
      args: [],
    );
  }

  /// `Can not be empty`
  String get product_detail_counter_alert {
    return Intl.message(
      'Can not be empty',
      name: 'product_detail_counter_alert',
      desc: '',
      args: [],
    );
  }

  /// `Minimum purchase of 1 product`
  String get product_detail_counter_alert_0 {
    return Intl.message(
      'Minimum purchase of 1 product',
      name: 'product_detail_counter_alert_0',
      desc: '',
      args: [],
    );
  }

  /// `The product you selected is invalid, please select another menu.`
  String get product_detail_alert {
    return Intl.message(
      'The product you selected is invalid, please select another menu.',
      name: 'product_detail_alert',
      desc: '',
      args: [],
    );
  }

  /// `Product Description`
  String get product_detail_description_title {
    return Intl.message(
      'Product Description',
      name: 'product_detail_description_title',
      desc: '',
      args: [],
    );
  }

  /// `The number of menus you ordered has reached the limit {param} in one transaction.`
  String product_detail_alert_transaction_limit(Object param) {
    return Intl.message(
      'The number of menus you ordered has reached the limit $param in one transaction.',
      name: 'product_detail_alert_transaction_limit',
      desc: '',
      args: [param],
    );
  }

  /// `Product selection is not in accordance with the provisions`
  String get product_detail_alert_min_max_quantity {
    return Intl.message(
      'Product selection is not in accordance with the provisions',
      name: 'product_detail_alert_min_max_quantity',
      desc: '',
      args: [],
    );
  }

  /// `Add to cart`
  String get add_to_cart {
    return Intl.message(
      'Add to cart',
      name: 'add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buy_now {
    return Intl.message(
      'Buy Now',
      name: 'buy_now',
      desc: '',
      args: [],
    );
  }

  /// `Update cart`
  String get update_to_cart {
    return Intl.message(
      'Update cart',
      name: 'update_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Product is added to your cart.`
  String get add_to_cart_success {
    return Intl.message(
      'Product is added to your cart.',
      name: 'add_to_cart_success',
      desc: '',
      args: [],
    );
  }

  /// `You have not choose payment method, please choose payment method first to access this page.`
  String get user_not_choose_payment {
    return Intl.message(
      'You have not choose payment method, please choose payment method first to access this page.',
      name: 'user_not_choose_payment',
      desc: '',
      args: [],
    );
  }

  /// `Voucher is unavailable`
  String get cart_my_voucher_empty {
    return Intl.message(
      'Voucher is unavailable',
      name: 'cart_my_voucher_empty',
      desc: '',
      args: [],
    );
  }

  /// `Payment method is unavailable`
  String get cart_payment_method_empty {
    return Intl.message(
      'Payment method is unavailable',
      name: 'cart_payment_method_empty',
      desc: '',
      args: [],
    );
  }

  /// `Delivery is unavailable`
  String get cart_delivery_empty {
    return Intl.message(
      'Delivery is unavailable',
      name: 'cart_delivery_empty',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure with this order?`
  String get order_confirmation_alert {
    return Intl.message(
      'Are you sure with this order?',
      name: 'order_confirmation_alert',
      desc: '',
      args: [],
    );
  }

  /// `You have not choose delivery method, please choose delivery method first to continue placing the order.`
  String get user_not_choose_delivery {
    return Intl.message(
      'You have not choose delivery method, please choose delivery method first to continue placing the order.',
      name: 'user_not_choose_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Email`
  String get errorInvalidEmail {
    return Intl.message(
      'Invalid Email',
      name: 'errorInvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Name`
  String get errorInvalidName {
    return Intl.message(
      'Invalid Name',
      name: 'errorInvalidName',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Otp`
  String get errorInvalidOtp {
    return Intl.message(
      'Invalid Otp',
      name: 'errorInvalidOtp',
      desc: '',
      args: [],
    );
  }

  /// `Passcode tidak boleh kurang atau lebih dari 6 digit`
  String get errorValidPasscode {
    return Intl.message(
      'Passcode tidak boleh kurang atau lebih dari 6 digit',
      name: 'errorValidPasscode',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _Nota {
    return Intl.message(
      '',
      name: '_Nota',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Status`
  String get nota_title {
    return Intl.message(
      'Transaction Status',
      name: 'nota_title',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!`
  String get nota_success {
    return Intl.message(
      'Congratulations!',
      name: 'nota_success',
      desc: '',
      args: [],
    );
  }

  /// `Pending Payment`
  String get nota_pending_payment {
    return Intl.message(
      'Pending Payment',
      name: 'nota_pending_payment',
      desc: '',
      args: [],
    );
  }

  /// `Payment failed`
  String get nota_failed {
    return Intl.message(
      'Payment failed',
      name: 'nota_failed',
      desc: '',
      args: [],
    );
  }

  /// `Your Order is being processed.`
  String get nota_waiting_desc {
    return Intl.message(
      'Your Order is being processed.',
      name: 'nota_waiting_desc',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been received by outlet.`
  String get nota_process_desc {
    return Intl.message(
      'Your order has been received by outlet.',
      name: 'nota_process_desc',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been rejected by outlet.`
  String get nota_reject_desc {
    return Intl.message(
      'Your order has been rejected by outlet.',
      name: 'nota_reject_desc',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been cancelled by outlet.`
  String get nota_cancel_desc {
    return Intl.message(
      'Your order has been cancelled by outlet.',
      name: 'nota_cancel_desc',
      desc: '',
      args: [],
    );
  }

  /// `Your order is ready to deliver.`
  String get nota_ready_desc {
    return Intl.message(
      'Your order is ready to deliver.',
      name: 'nota_ready_desc',
      desc: '',
      args: [],
    );
  }

  /// `Your order is completed.`
  String get nota_done_desc {
    return Intl.message(
      'Your order is completed.',
      name: 'nota_done_desc',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been completed by the system.`
  String get nota_auto_done_desc {
    return Intl.message(
      'Your order has been completed by the system.',
      name: 'nota_auto_done_desc',
      desc: '',
      args: [],
    );
  }

  /// `Payment Success`
  String get nota_payment_success {
    return Intl.message(
      'Payment Success',
      name: 'nota_payment_success',
      desc: '',
      args: [],
    );
  }

  /// `Receipt Code:`
  String get nota_receipt_code {
    return Intl.message(
      'Receipt Code:',
      name: 'nota_receipt_code',
      desc: '',
      args: [],
    );
  }

  /// `Total Payment`
  String get nota_total_payment {
    return Intl.message(
      'Total Payment',
      name: 'nota_total_payment',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your order, we will immediately process your order. Please keep the receipt and show to the restaurant.`
  String get nota_thanks_order {
    return Intl.message(
      'Thank you for your order, we will immediately process your order. Please keep the receipt and show to the restaurant.',
      name: 'nota_thanks_order',
      desc: '',
      args: [],
    );
  }

  /// `Add to Favorites`
  String get nota_add_to_favourite {
    return Intl.message(
      'Add to Favorites',
      name: 'nota_add_to_favourite',
      desc: '',
      args: [],
    );
  }

  /// `Check Payment Status`
  String get nota_check_status_payment {
    return Intl.message(
      'Check Payment Status',
      name: 'nota_check_status_payment',
      desc: '',
      args: [],
    );
  }

  /// `Go to Purchase history`
  String get nota_history_payment {
    return Intl.message(
      'Go to Purchase history',
      name: 'nota_history_payment',
      desc: '',
      args: [],
    );
  }

  /// `Share transaction receipt`
  String get nota_share_nota {
    return Intl.message(
      'Share transaction receipt',
      name: 'nota_share_nota',
      desc: '',
      args: [],
    );
  }

  /// `Favourite added successfully`
  String get add_favorite_success {
    return Intl.message(
      'Favourite added successfully',
      name: 'add_favorite_success',
      desc: '',
      args: [],
    );
  }

  /// `Failed to save image, please try again.`
  String get nota_share_nota_failed {
    return Intl.message(
      'Failed to save image, please try again.',
      name: 'nota_share_nota_failed',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _FAVORITE {
    return Intl.message(
      '',
      name: '_FAVORITE',
      desc: '',
      args: [],
    );
  }

  /// `Favorite`
  String get favorite_title {
    return Intl.message(
      'Favorite',
      name: 'favorite_title',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get favorite_rebuy {
    return Intl.message(
      'Order',
      name: 'favorite_rebuy',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get favorite_delete {
    return Intl.message(
      'Delete',
      name: 'favorite_delete',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to re-order this?`
  String get favorite_reorder {
    return Intl.message(
      'Do you want to re-order this?',
      name: 'favorite_reorder',
      desc: '',
      args: [],
    );
  }

  /// `Start Order`
  String get favorite_order {
    return Intl.message(
      'Start Order',
      name: 'favorite_order',
      desc: '',
      args: [],
    );
  }

  /// `No Favourite`
  String get favorite_empty {
    return Intl.message(
      'No Favourite',
      name: 'favorite_empty',
      desc: '',
      args: [],
    );
  }

  /// `Please start your order with {param}`
  String text_mulai_pesan(Object param) {
    return Intl.message(
      'Please start your order with $param',
      name: 'text_mulai_pesan',
      desc: '',
      args: [param],
    );
  }

  /// `There is an order in your cart at this time, do you still want to continue ordering this order? Your current cart will be deleted.`
  String get favorite_sudah_ada_cart {
    return Intl.message(
      'There is an order in your cart at this time, do you still want to continue ordering this order? Your current cart will be deleted.',
      name: 'favorite_sudah_ada_cart',
      desc: '',
      args: [],
    );
  }

  /// `Favorite deleted successfully`
  String get favorite_dihapus {
    return Intl.message(
      'Favorite deleted successfully',
      name: 'favorite_dihapus',
      desc: '',
      args: [],
    );
  }

  /// `Favourite Details`
  String get favourite_title_detail {
    return Intl.message(
      'Favourite Details',
      name: 'favourite_title_detail',
      desc: '',
      args: [],
    );
  }

  /// `Total Payment`
  String get favourite_total_payment {
    return Intl.message(
      'Total Payment',
      name: 'favourite_total_payment',
      desc: '',
      args: [],
    );
  }

  /// `Check Availability`
  String get favorite_check {
    return Intl.message(
      'Check Availability',
      name: 'favorite_check',
      desc: '',
      args: [],
    );
  }

  /// `Product is ready`
  String get favorite_ready_to_order {
    return Intl.message(
      'Product is ready',
      name: 'favorite_ready_to_order',
      desc: '',
      args: [],
    );
  }

  /// `Product not available`
  String get favorite_stock_empty {
    return Intl.message(
      'Product not available',
      name: 'favorite_stock_empty',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _History {
    return Intl.message(
      '',
      name: '_History',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history_title {
    return Intl.message(
      'History',
      name: 'history_title',
      desc: '',
      args: [],
    );
  }

  /// `No History`
  String get history_empty_title {
    return Intl.message(
      'No History',
      name: 'history_empty_title',
      desc: '',
      args: [],
    );
  }

  /// `Receipt Code: {param}`
  String history_receipt_code(Object param) {
    return Intl.message(
      'Receipt Code: $param',
      name: 'history_receipt_code',
      desc: '',
      args: [param],
    );
  }

  /// `Receipt Code`
  String get history_receipt {
    return Intl.message(
      'Receipt Code',
      name: 'history_receipt',
      desc: '',
      args: [],
    );
  }

  /// `Order Type`
  String get history_order_type {
    return Intl.message(
      'Order Type',
      name: 'history_order_type',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Status`
  String get history_status {
    return Intl.message(
      'Transaction Status',
      name: 'history_status',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get history_total_payment {
    return Intl.message(
      'Total',
      name: 'history_total_payment',
      desc: '',
      args: [],
    );
  }

  /// `History Details`
  String get detail_history {
    return Intl.message(
      'History Details',
      name: 'detail_history',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Status`
  String get delivery_status {
    return Intl.message(
      'Delivery Status',
      name: 'delivery_status',
      desc: '',
      args: [],
    );
  }

  /// `List Order`
  String get text_list_order {
    return Intl.message(
      'List Order',
      name: 'text_list_order',
      desc: '',
      args: [],
    );
  }

  /// `Outlet {param}`
  String history_outlet_name(Object param) {
    return Intl.message(
      'Outlet $param',
      name: 'history_outlet_name',
      desc: '',
      args: [param],
    );
  }

  /// `Your order is cancelled`
  String get history_order_already_canceled {
    return Intl.message(
      'Your order is cancelled',
      name: 'history_order_already_canceled',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been completed`
  String get history_order_already_done {
    return Intl.message(
      'Your order has been completed',
      name: 'history_order_already_done',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure your order has been received?`
  String get history_order_asking_done {
    return Intl.message(
      'Are you sure your order has been received?',
      name: 'history_order_asking_done',
      desc: '',
      args: [],
    );
  }

  /// `Order completed`
  String get history_order_done {
    return Intl.message(
      'Order completed',
      name: 'history_order_done',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to cancel order?`
  String get history_order_asking_cancel {
    return Intl.message(
      'Do you want to cancel order?',
      name: 'history_order_asking_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Order`
  String get history_order_cancel {
    return Intl.message(
      'Cancel Order',
      name: 'history_order_cancel',
      desc: '',
      args: [],
    );
  }

  /// `The order is being sent by the outlet courier`
  String get history_order_sending {
    return Intl.message(
      'The order is being sent by the outlet courier',
      name: 'history_order_sending',
      desc: '',
      args: [],
    );
  }

  /// `Purchase\nProcessed`
  String get history_process {
    return Intl.message(
      'Purchase\nProcessed',
      name: 'history_process',
      desc: '',
      args: [],
    );
  }

  /// `Purchase\nComplete`
  String get history_done {
    return Intl.message(
      'Purchase\nComplete',
      name: 'history_done',
      desc: '',
      args: [],
    );
  }

  /// `Waiting\nfor payment`
  String get history_pending_payment {
    return Intl.message(
      'Waiting\nfor payment',
      name: 'history_pending_payment',
      desc: '',
      args: [],
    );
  }

  /// `No Pending Payment`
  String get history_pending_payment_empty {
    return Intl.message(
      'No Pending Payment',
      name: 'history_pending_payment_empty',
      desc: '',
      args: [],
    );
  }

  /// `Pay before {param}`
  String history_pending_expired(Object param) {
    return Intl.message(
      'Pay before $param',
      name: 'history_pending_expired',
      desc: '',
      args: [param],
    );
  }

  /// `Time expired`
  String get history_pending_already_expired {
    return Intl.message(
      'Time expired',
      name: 'history_pending_already_expired',
      desc: '',
      args: [],
    );
  }

  /// `The transaction payment time has expired.`
  String get history_pending_inquiry_expired {
    return Intl.message(
      'The transaction payment time has expired.',
      name: 'history_pending_inquiry_expired',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for payment, Please make payment according to the terms`
  String get history_pending_inquiry_pending {
    return Intl.message(
      'Waiting for payment, Please make payment according to the terms',
      name: 'history_pending_inquiry_pending',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get history_pending_total {
    return Intl.message(
      'Amount',
      name: 'history_pending_total',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get history_pending_payment_method {
    return Intl.message(
      'Payment method',
      name: 'history_pending_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Virtual Account Number`
  String get history_pending_va_number {
    return Intl.message(
      'Virtual Account Number',
      name: 'history_pending_va_number',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get history_pending_detail {
    return Intl.message(
      'Detail',
      name: 'history_pending_detail',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get history_pending_cancel {
    return Intl.message(
      'Cancel',
      name: 'history_pending_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel a transaction with a number {param} ?`
  String history_pending_cancel_alert(Object param) {
    return Intl.message(
      'Are you sure you want to cancel a transaction with a number $param ?',
      name: 'history_pending_cancel_alert',
      desc: '',
      args: [param],
    );
  }

  /// `Check/Make Payment`
  String get history_pending_make_payment {
    return Intl.message(
      'Check/Make Payment',
      name: 'history_pending_make_payment',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel this Top Up ?`
  String get history_topup_cancel_alert {
    return Intl.message(
      'Are you sure you want to cancel this Top Up ?',
      name: 'history_topup_cancel_alert',
      desc: '',
      args: [],
    );
  }

  /// `Order received`
  String get history_order_received {
    return Intl.message(
      'Order received',
      name: 'history_order_received',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get history_reorder {
    return Intl.message(
      'Reorder',
      name: 'history_reorder',
      desc: '',
      args: [],
    );
  }

  /// `Select Location`
  String get history_reorder_address {
    return Intl.message(
      'Select Location',
      name: 'history_reorder_address',
      desc: '',
      args: [],
    );
  }

  /// `Please select a food delivery location:`
  String get history_reorder_address_desc {
    return Intl.message(
      'Please select a food delivery location:',
      name: 'history_reorder_address_desc',
      desc: '',
      args: [],
    );
  }

  /// `Primary`
  String get history_reorder_address_default {
    return Intl.message(
      'Primary',
      name: 'history_reorder_address_default',
      desc: '',
      args: [],
    );
  }

  /// `I am cancelling my order because …`
  String get history_order_cancel_desc {
    return Intl.message(
      'I am cancelling my order because …',
      name: 'history_order_cancel_desc',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get history_order_cancel_action {
    return Intl.message(
      'Send',
      name: 'history_order_cancel_action',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get history_order_cancel_reason_other {
    return Intl.message(
      'Other',
      name: 'history_order_cancel_reason_other',
      desc: '',
      args: [],
    );
  }

  /// `Enter other reasons`
  String get history_order_cancel_input_reason {
    return Intl.message(
      'Enter other reasons',
      name: 'history_order_cancel_input_reason',
      desc: '',
      args: [],
    );
  }

  /// `Please enter other reasons.`
  String get history_order_cancel_input_reason_alert {
    return Intl.message(
      'Please enter other reasons.',
      name: 'history_order_cancel_input_reason_alert',
      desc: '',
      args: [],
    );
  }

  /// `See details`
  String get history_detail_tracking_url {
    return Intl.message(
      'See details',
      name: 'history_detail_tracking_url',
      desc: '',
      args: [],
    );
  }

  /// `Shipping address`
  String get history_detail_delivery_address {
    return Intl.message(
      'Shipping address',
      name: 'history_detail_delivery_address',
      desc: '',
      args: [],
    );
  }

  /// `APLIKASI Digiresto [Android] - DAMCORP`
  String get contact_email_subject {
    return Intl.message(
      'APLIKASI Digiresto [Android] - DAMCORP',
      name: 'contact_email_subject',
      desc: '',
      args: [],
    );
  }

  /// `Send email…`
  String get contact_share_email_title {
    return Intl.message(
      'Send email…',
      name: 'contact_share_email_title',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _Home {
    return Intl.message(
      '',
      name: '_Home',
      desc: '',
      args: [],
    );
  }

  /// `See all promos`
  String get home_all_promo {
    return Intl.message(
      'See all promos',
      name: 'home_all_promo',
      desc: '',
      args: [],
    );
  }

  /// `Favourite restaurants around you`
  String get home_favourite_resto {
    return Intl.message(
      'Favourite restaurants around you',
      name: 'home_favourite_resto',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get home_see_all {
    return Intl.message(
      'See All',
      name: 'home_see_all',
      desc: '',
      args: [],
    );
  }

  /// `Please choose order type`
  String get home_select_order_type {
    return Intl.message(
      'Please choose order type',
      name: 'home_select_order_type',
      desc: '',
      args: [],
    );
  }

  /// `Notification is inactive. Please allow notifications at Setting menu to receive update.`
  String get home_notification_disabled {
    return Intl.message(
      'Notification is inactive. Please allow notifications at Setting menu to receive update.',
      name: 'home_notification_disabled',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get txt_search {
    return Intl.message(
      'Search',
      name: 'txt_search',
      desc: '',
      args: [],
    );
  }

  /// `Search Food`
  String get txt_search_food {
    return Intl.message(
      'Search Food',
      name: 'txt_search_food',
      desc: '',
      args: [],
    );
  }

  /// `Reload image`
  String get image_reload {
    return Intl.message(
      'Reload image',
      name: 'image_reload',
      desc: '',
      args: [],
    );
  }

  /// `back icon`
  String get img_action_back {
    return Intl.message(
      'back icon',
      name: 'img_action_back',
      desc: '',
      args: [],
    );
  }

  /// `Be sure your phone number is correct for verification purposes`
  String get text_register {
    return Intl.message(
      'Be sure your phone number is correct for verification purposes',
      name: 'text_register',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get login_input_your_mobile_number {
    return Intl.message(
      'Enter your phone number',
      name: 'login_input_your_mobile_number',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect number`
  String get login_input_your_mobile_number_is_wrong {
    return Intl.message(
      'Incorrect number',
      name: 'login_input_your_mobile_number_is_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Check your phone number`
  String get login_check_your_mobile_number {
    return Intl.message(
      'Check your phone number',
      name: 'login_check_your_mobile_number',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_Input OTP Screen' key

  /// `Please enter 6 digits of verification code sent to your Whatsapp at`
  String get input_otp_desc {
    return Intl.message(
      'Please enter 6 digits of verification code sent to your Whatsapp at',
      name: 'input_otp_desc',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the latest code to continue.`
  String get input_otp_desc2 {
    return Intl.message(
      'Please enter the latest code to continue.',
      name: 'input_otp_desc2',
      desc: '',
      args: [],
    );
  }

  /// `Whatsapp`
  String get input_otp_desc_whatsapp {
    return Intl.message(
      'Whatsapp',
      name: 'input_otp_desc_whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Resend ({param})`
  String input_otp_resend_code(Object param) {
    return Intl.message(
      'Resend ($param)',
      name: 'input_otp_resend_code',
      desc: '',
      args: [param],
    );
  }

  // skipped getter for the '_Input PIN Screen' key

  /// `Insert 6 digit PIN`
  String get input_pin_desc {
    return Intl.message(
      'Insert 6 digit PIN',
      name: 'input_pin_desc',
      desc: '',
      args: [],
    );
  }

  /// `Insert new 6 digit PIN `
  String get input_pin_new_desc {
    return Intl.message(
      'Insert new 6 digit PIN ',
      name: 'input_pin_new_desc',
      desc: '',
      args: [],
    );
  }

  /// `Insert again the new 6 digit PIN `
  String get input_pin_retype_desc {
    return Intl.message(
      'Insert again the new 6 digit PIN ',
      name: 'input_pin_retype_desc',
      desc: '',
      args: [],
    );
  }

  /// `PIN you entered not match`
  String get input_pin_retype_alert {
    return Intl.message(
      'PIN you entered not match',
      name: 'input_pin_retype_alert',
      desc: '',
      args: [],
    );
  }

  /// `Your PIN was successfully changed.`
  String get input_pin_success_change {
    return Intl.message(
      'Your PIN was successfully changed.',
      name: 'input_pin_success_change',
      desc: '',
      args: [],
    );
  }

  /// `Forgot PIN`
  String get input_forgot_pin {
    return Intl.message(
      'Forgot PIN',
      name: 'input_forgot_pin',
      desc: '',
      args: [],
    );
  }

  /// `If you are not receiving the code, click Resend.`
  String get text_kirim_ulang {
    return Intl.message(
      'If you are not receiving the code, click Resend.',
      name: 'text_kirim_ulang',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get lbl_login {
    return Intl.message(
      'Login',
      name: 'lbl_login',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_Register Screen' key

  /// `Register`
  String get register_title {
    return Intl.message(
      'Register',
      name: 'register_title',
      desc: '',
      args: [],
    );
  }

  /// `Profile Info`
  String get register_info_profile {
    return Intl.message(
      'Profile Info',
      name: 'register_info_profile',
      desc: '',
      args: [],
    );
  }

  /// `Create Login PIN`
  String get register_create_pin_login {
    return Intl.message(
      'Create Login PIN',
      name: 'register_create_pin_login',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get menu_next {
    return Intl.message(
      'Next',
      name: 'menu_next',
      desc: '',
      args: [],
    );
  }

  /// `With clicking continue, I agree to the terms and conditions of Digiresto.`
  String get register_approval {
    return Intl.message(
      'With clicking continue, I agree to the terms and conditions of Digiresto.',
      name: 'register_approval',
      desc: '',
      args: [],
    );
  }

  /// `Please agree to the terms and conditions first`
  String get register_approval_alert {
    return Intl.message(
      'Please agree to the terms and conditions first',
      name: 'register_approval_alert',
      desc: '',
      args: [],
    );
  }

  /// `Enter your PIN`
  String get register_input_pin {
    return Intl.message(
      'Enter your PIN',
      name: 'register_input_pin',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter your PIN`
  String get register_input_pin_validate {
    return Intl.message(
      'Re-enter your PIN',
      name: 'register_input_pin_validate',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new PIN`
  String get register_input_pin_please {
    return Intl.message(
      'Enter your new PIN',
      name: 'register_input_pin_please',
      desc: '',
      args: [],
    );
  }

  /// `Re-enter your new PIN`
  String get register_input_pin_repeate_please {
    return Intl.message(
      'Re-enter your new PIN',
      name: 'register_input_pin_repeate_please',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect PIN`
  String get register_input_pin_not_equal {
    return Intl.message(
      'Incorrect PIN',
      name: 'register_input_pin_not_equal',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get register_success_title {
    return Intl.message(
      'Congratulations',
      name: 'register_success_title',
      desc: '',
      args: [],
    );
  }

  /// `Your account is active. Enjoy the convenience of ordering food with Digiresto.`
  String get register_success_desc {
    return Intl.message(
      'Your account is active. Enjoy the convenience of ordering food with Digiresto.',
      name: 'register_success_desc',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get register_success_ok {
    return Intl.message(
      'OK',
      name: 'register_success_ok',
      desc: '',
      args: [],
    );
  }

  /// `See your favourite order`
  String get txt_lihat {
    return Intl.message(
      'See your favourite order',
      name: 'txt_lihat',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get txt_closed {
    return Intl.message(
      'Closed',
      name: 'txt_closed',
      desc: '',
      args: [],
    );
  }

  /// `Image Outlet`
  String get image_outlet {
    return Intl.message(
      'Image Outlet',
      name: 'image_outlet',
      desc: '',
      args: [],
    );
  }

  /// `Pesanggrahan`
  String get pesanggrahan {
    return Intl.message(
      'Pesanggrahan',
      name: 'pesanggrahan',
      desc: '',
      args: [],
    );
  }

  /// `0.4 km`
  String get txJarak {
    return Intl.message(
      '0.4 km',
      name: 'txJarak',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get register_username {
    return Intl.message(
      'Username',
      name: 'register_username',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get register_email {
    return Intl.message(
      'Email',
      name: 'register_email',
      desc: '',
      args: [],
    );
  }

  /// `By clicking continue, I agree to the terms and conditions of Digiresto.`
  String get register_term_n_condition {
    return Intl.message(
      'By clicking continue, I agree to the terms and conditions of Digiresto.',
      name: 'register_term_n_condition',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get register_action {
    return Intl.message(
      'Continue',
      name: 'register_action',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_Web view' key

  /// `You are currently in the payment process, please complete it first`
  String get webview_payment_desc {
    return Intl.message(
      'You are currently in the payment process, please complete it first',
      name: 'webview_payment_desc',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get webview_exit {
    return Intl.message(
      'Exit',
      name: 'webview_exit',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get webview_next {
    return Intl.message(
      'Next',
      name: 'webview_next',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get tvselesai {
    return Intl.message(
      'Complete',
      name: 'tvselesai',
      desc: '',
      args: [],
    );
  }

  /// `Track Your Order`
  String get tv_track_your_order {
    return Intl.message(
      'Track Your Order',
      name: 'tv_track_your_order',
      desc: '',
      args: [],
    );
  }

  /// `No promo found`
  String get no_promo_found {
    return Intl.message(
      'No promo found',
      name: 'no_promo_found',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _Billing {
    return Intl.message(
      '',
      name: '_Billing',
      desc: '',
      args: [],
    );
  }

  /// `Hi {param},`
  String billing_hi(Object param) {
    return Intl.message(
      'Hi $param,',
      name: 'billing_hi',
      desc: '',
      args: [param],
    );
  }

  /// `Please continue to payment process with details below :`
  String get billing_desc {
    return Intl.message(
      'Please continue to payment process with details below :',
      name: 'billing_desc',
      desc: '',
      args: [],
    );
  }

  /// `Transfer to Virtual Account number`
  String get billing_va {
    return Intl.message(
      'Transfer to Virtual Account number',
      name: 'billing_va',
      desc: '',
      args: [],
    );
  }

  /// `Fee`
  String get billing_fee {
    return Intl.message(
      'Fee',
      name: 'billing_fee',
      desc: '',
      args: [],
    );
  }

  /// `Nominal`
  String get billing_nominal {
    return Intl.message(
      'Nominal',
      name: 'billing_nominal',
      desc: '',
      args: [],
    );
  }

  /// `Payment deadline`
  String get billing_expired {
    return Intl.message(
      'Payment deadline',
      name: 'billing_expired',
      desc: '',
      args: [],
    );
  }

  /// `Service Provider`
  String get billing_service_provider {
    return Intl.message(
      'Service Provider',
      name: 'billing_service_provider',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Date`
  String get billing_transaction_date {
    return Intl.message(
      'Transaction Date',
      name: 'billing_transaction_date',
      desc: '',
      args: [],
    );
  }

  /// `Account Number`
  String get billing_rekening_number {
    return Intl.message(
      'Account Number',
      name: 'billing_rekening_number',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account Name`
  String get billing_bank_account_name {
    return Intl.message(
      'Bank Account Name',
      name: 'billing_bank_account_name',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get billing_bank_name {
    return Intl.message(
      'Bank Name',
      name: 'billing_bank_name',
      desc: '',
      args: [],
    );
  }

  /// `Total payment`
  String get billing_amount {
    return Intl.message(
      'Total payment',
      name: 'billing_amount',
      desc: '',
      args: [],
    );
  }

  /// `{param} copied successfully`
  String billing_success_copy(Object param) {
    return Intl.message(
      '$param copied successfully',
      name: 'billing_success_copy',
      desc: '',
      args: [param],
    );
  }

  /// `*make sure the nominal matches up to the last 3 digits`
  String get billing_alert_nominal {
    return Intl.message(
      '*make sure the nominal matches up to the last 3 digits',
      name: 'billing_alert_nominal',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get billing_detail {
    return Intl.message(
      'Detail',
      name: 'billing_detail',
      desc: '',
      args: [],
    );
  }

  /// `I've Made Payment`
  String get billing_action_done {
    return Intl.message(
      'I\'ve Made Payment',
      name: 'billing_action_done',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get billing_payment_method {
    return Intl.message(
      'Payment Method',
      name: 'billing_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Total Payment`
  String get billing_total_payment {
    return Intl.message(
      'Total Payment',
      name: 'billing_total_payment',
      desc: '',
      args: [],
    );
  }

  /// `Call CS`
  String get call_outlet {
    return Intl.message(
      'Call CS',
      name: 'call_outlet',
      desc: '',
      args: [],
    );
  }

  /// `Send Message`
  String get chat_outlet {
    return Intl.message(
      'Send Message',
      name: 'chat_outlet',
      desc: '',
      args: [],
    );
  }

  /// `Call Driver`
  String get call_driver {
    return Intl.message(
      'Call Driver',
      name: 'call_driver',
      desc: '',
      args: [],
    );
  }

  /// `Chat Driver`
  String get chat_driver {
    return Intl.message(
      'Chat Driver',
      name: 'chat_driver',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get nama {
    return Intl.message(
      'Name',
      name: 'nama',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get text_telp {
    return Intl.message(
      'Phone',
      name: 'text_telp',
      desc: '',
      args: [],
    );
  }

  /// `Unable to add pre-order product when another product is at your cart.`
  String get failed_add_preorder {
    return Intl.message(
      'Unable to add pre-order product when another product is at your cart.',
      name: 'failed_add_preorder',
      desc: '',
      args: [],
    );
  }

  /// `Unable to add product when another pre-order product is at your cart.`
  String get failed_add_normal {
    return Intl.message(
      'Unable to add product when another pre-order product is at your cart.',
      name: 'failed_add_normal',
      desc: '',
      args: [],
    );
  }

  /// `Unable to add pre-order product with different period time.`
  String get failed_add_preorder_period {
    return Intl.message(
      'Unable to add pre-order product with different period time.',
      name: 'failed_add_preorder_period',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to choose another menu?`
  String get failed_add_preorder_period_different_category_title {
    return Intl.message(
      'Do you want to choose another menu?',
      name: 'failed_add_preorder_period_different_category_title',
      desc: '',
      args: [],
    );
  }

  /// `If yes, the previous menu you selected will be deleted and replaced with this menu.`
  String get failed_add_preorder_period_different_category_desc {
    return Intl.message(
      'If yes, the previous menu you selected will be deleted and replaced with this menu.',
      name: 'failed_add_preorder_period_different_category_desc',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get failed_add_preorder_period_no {
    return Intl.message(
      'No',
      name: 'failed_add_preorder_period_no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get failed_add_preorder_period_yes {
    return Intl.message(
      'Yes',
      name: 'failed_add_preorder_period_yes',
      desc: '',
      args: [],
    );
  }

  /// `Top Up`
  String get bank_transfer_topup {
    return Intl.message(
      'Top Up',
      name: 'bank_transfer_topup',
      desc: '',
      args: [],
    );
  }

  /// `Enter amount`
  String get bank_transfer_topup_denom_alert {
    return Intl.message(
      'Enter amount',
      name: 'bank_transfer_topup_denom_alert',
      desc: '',
      args: [],
    );
  }

  /// `Unable to proceed transaction`
  String get bank_transfer_cannot_process {
    return Intl.message(
      'Unable to proceed transaction',
      name: 'bank_transfer_cannot_process',
      desc: '',
      args: [],
    );
  }

  /// `Choose Bank`
  String get pilih_bank {
    return Intl.message(
      'Choose Bank',
      name: 'pilih_bank',
      desc: '',
      args: [],
    );
  }

  /// `Please continue to payment process with details below :`
  String get topup_desc {
    return Intl.message(
      'Please continue to payment process with details below :',
      name: 'topup_desc',
      desc: '',
      args: [],
    );
  }

  /// `Use the latest verification code`
  String get gunakan_kode_terbaru {
    return Intl.message(
      'Use the latest verification code',
      name: 'gunakan_kode_terbaru',
      desc: '',
      args: [],
    );
  }

  /// `Permission Denied`
  String get permission_denied {
    return Intl.message(
      'Permission Denied',
      name: 'permission_denied',
      desc: '',
      args: [],
    );
  }

  /// `If you reject permission, you cannot use this service. Please turn on permissions at [Setting] > [Permission]`
  String get permission_denied_desc {
    return Intl.message(
      'If you reject permission, you cannot use this service. Please turn on permissions at [Setting] > [Permission]',
      name: 'permission_denied_desc',
      desc: '',
      args: [],
    );
  }

  /// `No recent order, please login first.`
  String get no_recent_order_outlet {
    return Intl.message(
      'No recent order, please login first.',
      name: 'no_recent_order_outlet',
      desc: '',
      args: [],
    );
  }

  /// `header title`
  String get placeholder_header_title {
    return Intl.message(
      'header title',
      name: 'placeholder_header_title',
      desc: '',
      args: [],
    );
  }

  /// `1 Item`
  String get placeholder_jumlah_item {
    return Intl.message(
      '1 Item',
      name: 'placeholder_jumlah_item',
      desc: '',
      args: [],
    );
  }

  /// `Rp. 250.000`
  String get placeholder_price {
    return Intl.message(
      'Rp. 250.000',
      name: 'placeholder_price',
      desc: '',
      args: [],
    );
  }

  /// `Grass fed Tenderloin`
  String get placeholder_menu_name {
    return Intl.message(
      'Grass fed Tenderloin',
      name: 'placeholder_menu_name',
      desc: '',
      args: [],
    );
  }

  /// `220.000`
  String get placeholder_menu_price {
    return Intl.message(
      '220.000',
      name: 'placeholder_menu_price',
      desc: '',
      args: [],
    );
  }

  /// `200.000`
  String get placeholder_original_price_menu {
    return Intl.message(
      '200.000',
      name: 'placeholder_original_price_menu',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet, consectetur adipiscing elit roin ullamcorper enim posuere, pellentesque turpis ac`
  String get placeholder_description_menu {
    return Intl.message(
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit roin ullamcorper enim posuere, pellentesque turpis ac',
      name: 'placeholder_description_menu',
      desc: '',
      args: [],
    );
  }

  /// `1`
  String get placeholder_counter_menu {
    return Intl.message(
      '1',
      name: 'placeholder_counter_menu',
      desc: '',
      args: [],
    );
  }

  /// `Merchant name`
  String get placeholder_merchant_name {
    return Intl.message(
      'Merchant name',
      name: 'placeholder_merchant_name',
      desc: '',
      args: [],
    );
  }

  /// `Outlet name`
  String get placeholder_outlet_name {
    return Intl.message(
      'Outlet name',
      name: 'placeholder_outlet_name',
      desc: '',
      args: [],
    );
  }

  /// `Example, no onions`
  String get placeholder_hint_notes {
    return Intl.message(
      'Example, no onions',
      name: 'placeholder_hint_notes',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get placeholder_location {
    return Intl.message(
      'Location',
      name: 'placeholder_location',
      desc: '',
      args: [],
    );
  }

  /// `Grass fed Tenderloin`
  String get placeholder_title_favorite {
    return Intl.message(
      'Grass fed Tenderloin',
      name: 'placeholder_title_favorite',
      desc: '',
      args: [],
    );
  }

  /// `Grass fed Tenderloin wk k w wmwkw nw jwj j wkw kkw`
  String get placeholder_desc_favorite {
    return Intl.message(
      'Grass fed Tenderloin wk k w wmwkw nw jwj j wkw kkw',
      name: 'placeholder_desc_favorite',
      desc: '',
      args: [],
    );
  }

  /// `1212131`
  String get placeholder_date_favorite {
    return Intl.message(
      '1212131',
      name: 'placeholder_date_favorite',
      desc: '',
      args: [],
    );
  }

  /// `Rp`
  String get placeholder_total_price_favorite {
    return Intl.message(
      'Rp',
      name: 'placeholder_total_price_favorite',
      desc: '',
      args: [],
    );
  }

  /// `Driver Info`
  String get driver_info {
    return Intl.message(
      'Driver Info',
      name: 'driver_info',
      desc: '',
      args: [],
    );
  }

  /// `wawan`
  String get placeholder_driver_name {
    return Intl.message(
      'wawan',
      name: 'placeholder_driver_name',
      desc: '',
      args: [],
    );
  }

  /// `wawan`
  String get placeholder_phone_driver {
    return Intl.message(
      'wawan',
      name: 'placeholder_phone_driver',
      desc: '',
      args: [],
    );
  }

  /// `Waiting your order to be delivered`
  String get text_menunggu {
    return Intl.message(
      'Waiting your order to be delivered',
      name: 'text_menunggu',
      desc: '',
      args: [],
    );
  }

  /// `WhatsApp`
  String get label_whatsapp {
    return Intl.message(
      'WhatsApp',
      name: 'label_whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get label_phone {
    return Intl.message(
      'Phone',
      name: 'label_phone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get label_email {
    return Intl.message(
      'Email',
      name: 'label_email',
      desc: '',
      args: [],
    );
  }

  /// `Bank Transfer`
  String get transfer_rekening {
    return Intl.message(
      'Bank Transfer',
      name: 'transfer_rekening',
      desc: '',
      args: [],
    );
  }

  /// `Top Up Digiresto Credit Via BCA`
  String get placeholder_topup_digiresto_credit {
    return Intl.message(
      'Top Up Digiresto Credit Via BCA',
      name: 'placeholder_topup_digiresto_credit',
      desc: '',
      args: [],
    );
  }

  /// `SODK9Z9P891`
  String get placeholder_receipt_value {
    return Intl.message(
      'SODK9Z9P891',
      name: 'placeholder_receipt_value',
      desc: '',
      args: [],
    );
  }

  /// `Pick Up`
  String get placeholder_title_tracking {
    return Intl.message(
      'Pick Up',
      name: 'placeholder_title_tracking',
      desc: '',
      args: [],
    );
  }

  /// `Hokben`
  String get placeholder_place_tracking {
    return Intl.message(
      'Hokben',
      name: 'placeholder_place_tracking',
      desc: '',
      args: [],
    );
  }

  /// `Hokben Plaza Senayan`
  String get placeholder_place_detail {
    return Intl.message(
      'Hokben Plaza Senayan',
      name: 'placeholder_place_detail',
      desc: '',
      args: [],
    );
  }

  /// `18 Nov 2020, 10:45:33`
  String get history_datetransaction {
    return Intl.message(
      '18 Nov 2020, 10:45:33',
      name: 'history_datetransaction',
      desc: '',
      args: [],
    );
  }

  /// `Dummy desc`
  String get placeholder_desc {
    return Intl.message(
      'Dummy desc',
      name: 'placeholder_desc',
      desc: '',
      args: [],
    );
  }

  /// `Please select Base Url for the testing, or enter the base url you want to use.`
  String get pilih_base_url {
    return Intl.message(
      'Please select Base Url for the testing, or enter the base url you want to use.',
      name: 'pilih_base_url',
      desc: '',
      args: [],
    );
  }

  /// `Dev :`
  String get title_dev {
    return Intl.message(
      'Dev :',
      name: 'title_dev',
      desc: '',
      args: [],
    );
  }

  /// `Prod :`
  String get title_prod {
    return Intl.message(
      'Prod :',
      name: 'title_prod',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get title_other {
    return Intl.message(
      'Other',
      name: 'title_other',
      desc: '',
      args: [],
    );
  }

  /// `Address Required`
  String get error_input_address {
    return Intl.message(
      'Address Required',
      name: 'error_input_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter address`
  String get input_address {
    return Intl.message(
      'Enter address',
      name: 'input_address',
      desc: '',
      args: [],
    );
  }

  /// `Promo`
  String get promo_banner {
    return Intl.message(
      'Promo',
      name: 'promo_banner',
      desc: '',
      args: [],
    );
  }

  /// `Top Up Credit`
  String get credit_title_1 {
    return Intl.message(
      'Top Up Credit',
      name: 'credit_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Select method.`
  String get credit_desc_1 {
    return Intl.message(
      'Select method.',
      name: 'credit_desc_1',
      desc: '',
      args: [],
    );
  }

  /// `Transaction History`
  String get credit_title_2 {
    return Intl.message(
      'Transaction History',
      name: 'credit_title_2',
      desc: '',
      args: [],
    );
  }

  /// `View transaction history.`
  String get credit_desc_2 {
    return Intl.message(
      'View transaction history.',
      name: 'credit_desc_2',
      desc: '',
      args: [],
    );
  }

  /// `Recent History`
  String get credit_recent_history {
    return Intl.message(
      'Recent History',
      name: 'credit_recent_history',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for payment`
  String get credit_pending_topup {
    return Intl.message(
      'Waiting for payment',
      name: 'credit_pending_topup',
      desc: '',
      args: [],
    );
  }

  /// `Note:`
  String get credit_note {
    return Intl.message(
      'Note:',
      name: 'credit_note',
      desc: '',
      args: [],
    );
  }

  /// `This transaction will be subject to a fee of`
  String get credit_note_value {
    return Intl.message(
      'This transaction will be subject to a fee of',
      name: 'credit_note_value',
      desc: '',
      args: [],
    );
  }

  /// `Fund Transfer`
  String get credit_fund_transfer {
    return Intl.message(
      'Fund Transfer',
      name: 'credit_fund_transfer',
      desc: '',
      args: [],
    );
  }

  /// `Rp {param}`
  String beranda_balance_inquiry(Object param) {
    return Intl.message(
      'Rp $param',
      name: 'beranda_balance_inquiry',
      desc: '',
      args: [param],
    );
  }

  /// `No History`
  String get no_riwayat_found {
    return Intl.message(
      'No History',
      name: 'no_riwayat_found',
      desc: '',
      args: [],
    );
  }

  /// `Digicredit Transaction`
  String get title_riwayat_transaksi {
    return Intl.message(
      'Digicredit Transaction',
      name: 'title_riwayat_transaksi',
      desc: '',
      args: [],
    );
  }

  /// `Choose your language`
  String get pilih_bahasa {
    return Intl.message(
      'Choose your language',
      name: 'pilih_bahasa',
      desc: '',
      args: [],
    );
  }

  /// `Indonesia`
  String get lang_in {
    return Intl.message(
      'Indonesia',
      name: 'lang_in',
      desc: '',
      args: [],
    );
  }

  /// `Please choose your language for the app`
  String get txt_pilih_bahasa {
    return Intl.message(
      'Please choose your language for the app',
      name: 'txt_pilih_bahasa',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get lang_en {
    return Intl.message(
      'English',
      name: 'lang_en',
      desc: '',
      args: [],
    );
  }

  /// `Time:`
  String get nota_transaction_date {
    return Intl.message(
      'Time:',
      name: 'nota_transaction_date',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get _rating {
    return Intl.message(
      '',
      name: '_rating',
      desc: '',
      args: [],
    );
  }

  /// `Give rating`
  String get rating_title {
    return Intl.message(
      'Give rating',
      name: 'rating_title',
      desc: '',
      args: [],
    );
  }

  /// `Rate your order!`
  String get rating_desc {
    return Intl.message(
      'Rate your order!',
      name: 'rating_desc',
      desc: '',
      args: [],
    );
  }

  /// `Write your review`
  String get review_title {
    return Intl.message(
      'Write your review',
      name: 'review_title',
      desc: '',
      args: [],
    );
  }

  /// `Write your review about food or the drink you ordered.`
  String get review_hint {
    return Intl.message(
      'Write your review about food or the drink you ordered.',
      name: 'review_hint',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get review_send {
    return Intl.message(
      'Send',
      name: 'review_send',
      desc: '',
      args: [],
    );
  }

  /// `Your rating and review has been received. Thank you. `
  String get review_success {
    return Intl.message(
      'Your rating and review has been received. Thank you. ',
      name: 'review_success',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '_Time ago' key

  /// ``
  String get time_ago_prefix {
    return Intl.message(
      '',
      name: 'time_ago_prefix',
      desc: '',
      args: [],
    );
  }

  /// `ago`
  String get time_ago_suffix {
    return Intl.message(
      'ago',
      name: 'time_ago_suffix',
      desc: '',
      args: [],
    );
  }

  /// `a minute`
  String get time_ago_seconds {
    return Intl.message(
      'a minute',
      name: 'time_ago_seconds',
      desc: '',
      args: [],
    );
  }

  /// `a minute`
  String get time_ago_minute {
    return Intl.message(
      'a minute',
      name: 'time_ago_minute',
      desc: '',
      args: [],
    );
  }

  /// `%d minute`
  String get time_ago_minutes {
    return Intl.message(
      '%d minute',
      name: 'time_ago_minutes',
      desc: '',
      args: [],
    );
  }

  /// `an hour`
  String get time_ago_hour {
    return Intl.message(
      'an hour',
      name: 'time_ago_hour',
      desc: '',
      args: [],
    );
  }

  /// `%d hour`
  String get time_ago_hours {
    return Intl.message(
      '%d hour',
      name: 'time_ago_hours',
      desc: '',
      args: [],
    );
  }

  /// `a day`
  String get time_ago_day {
    return Intl.message(
      'a day',
      name: 'time_ago_day',
      desc: '',
      args: [],
    );
  }

  /// `%d day`
  String get time_ago_days {
    return Intl.message(
      '%d day',
      name: 'time_ago_days',
      desc: '',
      args: [],
    );
  }

  /// `a month`
  String get time_ago_month {
    return Intl.message(
      'a month',
      name: 'time_ago_month',
      desc: '',
      args: [],
    );
  }

  /// `%d month`
  String get time_ago_months {
    return Intl.message(
      '%d month',
      name: 'time_ago_months',
      desc: '',
      args: [],
    );
  }

  /// `a year`
  String get time_ago_year {
    return Intl.message(
      'a year',
      name: 'time_ago_year',
      desc: '',
      args: [],
    );
  }

  /// `%d year`
  String get time_ago_years {
    return Intl.message(
      '%d year',
      name: 'time_ago_years',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'da'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'id'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
