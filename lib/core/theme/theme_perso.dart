import 'package:flutter/material.dart';

class ThemePerso {
  //Mode Clair
  static final ThemeData modeClair = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.light,
      primary: Colors.pink,
      secondary: Colors.deepOrange,
      tertiary: Colors.yellow,
    ),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
    ),
  );

  //Mode Sombre
  static final ThemeData modeSombre = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.red,
      brightness: Brightness.dark,
      primary: Colors.teal,
      secondary: Colors.amber,
      tertiary: Colors.lime,
    ),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.cyan,
      foregroundColor: Colors.black,
    ),
  );
}
