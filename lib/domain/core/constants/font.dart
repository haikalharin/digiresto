import 'package:digiresto/domain/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  AppFont._();
  static String productSans = "ProductSans";
  static String roboto = "Roboto";
  static TextStyle textRed14SemiBold = GoogleFonts.poppins(
      color: AppColors.redYoung, fontSize: 14, fontWeight: FontWeight.w600);

  static TextStyle textBlack12Regular = GoogleFonts.poppins(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle textRed10Regular = GoogleFonts.poppins(
      color: AppColors.redYoung, fontSize: 10, fontWeight: FontWeight.w400);
  static TextStyle textBlack12Medium = GoogleFonts.poppins(
      color: AppColors.black, fontSize: 12, fontWeight: FontWeight.w500);

  static TextStyle textBlack15Bold = GoogleFonts.poppins(
      color: AppColors.black, fontSize: 15, fontWeight: FontWeight.w700);
  static TextStyle textBlack13SemiBold = GoogleFonts.poppins(
      color: AppColors.black, fontSize: 13, fontWeight: FontWeight.w600);

  static TextStyle textRed14Bold = GoogleFonts.poppins(
      color: AppColors.redYoung, fontSize: 14, fontWeight: FontWeight.w700);
}
