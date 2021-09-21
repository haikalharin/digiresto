import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

/*loading library*/
class Loading {
  int counter;

  Loading({this.counter = 0});

  void add() {
    counter++;
  }

  void delete() {
    if (this.counter >= 0) {
      counter--;
    }
  }

  static void configLoading() {
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.ring
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.white
      ..backgroundColor = Colors.transparent
      ..indicatorColor = AppColors.mainColor
      ..textColor = Colors.yellow
      ..maskColor = Colors.grey.withOpacity(0.7)
      ..userInteractions = false
      ..dismissOnTap = false;
  }

  static void show() {
    EasyLoading.show(
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.custom,
    );
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }

  static void toast(String message) {
    EasyLoading.showToast(message.toString());
  }

  static Widget smallLoading(bool show) {
    return show
        ? Container(
            height: 40,
            child: SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor:
                    new AlwaysStoppedAnimation<Color>(AppColors.redYoung),
              ),
            ),
          )
        : Container();
  }
}
