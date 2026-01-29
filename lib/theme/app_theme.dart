import 'package:flutter/material.dart';

class AppTheme {
  // AURA Modern Branding Colors
  static const primaryPurple = Color(0xFF4A148C); // Deep Purple
  static const accentPurple = Color(0xFF7B1FA2); // Lighter Purple for buttons
  static const backgroundGrey =
      Color(0xFFF5F5F5); // Light grey for a clean look

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryPurple,
      primary: primaryPurple,
      onPrimary: Colors.white,
      secondary: accentPurple,
      surface: Colors.white,
    ),
    scaffoldBackgroundColor: backgroundGrey,

    // Modern AppBar Styling
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryPurple,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
    ),

    // Modern Button Styling
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryPurple,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
      ),
    ),
  );
}
