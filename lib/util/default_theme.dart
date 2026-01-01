import 'package:flutter/material.dart';

class DefaultTheme {
  static ThemeData lightMode = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF000000),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Colors.lightGreen,
      onSecondary: Color(0xFFFFFFFF),
      error: Color(0xFFFF3B30),
      onError: Color(0xFFFFFFFF),
      surface: Color(0xFFECECF0),
      onSurface: Color(0xFF000000),
    ),
  );

  static ThemeData darkMode = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFFFFFF),
      onPrimary: Color(0xFF000000),
      secondary: Colors.lightGreen,
      onSecondary: Color(0xFFFFFFFF),
      error: Color(0xFFFF453A),
      onError: Color(0xFFFFFFFF),
      surface: Color(0xFF121212),
      onSurface: Color(0xFFFFFFFF),
    ),
  );
}
