import 'package:flutter/material.dart';

//enum ThemeType { light, dark }

abstract class AppThemes {
  static final ThemeData light = ThemeData(
      brightness: Brightness.light,
      cardTheme: const CardTheme(shadowColor: Colors.blue, elevation: 5),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightBlue,
        iconTheme: IconThemeData(color: AppColors.darkBlue),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: Colors.white, size: 40),
        selectedItemColor: Colors.white,
      ));

  static final ThemeData dark = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.blueGrey),
        titleTextStyle: TextStyle(color: AppColors.darkBlue, fontSize: 20),
        backgroundColor: AppColors.lightGrey,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(color: Colors.white)));
}

abstract class AppColors {
  static const darkBlue = Color.fromRGBO(18, 55, 85, 1);
  static const lightBlue = Color.fromRGBO(129, 212, 250, 1);
  static const blueGradient =
      LinearGradient(colors: [AppColors.lightBlue, AppColors.darkBlue]);
  static const lightGrey = Color.fromRGBO(158, 158, 158, 1);
  static const greyGradient =
      LinearGradient(colors: [AppColors.lightGrey, Colors.grey]);
}
