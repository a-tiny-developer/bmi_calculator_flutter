import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0XFF0A0E21);
  static const activeCardColour = Color(0XFF1D1E33);
  static const bottomContainerColour = Color(0XFFEB1555);

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
