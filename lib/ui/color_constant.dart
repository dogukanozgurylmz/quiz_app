import 'package:flutter/material.dart';

class ColorConstant {
  static ColorConstant instance = ColorConstant._init();
  ColorConstant._init();

  final Color kWhite = const Color.fromRGBO(255, 255, 255, 1);
  final Color kBlack = const Color.fromRGBO(18, 21, 21, 1);
  final Color kGreen = const Color.fromRGBO(25, 165, 74, 1);
  final Color kGrey = const Color.fromRGBO(249, 250, 251, 1);
}