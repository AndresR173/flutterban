import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    final ThemeData themeData = ThemeData();
    final theme = ThemeData(
      primaryTextTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.white),
      ),
      primaryColor: Colors.red,
      fontFamily: 'Montserrat',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          minimumSize: const Size(150, 50),
          maximumSize: const Size(300, 50),
          backgroundColor: Colors.red,
          disabledForegroundColor: Colors.black38,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          textStyle: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.red,
          minimumSize: const Size(double.infinity, 50),
          disabledForegroundColor: Colors.black38.withOpacity(0.38),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: const BorderSide(color: Colors.red),
          textStyle: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: Colors.red,
        textStyle: const TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w700,
        ),
      )),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 27.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        displayMedium: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        displaySmall: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        headlineMedium: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        headlineSmall: TextStyle(
          fontSize: 23.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        titleLarge: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        titleMedium: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
        titleSmall: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      ),
      colorScheme: themeData.colorScheme
          .copyWith(
            secondary: Colors.blue,
            primary: Colors.red,
            background: Colors.white,
          )
          .copyWith(background: Colors.white),
    );
    return theme;
  }
}
