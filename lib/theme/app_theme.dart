import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xFF0A0E21);

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
    ),
    // textTheme: darkTextTheme,
  );

  // static const TextTheme darkTextTheme = TextTheme(
  //   bodyText1: TextStyle(
  //     color: Colors.white,
  //   ),
  // );
}
