import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vk_postman/presentation/blocs/app_theme/appthemeentity.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';

class IAppThemeRepository {
  final ThemeData _light = ThemeData.light();
  final ThemeData _dark = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.blue),
          focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(style: BorderStyle.solid, color: Colors.blue),
          )));

  final themeStorageKey = 'theme';

  Future<AppThemeEntity> checkCurrentTheme() async {
    //final storage = await
    final currentThemeIndex =
        await FlutterSecureStorage().read(key: themeStorageKey);
    print('Read index theme from storage: $currentThemeIndex');

    return (int.parse(currentThemeIndex ?? '0')) == 0
        ? AppThemeEntity(appTheme: _light)
        : AppThemeEntity(appTheme: _dark);
  }

  Future<AppThemeEntity> changeTheme(ThemeType currentTheme) async {
    final nextThemeIndex = currentTheme.index == 0 ? 1 : 0;
    print('Current Theme Index: ${currentTheme.index}');
    print('Next Theme Index: $nextThemeIndex');
    await FlutterSecureStorage()
        .write(key: themeStorageKey, value: nextThemeIndex.toString());
    return currentTheme == ThemeType.light
        ? AppThemeEntity(appTheme: _dark)
        : AppThemeEntity(appTheme: _light);
  }
}
