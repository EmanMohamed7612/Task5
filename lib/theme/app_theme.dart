import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: Colors.yellow[700],
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Arial',
    textTheme: const TextTheme(
      headlineSmall: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
      titleMedium: TextStyle(fontSize: 16, color: Colors.black87),
    ),
    inputDecorationTheme: InputDecorationTheme(
     filled: true,
      fillColor: Colors.white,
      prefixIconColor: Colors.yellow,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
    //  borderSide: BorderSide.none,
      ),
    ),
  );
}
