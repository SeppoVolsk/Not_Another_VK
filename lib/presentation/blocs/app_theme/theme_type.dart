import 'package:flutter/material.dart';

enum ThemeType { light, dark }

abstract class AppThemes {
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepOrange,
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
  static final ThemeData dark = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.blueGrey),
        titleTextStyle: TextStyle(color: Colors.grey[750], fontSize: 20),
        backgroundColor: Colors.grey,
      ));
}
