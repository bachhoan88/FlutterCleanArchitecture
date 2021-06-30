import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/gen/colors.gen.dart';

const defaultLetterSpacing = 0.03;
const mediumLetterSpacing = 0.04;
const largeLetterSpacing = 1.0;

final ThemeData defaultTheme = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: ColorName.backgroundColor,
  fontFamily: 'Muli',
  appBarTheme: const AppBarTheme(
    color: ColorName.backgroundColor,
    iconTheme: IconThemeData(color: ColorName.accentLightColor),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: ColorName.accentLightColor,
    disabledColor: ColorName.primaryColorDark,
  ),
  textTheme: _buildTextTheme()
);

TextTheme _buildTextTheme() {
  return const TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.w400,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.w700,
    ),
    headline3: TextStyle(
      fontWeight: FontWeight.w900,
    ),
    headline4: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20.0,
      color: Colors.black87,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    headline6: TextStyle(
      fontWeight: FontWeight.w700,
    ),
    subtitle1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    subtitle2: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
    bodyText1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: Colors.black45,
    ),
    button: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 13,
    ),
    caption: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    overline: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
  );
}