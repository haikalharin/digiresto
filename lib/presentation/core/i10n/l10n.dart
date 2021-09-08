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

  /// `EN`
  String get country_code {
    return Intl.message(
      'EN',
      name: 'country_code',
      desc: '',
      args: [],
    );
  }

  /// `Below are list of strings for login`
  String get login_start {
    return Intl.message(
      'Below are list of strings for login',
      name: 'login_start',
      desc: '',
      args: [],
    );
  }

  /// `Enter user email`
  String get login_et_user_email {
    return Intl.message(
      'Enter user email',
      name: 'login_et_user_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get login_et_user_password {
    return Intl.message(
      'Enter password',
      name: 'login_et_user_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get login_btn_forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'login_btn_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get login_btn_sign_in {
    return Intl.message(
      'Sign In',
      name: 'login_btn_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in all fields`
  String get login_error_fill_fields {
    return Intl.message(
      'Please fill in all fields',
      name: 'login_error_fill_fields',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_input_phone_title {
    return Intl.message(
      'Login',
      name: 'login_input_phone_title',
      desc: '',
      args: [],
    );
  }

  /// `Pastikan nomor handphone anda valid untuk proses verifikasi`
  String get login_input_phone_desc {
    return Intl.message(
      'Pastikan nomor handphone anda valid untuk proses verifikasi',
      name: 'login_input_phone_desc',
      desc: '',
      args: [],
    );
  }

  /// `Nomor Handphone`
  String get login_input_phone_hint {
    return Intl.message(
      'Nomor Handphone',
      name: 'login_input_phone_hint',
      desc: '',
      args: [],
    );
  }

  /// `Lanjut Verifikasi`
  String get login_btn_verification {
    return Intl.message(
      'Lanjut Verifikasi',
      name: 'login_btn_verification',
      desc: '',
      args: [],
    );
  }

  /// `Skip And Continue`
  String get login_btn_skip_continue {
    return Intl.message(
      'Skip And Continue',
      name: 'login_btn_skip_continue',
      desc: '',
      args: [],
    );
  }

  /// `Verify Phone`
  String get login_verify_otp_title {
    return Intl.message(
      'Verify Phone',
      name: 'login_verify_otp_title',
      desc: '',
      args: [],
    );
  }

  /// `Silahkan masukkan enam digit kode verifikasi yang kami kirim ke WhatsApp/SMS Anda di nomor`
  String get login_verify_otp_desc {
    return Intl.message(
      'Silahkan masukkan enam digit kode verifikasi yang kami kirim ke WhatsApp/SMS Anda di nomor',
      name: 'login_verify_otp_desc',
      desc: '',
      args: [],
    );
  }

  /// `Harap masukkan kode terbaru untuk melanjutkan.`
  String get login_verify_otp_desc2 {
    return Intl.message(
      'Harap masukkan kode terbaru untuk melanjutkan.',
      name: 'login_verify_otp_desc2',
      desc: '',
      args: [],
    );
  }

  /// `Jika Anda tidak menerima kode, klik kirim ulang kode.`
  String get login_verify_otp_resend {
    return Intl.message(
      'Jika Anda tidak menerima kode, klik kirim ulang kode.',
      name: 'login_verify_otp_resend',
      desc: '',
      args: [],
    );
  }

  /// `Kirim Ulang`
  String get login_btn_verify_otp_resend {
    return Intl.message(
      'Kirim Ulang',
      name: 'login_btn_verify_otp_resend',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan 6 digit PIN`
  String get login_enter_pin {
    return Intl.message(
      'Masukkan 6 digit PIN',
      name: 'login_enter_pin',
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

  /// `------------------------------------------------------------------------------------`
  String get login_end {
    return Intl.message(
      '------------------------------------------------------------------------------------',
      name: 'login_end',
      desc: '',
      args: [],
    );
  }

  /// `Below are list of strings for home`
  String get home_start {
    return Intl.message(
      'Below are list of strings for home',
      name: 'home_start',
      desc: '',
      args: [],
    );
  }

  /// `Posts`
  String get home_tv_posts {
    return Intl.message(
      'Posts',
      name: 'home_tv_posts',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get home_tv_error {
    return Intl.message(
      'Error',
      name: 'home_tv_error',
      desc: '',
      args: [],
    );
  }

  /// `No posts found`
  String get home_tv_no_post_found {
    return Intl.message(
      'No posts found',
      name: 'home_tv_no_post_found',
      desc: '',
      args: [],
    );
  }

  /// `Choose Language`
  String get home_tv_choose_language {
    return Intl.message(
      'Choose Language',
      name: 'home_tv_choose_language',
      desc: '',
      args: [],
    );
  }

  /// `-------------------------------------------------------------------------------------`
  String get home_end {
    return Intl.message(
      '-------------------------------------------------------------------------------------',
      name: 'home_end',
      desc: '',
      args: [],
    );
  }

  /// `Below are list of strings for onboarding`
  String get onboarding_start {
    return Intl.message(
      'Below are list of strings for onboarding',
      name: 'onboarding_start',
      desc: '',
      args: [],
    );
  }

  /// `Pengiriman Cepat dan Aman`
  String get onboarding_get_started_title {
    return Intl.message(
      'Pengiriman Cepat dan Aman',
      name: 'onboarding_get_started_title',
      desc: '',
      args: [],
    );
  }

  /// `Makanan anda siap diantar ke alamat tujuan dengan berbagai kurir terpercaya.`
  String get onboarding_get_started_desc {
    return Intl.message(
      'Makanan anda siap diantar ke alamat tujuan dengan berbagai kurir terpercaya.',
      name: 'onboarding_get_started_desc',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan Alamat Tujuan`
  String get onboarding_address_title {
    return Intl.message(
      'Masukkan Alamat Tujuan',
      name: 'onboarding_address_title',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan alamat anda untuk mempermudah kurir dalam pengiriman`
  String get onboarding_address_desc {
    return Intl.message(
      'Masukkan alamat anda untuk mempermudah kurir dalam pengiriman',
      name: 'onboarding_address_desc',
      desc: '',
      args: [],
    );
  }

  /// `Temukan Makanan Favorite Anda`
  String get onboarding_favorite_title {
    return Intl.message(
      'Temukan Makanan Favorite Anda',
      name: 'onboarding_favorite_title',
      desc: '',
      args: [],
    );
  }

  /// `Berbagai jenis makanan yang siap dipesan dengan mudah dan cepat`
  String get onboarding_favorite_desc {
    return Intl.message(
      'Berbagai jenis makanan yang siap dipesan dengan mudah dan cepat',
      name: 'onboarding_favorite_desc',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get onboarding_btn_get_start {
    return Intl.message(
      'Get Started',
      name: 'onboarding_btn_get_start',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onboarding_btn_next {
    return Intl.message(
      'Next',
      name: 'onboarding_btn_next',
      desc: '',
      args: [],
    );
  }

  /// `-------------------------------------------------------------------------------------`
  String get onboarding_end {
    return Intl.message(
      '-------------------------------------------------------------------------------------',
      name: 'onboarding_end',
      desc: '',
      args: [],
    );
  }

  /// `Below are list of strings for login`
  String get profile_start {
    return Intl.message(
      'Below are list of strings for login',
      name: 'profile_start',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get profile_change_language {
    return Intl.message(
      'Change Language',
      name: 'profile_change_language',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get profile_logout {
    return Intl.message(
      'Logout',
      name: 'profile_logout',
      desc: '',
      args: [],
    );
  }

  /// `App Version`
  String get profile_app_version {
    return Intl.message(
      'App Version',
      name: 'profile_app_version',
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

  /// `About Digiresto`
  String get profile_about_digiresto {
    return Intl.message(
      'About Digiresto',
      name: 'profile_about_digiresto',
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

  /// `Join with digiresto`
  String get profile_join_digiresto {
    return Intl.message(
      'Join with digiresto',
      name: 'profile_join_digiresto',
      desc: '',
      args: [],
    );
  }

  /// `Untuk informasi keluhan, Kritik & Saran dalam menggunakan aplikasi silahkan hubungi kami melalui link berikut:`
  String get profile_customer_service_desc {
    return Intl.message(
      'Untuk informasi keluhan, Kritik & Saran dalam menggunakan aplikasi silahkan hubungi kami melalui link berikut:',
      name: 'profile_customer_service_desc',
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

  /// `History`
  String get profile_history {
    return Intl.message(
      'History',
      name: 'profile_history',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get profile_cancel {
    return Intl.message(
      'Cancel',
      name: 'profile_cancel',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get profile_ {
    return Intl.message(
      '',
      name: 'profile_',
      desc: '',
      args: [],
    );
  }

  /// `-------------------------------------------------------------------------------------`
  String get profile_end {
    return Intl.message(
      '-------------------------------------------------------------------------------------',
      name: 'profile_end',
      desc: '',
      args: [],
    );
  }

  /// `Below are list of strings for credits`
  String get credit_start {
    return Intl.message(
      'Below are list of strings for credits',
      name: 'credit_start',
      desc: '',
      args: [],
    );
  }

  /// `Digiresto Credit`
  String get credit_title {
    return Intl.message(
      'Digiresto Credit',
      name: 'credit_title',
      desc: '',
      args: [],
    );
  }

  /// `My Credit`
  String get credit_info {
    return Intl.message(
      'My Credit',
      name: 'credit_info',
      desc: '',
      args: [],
    );
  }

  /// `-------------------------------------------------------------------------------------`
  String get credit_end {
    return Intl.message(
      '-------------------------------------------------------------------------------------',
      name: 'credit_end',
      desc: '',
      args: [],
    );
  }

  /// `Below are list of strings for register`
  String get register_start {
    return Intl.message(
      'Below are list of strings for register',
      name: 'register_start',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register_title {
    return Intl.message(
      'Register',
      name: 'register_title',
      desc: '',
      args: [],
    );
  }

  /// `LANJUT`
  String get register_next {
    return Intl.message(
      'LANJUT',
      name: 'register_next',
      desc: '',
      args: [],
    );
  }

  /// `Dengan mengklik lanjutkan, Saya setuju dengan syarat dann ketentuan digiresto`
  String get register_toc_title {
    return Intl.message(
      'Dengan mengklik lanjutkan, Saya setuju dengan syarat dann ketentuan digiresto',
      name: 'register_toc_title',
      desc: '',
      args: [],
    );
  }

  /// `Info Profile`
  String get register_info_profile {
    return Intl.message(
      'Info Profile',
      name: 'register_info_profile',
      desc: '',
      args: [],
    );
  }

  /// `Buat PIN Login`
  String get register_create_pin {
    return Intl.message(
      'Buat PIN Login',
      name: 'register_create_pin',
      desc: '',
      args: [],
    );
  }

  /// `Buat PIN Login`
  String get register_enter_pin {
    return Intl.message(
      'Buat PIN Login',
      name: 'register_enter_pin',
      desc: '',
      args: [],
    );
  }

  /// `Masukkan Kembali Pin Login`
  String get register_confirm_pin {
    return Intl.message(
      'Masukkan Kembali Pin Login',
      name: 'register_confirm_pin',
      desc: '',
      args: [],
    );
  }

  /// `-------------------------------------------------------------------------------------`
  String get register_end {
    return Intl.message(
      '-------------------------------------------------------------------------------------',
      name: 'register_end',
      desc: '',
      args: [],
    );
  }

  /// `Gagal mengambil data, silahkan coba beberapa saat lagi`
  String get connection_error {
    return Intl.message(
      'Gagal mengambil data, silahkan coba beberapa saat lagi',
      name: 'connection_error',
      desc: '',
      args: [],
    );
  }

  /// `Success!`
  String get nota_title_default {
    return Intl.message(
      'Success!',
      name: 'nota_title_default',
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

  /// `Payment failed`
  String get nota_failed {
    return Intl.message(
      'Payment failed',
      name: 'nota_failed',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get profile_edit {
    return Intl.message(
      'Edit',
      name: 'profile_edit',
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
