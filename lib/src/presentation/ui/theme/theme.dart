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
    displayLarge: TextStyle(
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.w900,
    ),
    headlineMedium: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20.0,
      color: Colors.black87,
    ),
    headlineSmall: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
    bodyLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: Colors.black45,
    ),
    labelLarge: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 13,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    labelSmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
  );
}