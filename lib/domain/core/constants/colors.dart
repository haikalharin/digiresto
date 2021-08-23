import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // this basically makes it so you can't instantiate this class

  static const Map<int, Color> orange = const <int, Color>{
    50: const Color(0xFFFCF2E7),
    100: const Color(0xFFF8DEC3),
    200: const Color(0xFFF3C89C),
    300: const Color(0xFFEEB274),
    400: const Color(0xFFEAA256),
    500: const Color(0xFFE69138),
    600: const Color(0xFFE38932),
    700: const Color(0xFFDF7E2B),
    800: const Color(0xFFDB7424),
    900: const Color(0xFFD56217)
  };

  static final Color yellow = Color(0xFFFEC801); // Selects a mid-range green.
  static final Color red = Color(0xFFB31B22); // Selects a mid-range green.
  static final Color redYoung = Color(0xFFCE210E); // Selects a mid-range green.
  static final Color redTabBar = Color(0xFFC9272F);
  static final Color greyStroke = Color(0xFFEDEDED);
  static final Color greyDivider = Color(0xFFEAEAEA);
  static final Color greyFill = Color(0xFFFAFAFA);
  static final Color greyInput = Color(0xFFF3F3F3);
  static final Color greyField = Color(0xFF7A7A7A);
  static final Color greyCOC0C0 = Color(0xFFC0C0C0);
  static final Color cream = Color(0xFFFFECC7);
  static final Color backgroundPink = Color(0xFFFFE2E4);
  static final Color borderPink = Color(0xFFFFA5AA);

  static final Color black = Color(0xFF000000);
  static final Color white = Color(0xFFFFFFFF);

  static const Map<int, Color> grey = const <int, Color>{
    25: const Color(0xFFFAFAFA),
    50: const Color(0xFFF3F3F3),
    100: const Color(0xFF7A7A7A),
  };

  static const Color mainColor = Color(0xFFD12B34);
  static const Color mainColor2 = Color(0xFF970B14);
  static const Color backgroundColor = Color(0xFFB01A21);
  static const Color greyColor = Color(0xFFC9C9C9);
  static const Color greyColor1 = Color(0xFF575454);
  static const Color greyColor2 = Color(0xFFC4C4C4);
  static const Color shadowColor = Color(0xFF000000);
  static const Color badgeContentColor = Color(0xFFD10000);
  static const Color activeDotColor = Color(0xFFFFC800);
  static const Color dotColor = Colors.white;
  static const Color dividerColor = Color(0xFFEEEEEE);
  static const Color inputFillColor = Color(0xFFF7F5F7);
  static const Color yellowButtonColor = Color(0xFFFFC800);

  static Map<int, Color> mainColorSwatch = {
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
  static MaterialColor mainMaterialColor =
      MaterialColor(mainColor.value, mainColorSwatch);
}
