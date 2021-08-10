import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeText {
  ThemeText._(); // this basically makes it so you can't instantiate this class
  static final TextStyle onboardingTitle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold);

  static final TextStyle onboardingDesciption = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: 16,
  );

  static final TextStyle headerTitle = GoogleFonts.poppins(
      color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
}
