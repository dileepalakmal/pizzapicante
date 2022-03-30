import 'package:flutter/material.dart';

class AppThemeData {

  static const Color pureColorBlack = Color.fromRGBO(21, 21, 21, 1.0);
  static Color appColorBlackWithOpacity = Colors.black.withOpacity(0.1);
  static const Color appColorDarkGrey = Color.fromRGBO(50, 50, 50, 1.0);
  static const Color appColorGrey = Colors.grey;
  static const Color appColorLightGrey = Color.fromRGBO(168, 168, 168, 1.0);
  static const Color appColorWhite = Color.fromARGB(255, 243, 243, 243);
  static const Color pureColorWhite = Color.fromARGB(255, 255, 255, 255);
  static const Color appColorRed = Color.fromRGBO(252, 19, 19, 1.0);

  static const double appCornerRadius = 20.0;

  // Light Theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    primaryColor: pureColorBlack,
    backgroundColor: pureColorBlack,
    scaffoldBackgroundColor: pureColorWhite,
    //fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(color: pureColorBlack, elevation: 0.0),
    iconTheme: const IconThemeData(color: pureColorWhite),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: appColorGrey,
      selectionColor: pureColorBlack,
      selectionHandleColor: appColorGrey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(pureColorBlack),
        foregroundColor: MaterialStateProperty.all<Color>(pureColorWhite),
      ),
    ),
  );
}
