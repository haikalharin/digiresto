import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
/*loading library*/
class Loading {
  int counter;

  Loading({this.counter=0});

  void add(){
    counter++;
  }

  void delete(){
    counter--;
  }

  static void configLoading() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.white
      ..backgroundColor = Colors.transparent
      ..indicatorColor = Colors.red
      ..textColor = Colors.yellow
      ..maskColor = Colors.blue.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false;
  }

  static void show(){
    EasyLoading.show(
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.clear,
    );
  }

  static void dismiss(){
    EasyLoading.dismiss();
  }

  static void toast(String message){
    EasyLoading.showToast(message.toString());
  }
}