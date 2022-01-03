import 'package:digiresto/domain/core/theme.dart';
import 'package:digiresto/presentation/core/i10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogOrder {
  Future<void> dialogDriveThru({
    required bool? useSchedule,
    required TextEditingController? selectedDateController,
    required TextEditingController customerCarColorController,
    required TextEditingController customerCarNumberController,
    required TextEditingController customerCarTypeController,
    required Function() onTapCancel,
    required Function() onTapOk,
    required Function() onTapSelectDate,
    required String selectedKeyClock,
    required RxList dataClock,
  }) {
    return showDialog(
      context: Get.context!,
      builder: (BuildContext context) => new AlertDialog(
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: (useSchedule ?? false) ? 423 : 350,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Text(
                      I10n.current.cart_info_drive_thru,
                      style: AppFont.textBlack14Bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gunakan Jadwal",
                        style: TextStyle(
                          fontFamily: "roboto",
                          //color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Switch(
                        value: useSchedule!,
                        onChanged: (value) {
                          setState(() {
                            useSchedule = value;
                          });
                        },
                        activeTrackColor: Colors.redAccent,
                        activeColor: AppColors.redYoung,
                      )
                    ],
                  ),
                  useSchedule!
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                I10n.current.cart_schedule,
                                style: TextStyle(
                                  fontFamily: "roboto",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 10),
                                    child: TextField(
                                      textInputAction: TextInputAction.search,
                                      onSubmitted: (value) {},
                                      controller: selectedDateController,
                                      readOnly: true,
                                      onTap: onTapSelectDate,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                      decoration: InputDecoration(
                                        isDense: true,
                                        filled: true,
                                        fillColor: AppColors.greyFill,
                                        contentPadding: EdgeInsets.only(
                                            top: 12,
                                            bottom: 12,
                                            left: 10,
                                            right: 10),
                                        hintText: "Contoh, tidak pakai bawang",
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 32.0),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    width: 80,
                                    child: DropdownButtonFormField<String>(
                                      decoration: InputDecoration(
                                          isDense: true,
                                          filled: true,
                                          fillColor: AppColors.greyFill,
                                          contentPadding: EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                              left: 5,
                                              right: 5),
                                          border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          )),
                                      value: selectedKeyClock,
                                      items: dataClock
                                          .toList()
                                          .map((data) =>
                                              DropdownMenuItem<String>(
                                                child: Text(data.value!),
                                                value: data.key,
                                              ))
                                          .toList(),
                                      onChanged: (String? value) {
                                        setState(() {
                                          selectedKeyClock = value!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Container(),
                  Container(
                    child: Text(
                      "Tipe Kendaraan",
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _textFieldDialogOrder(
                    hintText: 'Motor / Mobil',
                    controller: customerCarTypeController,
                  ),
                  Container(
                    child: Text(
                      "Warna Kendaraan",
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _textFieldDialogOrder(
                    hintText: 'Warna Kendaraan Anda',
                    controller: customerCarColorController,
                  ),
                  Container(
                    child: Text(
                      "Nomor Kendaraan",
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _textFieldDialogOrder(
                    hintText: 'B **** XXX',
                    controller: customerCarNumberController,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 50,
                            child: ElevatedButton(
                              onPressed: onTapCancel,
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                              child: Text(
                                I10n.current.alert_cancel,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.redYoung,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 50,
                            child: ElevatedButton(
                              onPressed: onTapOk,
                              // onPressed: () {
                              //   Get.back(closeOverlays: true);
                              // },
                              child: Text(I10n.current.alert_ok,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  side: BorderSide(
                                    width: 1,
                                    color: AppColors.redYoung,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _textFieldDialogOrder({
    required String? hintText,
    required TextEditingController controller,
  }) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 10),
      child: TextField(
          textInputAction: TextInputAction.search,
          onSubmitted: (value) {},
          controller: controller,
          keyboardType: TextInputType.text,
          readOnly: false,
          onTap: () {},
          style: TextStyle(
            fontSize: 12.0,
          ),
          decoration: InputDecoration(
            isDense: true,
            filled: true,
            fillColor: AppColors.greyFill,
            contentPadding:
                EdgeInsets.only(top: 12, bottom: 12, left: 10, right: 10),
            hintText: hintText ?? "",
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 32.0),
                borderRadius: BorderRadius.circular(5)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(width: 1, color: Colors.black),
            ),
          )),
    );
  }
}
