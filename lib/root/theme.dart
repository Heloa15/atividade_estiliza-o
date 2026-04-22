import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get appTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFFFE873), // amarelo manteiga base
      primary: const Color(0xFFFFE873),
      secondary: const Color(0xFFFFD54F),
      surface: const Color(0xFFFFF8E1), // fundo amarelo bem clarinho
      onPrimary: Colors.black87,
      onSurface: Colors.black87,
    ),

    scaffoldBackgroundColor: const Color(0xFFFFF8E1),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFFFE873),
      foregroundColor: Colors.black87,
      centerTitle: true,
      elevation: 4,
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFFE873),
        foregroundColor: Colors.black87,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
        ),
        elevation: 4,
      ),
    ),

    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
        letterSpacing: 0.5,
      ),
      titleMedium: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: Color(0xFFFFD54F),
      ),
      bodyMedium: TextStyle(fontSize: 15, color: Colors.black54),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFD54F),
      ),
    ),

    dropdownMenuTheme: const DropdownMenuThemeData(
      textStyle: TextStyle(color: Colors.black87),
    ),
  );
}
