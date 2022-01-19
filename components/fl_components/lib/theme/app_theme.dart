import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.orange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo[900],
      appBarTheme: AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: Colors.indigo),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo, shape: const StadiumBorder(), elevation: 0),
      ));
}