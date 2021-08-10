import 'dart:core';

import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:digiresto/domain/core/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawThreeDigits extends StatelessWidget {
  final number;
  @override
  DrawThreeDigits({
    Key? key,
    @required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formatNumber = "Rp. " + Utils.formatRupiah(number);
    String lastDigit;
    String firstDigit;
    if (number.length > 3) {
      lastDigit = formatNumber.substring(formatNumber.length - 3);
      int charNumber = (formatNumber.length - 3);
      firstDigit = formatNumber.substring(0, charNumber);
    } else {
      lastDigit = number;
      firstDigit = "";
    }
    return Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Row(
          children: [
            Text(firstDigit,
                style: TextStyle(
                  fontFamily: "roboto",
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.start),
            Text(lastDigit,
                style: TextStyle(
                  fontFamily: "roboto",
                  color: AppColors.redYoung,
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.start),
          ],
        ));
  }
}
