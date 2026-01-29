import 'package:flutter/material.dart';

class AppTheme {
  // AURA Branding Colors
  static const primaryTeal = Color(0xFF008080);
  static const secondaryBlue = Color(0xFF2196F3);

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: primaryTeal,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryTeal,
      foregroundColor: Colors.white,
      centerTitle: true,
    ),
  );
}
