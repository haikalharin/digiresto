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
  static final Color greyStroke = Color(0xFFEDEDED);
  static final Color greyFill = Color(0xFFFAFAFA);
  static final Color greyInput = Color(0xFFF3F3F3);
  static final Color cream = Color(0xFFFFECC7);

  static const Map<int, Color> grey = const <int, Color>{
    25: const Color(0xFFFAFAFA),
    50: const Color(0xFFF3F3F3),
    100: const Color(0xFF7A7A7A),
  };
}
