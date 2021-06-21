import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  // shared pref instance
  final Future<SharedPreferences> _sharedPreference;

  // constructor
  SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  Future<String> get authToken async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.auth_token);
    });
  }

  Future<void> saveAuthToken(String authToken) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.auth_token, authToken);
    });
  }

  Future<void> removeAuthToken() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.auth_token);
    });
  }

  // Login:---------------------------------------------------------------------
  Future<bool> get isLoggedIn async {
    return _sharedPreference.then((preference) {
      return preference.getBool(Preferences.is_logged_in) ?? false;
    });
  }

  Future<void> saveIsLoggedIn(bool value) async {
    return _sharedPreference.then((preference) {
      preference.setBool(Preferences.is_logged_in, value);
    });
  }

  Future<String> get authPhone async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.phone_number);
    });
  }

  Future<void> saveAuthPhone(String authPhone) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.phone_number, authPhone);
    });
  }

  Future<void> removeAuthPhone() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.phone_number);
    });
  }

  //auth phone verified
  Future<bool> get authPhoneVerified async {
    return _sharedPreference.then((preference) {
      return preference.getBool(Preferences.phone_verified);
    });
  }

  Future<void> saveAuthPhoneVerified(bool authPhoneVerified) async {
    return _sharedPreference.then((preference) {
      preference.setBool(Preferences.phone_verified, authPhoneVerified);
    });
  }

  Future<void> removeAuthPhoneVerified() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.phone_verified);
    });
  }
  //default address
  Future<String> get defaultAddress async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.default_address);
    });
  }

  Future<void> saveDefaultAddress(String defaultAddress) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.default_address, defaultAddress);
    });
  }

  Future<void> removeDefaultAddress() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.default_address);
    });
  }

  Future<String> get defaultAddressLat async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.default_address_lat);
    });
  }

  Future<void> saveDefaultAddressLat(String defaultAddressLat) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.default_address_lat, defaultAddressLat);
    });
  }

  Future<void> removeDefaultAddressLat() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.default_address_lat);
    });
  }


  Future<String> get defaultAddressLng async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.default_address_lng);
    });
  }

  Future<void> saveDefaultAddressLng(String defaultAddressLng) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.default_address_lng, defaultAddressLng);
    });
  }

  Future<void> removeDefaultAddressLng() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.default_address_lng);
    });
  }

  // Theme:------------------------------------------------------
  Future<bool> get isDarkMode {
    return _sharedPreference.then((prefs) {
      return prefs.getBool(Preferences.is_dark_mode) ?? false;
    });
  }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.then((prefs) {
      return prefs.setBool(Preferences.is_dark_mode, value);
    });
  }

  // Language:---------------------------------------------------
  Future<String> get currentLanguage {
    return _sharedPreference.then((prefs) {
      return prefs.getString(Preferences.current_language);
    });
  }

  Future<void> changeLanguage(String language) {
    return _sharedPreference.then((prefs) {
      return prefs.setString(Preferences.current_language, language);
    });
  }

  // Onboarding:---------------------------------------------------
  Future<String> get showOnboarding {
    return _sharedPreference.then((prefs) {
      return prefs.getString(Preferences.show_onboarding);
    });
  }

  Future<void> setShowOnboarding(String onboarding) {
    return _sharedPreference.then((prefs) {
      return prefs.setString(Preferences.show_onboarding, onboarding);
    });
  }

  // skipAndContinue:---------------------------------------------------
  Future<bool> get skipAndContinue {
    return _sharedPreference.then((prefs) {
      return prefs.getBool(Preferences.skin_and_continue);
    });
  }

  Future<void> setSkipAndContinue(bool skipAndContinue) {
    return _sharedPreference.then((prefs) {
      return prefs.setBool(Preferences.skin_and_continue, skipAndContinue);
    });
  }

  Future<void> removeSkipAndContinue() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.skin_and_continue);
    });
  }
  //order:---------------------------------------------------
  Future<String> get orderOutletName async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.orderOutletName);
    });
  }

  Future<void> saveOrderOutletName(Map<String,dynamic> object) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.orderOutletName, object["orderOutletName"]);
      preference.setString(Preferences.orderSalesTypes, object["orderSalesTypes"]);
      preference.setString(Preferences.orderSalesTypesCode, object["orderSalesTypesCode"]);
      preference.setString(Preferences.orderMerchantName, object["orderMerchantName"]);
      preference.setString(Preferences.orderOutletDetailName, object["orderOutletDetailName"]);
    });
  }

  Future<String> get orderSalesTypes async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.orderSalesTypes);
    });
  }


  Future<String> get orderSalesTypesCode async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.orderSalesTypesCode);
    });
  }


  Future<String> get orderMerchantName async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.orderMerchantName);
    });
  }

  Future<String> get orderOutletDetailName async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.orderOutletDetailName);
    });
  }

  Future<String> get orderProduct async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.orderProduct);
    });
  }

  Future<void> saveOrderProduct(String orderProduct) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.orderProduct, orderProduct);
    });
  }
}