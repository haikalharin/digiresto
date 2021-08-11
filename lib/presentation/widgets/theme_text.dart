import 'package:digiresto/domain/core/constants/font.dart';
import 'package:flutter/material.dart';

class ThemeText {
  ThemeText._(); // this basically makes it so you can't instantiate this class
  static final TextStyle onboardingTitle = TextStyle(
      fontFamily: AppFont.roboto,
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold);

  static final TextStyle onboardingDesciption = TextStyle(
    fontFamily: AppFont.roboto,
    color: Colors.white,
    fontSize: 16,
  );

  static final TextStyle headerTitle = TextStyle(
      fontFamily: AppFont.roboto,
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold);
}
