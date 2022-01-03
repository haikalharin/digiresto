import 'dart:io';

class Strings {
  Strings._();

  //General
  static const String appName = "Digiresto";
  static const String wabaNo = "mobileapi";
  static String mGoogleApiKey = Platform.isIOS
      ? "AIzaSyDQtgc8I5O9DcSYSx5SHNz3c7uwWna6d4g"
      : "AIzaSyDzaU6on7iwGxmK3G-yYwmiOI-tThcuhJ0";

  static const titleNearby = "Terdekat";
  static const titleDigidiscount = "DigiDiskon";
  static const titleFrozenFood = "Frozen Food";
  static const titleIndonesiaPastiBisa = "Indonesia Pasti Bisa";
}
