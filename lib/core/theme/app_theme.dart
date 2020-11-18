import 'package:flutter/material.dart';

ThemeData appThemeData() {
  final primaryColor = Color(0xFF806A6A);
  final accentColor = Color(0xFFB9ABAB);
  final backgroundColor = Color(0xFFEFEAEA);

  return ThemeData(
    primaryColor: primaryColor,
    accentColor: accentColor,
    backgroundColor: backgroundColor,
    fontFamily: 'SF Pro Text',
  );
}
