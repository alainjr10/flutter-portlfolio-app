import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// const kPrimaryColor = Color(0xFF110120);
const kPrimaryColor = Color(0xFF202121);
const kOnPrimaryColor = Color(0xFFE5E5E5);

TextStyle kH3TextStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 28.0,
  fontWeight: FontWeight.w600,
  letterSpacing: 2.0,
);
TextStyle kH4TextStyle = GoogleFonts.roboto(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 2.0,
  wordSpacing: 5.0,
);
TextStyle kH5TextStyle = GoogleFonts.roboto(
  color: Colors.white70,
  fontSize: 15.0,
  fontWeight: FontWeight.w300,
  letterSpacing: 2.0,
  wordSpacing: 5.0,
);
ButtonStyle kHeadingTextButtonStyle = TextButton.styleFrom(
  foregroundColor: Colors.white,
  textStyle: GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 18.0,
    letterSpacing: 2.5,
  ),
);

const double kMobileScreenSize = 900.0;
const double kSmallerMobileScreenSize = 620.0;

const MaterialColor kPrimaryColorShades = MaterialColor(
  0xFF110120,
  <int, Color>{
    50: Color(0xFF110120),
    100: Color(0xFFA4A4BF),
    200: Color(0xFFA4A4BF),
    300: Color(0xFF9191B3),
    400: Color(0xFF7F7FA6),
    500: Color(0xFF181861),
    600: Color(0xFF6D6D99),
    700: Color(0xFF5B5B8D),
    800: Color(0xFF494980),
    900: Color(0xFF181861),
  },
);
