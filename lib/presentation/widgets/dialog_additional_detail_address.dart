import 'package:digiresto/application/order/order_cart_screen_view_controller.dart';
import 'package:digiresto/domain/core/constants/font.dart';
import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/widgets/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DialogAdditionalAddress extends GetView<OrderCartScreenViewController> {
  final locationDetailController = TextEditingController();
  final notesController = TextEditingController();
  final String currentAddress;
  final BuildContext context;
  DialogAdditionalAddress(this.context, this.currentAddress);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        height: 480,
        width: 380,
        child: Stack(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Detail Location",
                        style: AppFont.textBlack19Bold,
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text(
                              "X",
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Address",
                    style: AppFont.textBlack13SemiBold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.mainColor,
                        width: 2,
                      ),
                    ),
                    child: Text(
                      controller.activeAddress.value!.address.toString(),
                      maxLines: 4,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Location Detail",
                    style: AppFont.textBlack13SemiBold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.mainColor,
                        width: 2,
                      ),
                    ),
                    child: TextField(
                      controller: controller.locationDetailCOntroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Notes",
                    style: AppFont.textBlack13SemiBold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.mainColor,
                        width: 2,
                      ),
                    ),
                    child: TextField(
                      controller: controller.notesController,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    child: Text(
                      "Update Address",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold),
                    ),
                    color: AppColors.mainColor,
                    onPressed: () {
                      var updateValue = UpdateDetailLocation(
                          locationDetail:
                              controller.locationDetailCOntroller.text,
                          notes: controller.notesController.text);
                      Navigator.pop(context, updateValue);
                    },
                    fontColor: AppColors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UpdateDetailLocation {
  String? locationDetail;
  String? notes;
  UpdateDetailLocation({this.locationDetail, this.notes});
}
