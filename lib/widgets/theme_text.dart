import 'package:flutter/material.dart';
import 'package:boilerplate/constants/font_family.dart';

class ThemeText {
  ThemeText._(); // this basically makes it so you can't instantiate this class
  static final TextStyle onboardingTitle = TextStyle(
      fontFamily: FontFamily.roboto,
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold);

  static final TextStyle onboardingDesciption = TextStyle(
      fontFamily: FontFamily.roboto,
      color: Colors.white,
      fontSize: 16,
  );

  static final TextStyle headerTitle = TextStyle(
      fontFamily: FontFamily.roboto,
      color: Colors.white,
      fontSize: 25,
      fontWeight: FontWeight.bold);

}
