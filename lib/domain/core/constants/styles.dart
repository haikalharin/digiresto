import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class Styles {
  Styles._();

  static TextStyle titleStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);

  static TextStyle introTitleStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);

  static TextStyle introDescStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle welcomeStyle = GoogleFonts.poppins(
      color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600);

  static TextStyle checkBoxLabelStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle buttonLabelStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle loginTitleStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700);

  static TextStyle loginDescStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400);

  static TextStyle inputStyle = GoogleFonts.poppins(
      color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle hintStyle = GoogleFonts.poppins(
      color: AppColors.greyColor1, fontSize: 16, fontWeight: FontWeight.w400);

  static TextStyle modiferTempStyle = GoogleFonts.poppins(
      color: AppColors.redYoung, fontSize: 14, fontWeight: FontWeight.w600);

  static TextStyle pinTitleStyle = GoogleFonts.poppins(
      color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700);

  static TextStyle loginPinDescStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold);

  static TextStyle whiteFontStyle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400);
}
