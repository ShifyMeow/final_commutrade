import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // --- PRIVATE CONSTANTS ---
  static const _primaryColor = Color(0xFF6200EE);
  static const _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: _primaryColor,
    onPrimary: Colors.white,
    secondary: Color(0xFF03DAC6),
    onSecondary: Colors.black,
    error: Color(0xFFB00020),
    onError: Colors.white,
    background: Color(0xFFFFFFFF),
    onBackground: Colors.black,
    surface: Color(0xFFF5F5F5),
    onSurface: Colors.black,
  );

  static const _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFBB86FC),
    onPrimary: Colors.black,
    secondary: Color(0xFF03DAC6),
    onSecondary: Colors.black,
    error: Color(0xFFCF6679),
    onError: Colors.black,
    background: Color(0xFF121212),
    onBackground: Colors.white,
    surface: Color(0xFF1E1E1E),
    onSurface: Colors.white,
  );

  // --- PRIVATE METHOD FOR BORDER STYLING ---
  static final OutlineInputBorder _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide: const BorderSide(
      width: 1.5,
    ),
  );

  // --- *** THE NEW CODE IS HERE *** ---
  // A reusable InputDecorationTheme for all TextFields
  static final _inputDecorationTheme = InputDecorationTheme(
    border: _border,
    enabledBorder: _border.copyWith(
      borderSide: BorderSide(
        color: Colors.grey.shade400,
        width: 1.5,
      ),
    ),
    focusedBorder: _border.copyWith(
      borderSide: const BorderSide(
        color: _primaryColor,
        width: 2.0,
      ),
    ),
    prefixIconColor: Colors.grey,
    // This adds the 'x' button to clear the text
    suffixIconColor: Colors.grey,
    floatingLabelStyle: const TextStyle(color: _primaryColor),
  );

  // --- PUBLIC THEME DEFINITIONS ---
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: _lightColorScheme,
    textTheme: GoogleFonts.interTextTheme(ThemeData.light().textTheme),
    cardTheme: CardTheme(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    // Apply the new InputDecorationTheme
    inputDecorationTheme: _inputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: _darkColorScheme,
    textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
    cardTheme: CardTheme(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    // Apply the new InputDecorationTheme, but with dark mode colors
    inputDecorationTheme: _inputDecorationTheme.copyWith(
      enabledBorder: _border.copyWith(
        borderSide: BorderSide(
          color: Colors.grey.shade700,
          width: 1.5,
        ),
      ),
      focusedBorder: _border.copyWith(
        borderSide: const BorderSide(
          color: _darkColorScheme.primary,
          width: 2.0,
        ),
      ),
      prefixIconColor: Colors.grey.shade400,
      suffixIconColor: Colors.grey.shade400,
      floatingLabelStyle: const TextStyle(color: _darkColorScheme.primary),
    ),
  );
}