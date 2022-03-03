import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UiTextStyle {
    static UiTextStyle instance = UiTextStyle._init();

  UiTextStyle._init();
  static TextStyle heading1 = GoogleFonts.playfairDisplay(
    fontSize: 36,
    fontWeight: FontWeight.w700,
  );

  final TextStyle bodyBold =
      GoogleFonts.karla(fontSize: 16, fontWeight: FontWeight.w700);
  final TextStyle bodyRegular = GoogleFonts.karla(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  final TextStyle bodyMedium = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  final TextStyle body =
      GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w400);

  final TextStyle categoryTitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Color(0xff27A9F7),
  );

  final TextStyle categoryQuizLength = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color(0xff999999),
  );

  final TextStyle categoryRating = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  final TextStyle hello = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  final TextStyle letsTestYourKnowledge = const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

}