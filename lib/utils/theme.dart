import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  ///////// Light Theme
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(color: Colors.amberAccent),
      accentColor: Colors.amber);

  ////////////// Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(color: Color(0xFF0A0D22)),
    scaffoldBackgroundColor: Color(0xFF0A0D22),
    accentColor: Colors.cyan[600],
  );
}
