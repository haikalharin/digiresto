import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color mainColor = Color(0xFFD12B34);
const Color mainColor2 = Color(0xFF970B14);
const Color backgroundColor = Color(0xFFB01A21);
const Color greyColor = Color(0xFFC9C9C9);
const Color greyColor1 = Color(0xFF575454);
const Color greyColor2 = Color(0xFF858585);
const Color shadowColor = Color(0xFF000000);
const Color badgeContentColor = Color(0xFFD10000);
const Color activeDotColor = Color(0xFFFFC800);
const Color dotColor = Colors.white;
const Color dividerColor = Color(0xFFEEEEEE);
const Color inputFillColor = Color(0xFFF7F5F7);
const Color yellowButtonColor = Color(0xFFFFC800);

Map<int, Color> mainColorSwatch = {
  50: mainColor.withOpacity(.1),
  100: mainColor.withOpacity(.2),
  200: mainColor.withOpacity(.3),
  300: mainColor.withOpacity(.4),
  400: mainColor.withOpacity(.5),
  500: mainColor.withOpacity(.6),
  600: mainColor.withOpacity(.7),
  700: mainColor.withOpacity(.8),
  800: mainColor.withOpacity(.9),
  900: mainColor.withOpacity(1),
};

MaterialColor mainMaterialColor =
    MaterialColor(mainColor.value, mainColorSwatch);

const double defaultBorderRadius = 10;
const double defaultMargin = 22;
const double defaulCardPadding = 18;

TextStyle titleStyle = GoogleFonts.poppins(
    color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);

TextStyle introTitleStyle = GoogleFonts.poppins(
    color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);

TextStyle introDescStyle = GoogleFonts.poppins(
    color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400);

TextStyle welcomeStyle = GoogleFonts.poppins(
    color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600);

TextStyle checkBoxLabelStyle = GoogleFonts.poppins(
    color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400);

TextStyle buttonLabelStyle = GoogleFonts.poppins(
    color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400);

TextStyle loginTitleStyle = GoogleFonts.poppins(
    color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700);

TextStyle loginDescStyle = GoogleFonts.poppins(
    color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400);

TextStyle inputStyle = GoogleFonts.poppins(
    color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400);

TextStyle hintStyle = GoogleFonts.poppins(
    color: greyColor1, fontSize: 16, fontWeight: FontWeight.w400);
