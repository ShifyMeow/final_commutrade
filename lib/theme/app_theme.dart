import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTheme {
// --- 1. Color Palette ---
  static const Color primaryColor = Color(0xFF2C3E50);
  static const Color secondaryColor = Color(0xFF3498DB);
  static const Color accentColor = Color(0xFFFD7A2E);
// Light Mode Colors
  static const Color lightBackgroundColor = Color(0xFFF4F6F8);
  static const Color lightSurfaceColor = Colors.white;
// Dark Mode Colors
  static const Color darkBackgroundColor = Color(0xFF1C1C1E);
  static const Color darkSurfaceColor = Color(0xFF2C2C2E);
// --- 2. Light Text Theme ---
  static final TextTheme _lightTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold, color: primaryColor),
    headlineMedium: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold, color: primaryColor),
    titleLarge: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
    titleMedium: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
    bodyLarge: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.black54),
    labelLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
  );
// --- 3. Dark Text Theme ---
  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    titleLarge: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    bodyLarge: GoogleFonts.poppins(fontSize: 16, color: Colors.white70),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.white54),
    labelLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
  );
// --- 4. The Light Theme Definition ---
  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: lightBackgroundColor,
        colorScheme: const ColorScheme.light(
          primary: primaryColor,
          secondary: secondaryColor,
          surface: lightSurfaceColor,
          background: lightBackgroundColor,
        ),
        textTheme: _lightTextTheme,
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            textStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )
    );
  }
// --- 5. The Dark Theme Definition ---
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: darkBackgroundColor,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: darkSurfaceColor,
        background: darkBackgroundColor,
      ),
      textTheme: _darkTextTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: darkSurfaceColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: GoogleFonts.poppins(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor, // Use a brighter button color in dark mode
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      cardTheme: const CardTheme(color: darkSurfaceColor),
    );
  }
}