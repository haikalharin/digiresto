import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ErrorPopupWidget {
  static confirmation(String title, String message, void Function() runAction) {
    return showDialog(
        barrierDismissible: false,
        context: Get.context!,
        builder: (_) => new AlertDialog(
              title: Center(
                  child: Text(
                title,
                style: TextStyle(
                  fontFamily: "roboto",
                  //color: AppColors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
              content: Container(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      message.toString(),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                              child: Text(I10n.current.alert_cancel,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.redYoung)),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                runAction();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.redYoung,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                              child: Text(I10n.current.alert_ok,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  static show(String title, String message, void Function() runAction) {
    return showDialog(
        barrierDismissible: false,
        context: Get.context!,
        builder: (_) => new AlertDialog(
              title: Center(
                  child: Text(
                title,
                style: TextStyle(
                  fontFamily: "roboto",
                  //color: AppColors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
              content: Container(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      message.toString(),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          runAction();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.redYoung,
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                            side: BorderSide(
                              width: 1,
                              color: AppColors.redYoung,
                            ),
                          ),
                        ),
                        child: Text("Ok",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  static showLoginRequired(BuildContext context, void Function() cancelAction,
      void Function() runAction) {
    return showDialog(
        barrierDismissible: false,
        context: Get.context!,
        builder: (_) => new AlertDialog(
              title: Center(
                  child: Text(
                "Digiresto",
                style: TextStyle(
                  fontFamily: "roboto",
                  //color: AppColors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )),
              content: Container(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kamu harus login terlebih dahulu untuk dapat mengakses fitur ini",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 3 - 10,
                            child: ElevatedButton(
                              onPressed: cancelAction,
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                              child: Text("Batal",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.redYoung)),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 3 - 10,
                            child: ElevatedButton(
                              onPressed: runAction,
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.redYoung,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                              child: Text("Login",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
