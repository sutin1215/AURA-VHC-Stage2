import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.teal;
  static const secondaryColor = Colors.blueAccent;

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: primaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
}
