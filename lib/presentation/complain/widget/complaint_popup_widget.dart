import 'package:digiresto/domain/core/constants/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ComplaintPopupWidget {
  static show(String title, String message, void Function() runAction) {
    return showDialog(
        barrierDismissible: false,
        context: Get.context!,
        builder: (_) => new AlertDialog(
              content: Container(
                height: MediaQuery.of(Get.context!).size.height * 0.5,
                width: MediaQuery.of(Get.context!).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: SvgPicture.asset('assets/message_send_icon.svg'),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                fontFamily: "roboto",
                                //color: AppColors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                          ],
                        )),
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
}
