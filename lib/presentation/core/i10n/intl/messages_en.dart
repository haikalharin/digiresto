// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(url) => "Dev : ${url}";

  static String m1(url) => "Prod : ${url}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "connection_error": MessageLookupByLibrary.simpleMessage(
            "Gagal mengambil data, silahkan coba beberapa saat lagi"),
        "country_code": MessageLookupByLibrary.simpleMessage("EN"),
        "credit_end": MessageLookupByLibrary.simpleMessage(
            "-------------------------------------------------------------------------------------"),
        "credit_info": MessageLookupByLibrary.simpleMessage("My Credit"),
        "credit_start": MessageLookupByLibrary.simpleMessage(
            "Below are list of strings for credits"),
        "credit_title":
            MessageLookupByLibrary.simpleMessage("Digiresto Credit"),
        "home_end": MessageLookupByLibrary.simpleMessage(
            "-------------------------------------------------------------------------------------"),
        "home_start": MessageLookupByLibrary.simpleMessage(
            "Below are list of strings for home"),
        "home_tv_choose_language":
            MessageLookupByLibrary.simpleMessage("Choose Language"),
        "home_tv_error": MessageLookupByLibrary.simpleMessage("Error"),
        "home_tv_no_post_found":
            MessageLookupByLibrary.simpleMessage("No posts found"),
        "home_tv_posts": MessageLookupByLibrary.simpleMessage("Posts"),
        "lang": MessageLookupByLibrary.simpleMessage("en"),
        "login_body_base": MessageLookupByLibrary.simpleMessage(
            "Please select Base Url for the testing, or enter the base url you want to use"),
        "login_btn_forgot_password":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "login_btn_sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
        "login_btn_skip_continue":
            MessageLookupByLibrary.simpleMessage("Skip And Continue"),
        "login_btn_verification":
            MessageLookupByLibrary.simpleMessage("Lanjut Verifikasi"),
        "login_btn_verify_otp_resend":
            MessageLookupByLibrary.simpleMessage("Kirim Ulang"),
        "login_dev_mode": MessageLookupByLibrary.simpleMessage("Dev Mode"),
        "login_end": MessageLookupByLibrary.simpleMessage(
            "------------------------------------------------------------------------------------"),
        "login_enter_pin":
            MessageLookupByLibrary.simpleMessage("Masukkan 6 digit PIN"),
        "login_error_fill_fields":
            MessageLookupByLibrary.simpleMessage("Please fill in all fields"),
        "login_et_user_email":
            MessageLookupByLibrary.simpleMessage("Enter user email"),
        "login_et_user_password":
            MessageLookupByLibrary.simpleMessage("Enter password"),
        "login_input_phone_desc": MessageLookupByLibrary.simpleMessage(
            "Pastikan nomor handphone anda valid untuk proses verifikasi"),
        "login_input_phone_hint":
            MessageLookupByLibrary.simpleMessage("Nomor Handphone"),
        "login_input_phone_title":
            MessageLookupByLibrary.simpleMessage("Login"),
        "login_select_dev": m0,
        "login_select_other": MessageLookupByLibrary.simpleMessage("Other"),
        "login_select_prod": m1,
        "login_start": MessageLookupByLibrary.simpleMessage(
            "Below are list of strings for login"),
        "login_verify_otp_desc": MessageLookupByLibrary.simpleMessage(
            "Silahkan masukkan enam digit kode verifikasi yang kami kirim ke WhatsApp/SMS Anda di nomor"),
        "login_verify_otp_desc2": MessageLookupByLibrary.simpleMessage(
            "Harap masukkan kode terbaru untuk melanjutkan."),
        "login_verify_otp_resend": MessageLookupByLibrary.simpleMessage(
            "Jika Anda tidak menerima kode, klik kirim ulang kode."),
        "login_verify_otp_title":
            MessageLookupByLibrary.simpleMessage("Verify Phone"),
        "nota_auto_done_desc": MessageLookupByLibrary.simpleMessage(
            "Your order has been completed by the system."),
        "nota_cancel_desc": MessageLookupByLibrary.simpleMessage(
            "Your order has been cancelled by outlet."),
        "nota_done_desc":
            MessageLookupByLibrary.simpleMessage("Your order is completed."),
        "nota_failed": MessageLookupByLibrary.simpleMessage("Payment failed"),
        "nota_pending_payment":
            MessageLookupByLibrary.simpleMessage("Pending Payment"),
        "nota_process_desc": MessageLookupByLibrary.simpleMessage(
            "Your order has been received by outlet."),
        "nota_ready_desc": MessageLookupByLibrary.simpleMessage(
            "Your order is ready to deliver."),
        "nota_reject_desc": MessageLookupByLibrary.simpleMessage(
            "Your order has been rejected by outlet."),
        "nota_title_default": MessageLookupByLibrary.simpleMessage("Success!"),
        "nota_waiting_desc": MessageLookupByLibrary.simpleMessage(
            "Your Order is being processed."),
        "onboarding_address_desc": MessageLookupByLibrary.simpleMessage(
            "Masukkan alamat anda untuk mempermudah kurir dalam pengiriman"),
        "onboarding_address_title":
            MessageLookupByLibrary.simpleMessage("Masukkan Alamat Tujuan"),
        "onboarding_btn_get_start":
            MessageLookupByLibrary.simpleMessage("Get Started"),
        "onboarding_btn_next": MessageLookupByLibrary.simpleMessage("Next"),
        "onboarding_end": MessageLookupByLibrary.simpleMessage(
            "-------------------------------------------------------------------------------------"),
        "onboarding_favorite_desc": MessageLookupByLibrary.simpleMessage(
            "Berbagai jenis makanan yang siap dipesan dengan mudah dan cepat"),
        "onboarding_favorite_title": MessageLookupByLibrary.simpleMessage(
            "Temukan Makanan Favorite Anda"),
        "onboarding_get_started_desc": MessageLookupByLibrary.simpleMessage(
            "Makanan anda siap diantar ke alamat tujuan dengan berbagai kurir terpercaya."),
        "onboarding_get_started_title":
            MessageLookupByLibrary.simpleMessage("Pengiriman Cepat dan Aman"),
        "onboarding_start": MessageLookupByLibrary.simpleMessage(
            "Below are list of strings for onboarding"),
        "profile_": MessageLookupByLibrary.simpleMessage(""),
        "profile_about_digiresto":
            MessageLookupByLibrary.simpleMessage("About Digiresto"),
        "profile_address": MessageLookupByLibrary.simpleMessage("Address"),
        "profile_app_version":
            MessageLookupByLibrary.simpleMessage("App Version"),
        "profile_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "profile_change_language":
            MessageLookupByLibrary.simpleMessage("Change Language"),
        "profile_customer_service":
            MessageLookupByLibrary.simpleMessage("Customer Service"),
        "profile_customer_service_desc": MessageLookupByLibrary.simpleMessage(
            "Untuk informasi keluhan, Kritik & Saran dalam menggunakan aplikasi silahkan hubungi kami melalui link berikut:"),
        "profile_edit": MessageLookupByLibrary.simpleMessage("Edit"),
        "profile_end": MessageLookupByLibrary.simpleMessage(
            "-------------------------------------------------------------------------------------"),
        "profile_history": MessageLookupByLibrary.simpleMessage("History"),
        "profile_join_digiresto":
            MessageLookupByLibrary.simpleMessage("Join with digiresto"),
        "profile_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "profile_privacy_policy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "profile_start": MessageLookupByLibrary.simpleMessage(
            "Below are list of strings for login"),
        "register_confirm_pin":
            MessageLookupByLibrary.simpleMessage("Masukkan Kembali Pin Login"),
        "register_create_pin":
            MessageLookupByLibrary.simpleMessage("Buat PIN Login"),
        "register_end": MessageLookupByLibrary.simpleMessage(
            "-------------------------------------------------------------------------------------"),
        "register_enter_pin":
            MessageLookupByLibrary.simpleMessage("Buat PIN Login"),
        "register_info_profile":
            MessageLookupByLibrary.simpleMessage("Info Profile"),
        "register_next": MessageLookupByLibrary.simpleMessage("LANJUT"),
        "register_start": MessageLookupByLibrary.simpleMessage(
            "Below are list of strings for register"),
        "register_title": MessageLookupByLibrary.simpleMessage("Register"),
        "register_toc_title": MessageLookupByLibrary.simpleMessage(
            "Dengan mengklik lanjutkan, Saya setuju dengan syarat dann ketentuan digiresto")
      };
}
