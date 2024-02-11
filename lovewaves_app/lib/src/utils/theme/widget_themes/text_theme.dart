import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovewaves_app/src/constants/colors.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: GoogleFonts.montserrat(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      textStyle: const TextStyle(
        shadows: [
      Shadow(
        color: Colors.grey,
        offset: Offset(3, 2),
        blurRadius: 5,
      ),
    ],
      ),
    ),
    headlineMedium: GoogleFonts.montserrat(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.montserrat(
      color: appPrimaryColor,
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    titleMedium: GoogleFonts.poppins(color: const Color.fromARGB(255, 10, 10, 10), fontSize: 20),
    titleSmall: GoogleFonts.poppins(color: Colors.black, fontSize: 15),
    bodySmall: GoogleFonts.poppins(color: appPrimaryColor),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineMedium: GoogleFonts.montserrat(color: Colors.white70),
    titleMedium: GoogleFonts.poppins(color: Colors.white60, fontSize: 20),
    titleSmall: GoogleFonts.poppins(color: Colors.white60, fontSize: 15),
  );
}
