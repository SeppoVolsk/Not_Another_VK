import 'package:flutter/material.dart';

//enum ThemeType { light, dark }

abstract class AppThemes {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    cardTheme: const CardTheme(shadowColor: Colors.blue, elevation: 5),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.lightBlue[200],
      iconTheme: const IconThemeData(color: Colors.blue),
    ),
  );
  static final ThemeData dark = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.blueGrey),
        titleTextStyle: TextStyle(color: Colors.grey[750], fontSize: 20),
        backgroundColor: Colors.grey,
      ));
}

abstract class AppColors {
  static const darkBlue = Color.fromRGBO(18, 55, 85, 1);
}
