import 'package:flutter/material.dart';

class AppColor {
  static const primary = Color(0xff1A5F28);
  static const secondary = Color(0xff29883D);
  static const backgroundColor = Color(0xffE8F1E9);
  static const MaterialColor primaryswatch =
      MaterialColor(_primaryswatchPrimaryValue, <int, Color>{
    50: Color(0xFFE4ECE5),
    100: Color(0xFFBACFBF),
    200: Color(0xFF8DAF94),
    300: Color(0xFF5F8F69),
    400: Color(0xFF3C7748),
    500: Color(_primaryswatchPrimaryValue),
    600: Color(0xFF175724),
    700: Color(0xFF134D1E),
    800: Color(0xFF0F4318),
    900: Color(0xFF08320F),
  });
  static const int _primaryswatchPrimaryValue = 0xFF1A5F28;

  static const MaterialColor primaryswatchAccent =
      MaterialColor(_primaryswatchAccentValue, <int, Color>{
    100: Color(0xFF6CFF7E),
    200: Color(_primaryswatchAccentValue),
    400: Color(0xFF06FF24),
    700: Color(0xFF00EB1D),
  });
  static const int _primaryswatchAccentValue = 0xFF39FF51;
}