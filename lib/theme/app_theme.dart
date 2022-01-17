import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0XFF0A0E21);
  static const activeCardColour = Color(0XFF1D1E33);
  static const inactiveCardColour = Color(0XFF111328);
  static const bottomContainerColour = Color(0XFFEB1555);
  static const textColor = Color(0xFF8D8E98);

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
    ),
    textTheme: darkTextTheme,
  );

  static const TextTheme darkTextTheme = TextTheme(
    headline4: TextStyle(
      fontSize: 18,
      color: textColor
    ),
  );
}
