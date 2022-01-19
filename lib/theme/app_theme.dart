import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0XFF0A0E21);
  static const activeCardColour = Color(0XFF1D1E33);
  static const inactiveCardColour = Color(0XFF111328);
  static const contrastColour = Color(0XFFEB1555);
  static const buttonColour = Color(0xFF4C4F5E);
  static const contrastTransparencyColour = Color(0X29EB1555);
  static const textColor = Color(0XFF8D8E98);

  static const bmiTextStyle = TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.bold,
  );
  static const resultTextStyle = TextStyle(
    fontSize: 22,
    color: Color(0xFF24D876),
    fontWeight: FontWeight.bold,
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    textTheme: darkTextTheme,
    scaffoldBackgroundColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: Colors.white,
      inactiveTrackColor: textColor,
      thumbColor: contrastColour,
      overlayColor: contrastTransparencyColour,
      thumbShape: RoundSliderThumbShape(
        enabledThumbRadius: 15,
      ),
      overlayShape: RoundSliderOverlayShape(
        overlayRadius: 30,
      ),
    ),
    cardColor: activeCardColour,
  );

  static const TextTheme darkTextTheme = TextTheme(
    bodyText1: TextStyle(
      fontSize: 22,
    ),
    headline4: TextStyle(
      fontSize: 18,
      color: textColor,
    ),
    headline3: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    headline1: TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.w900,
    ),
  );
}
