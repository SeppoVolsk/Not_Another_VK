import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vk_postman/presentation/blocs/app_theme/appthemeentity.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';

class IAppThemeRepository {
  final themeStorageKey = 'theme';

  Future<AppThemeEntity> checkCurrentTheme() async {
    //final storage = await
    final currentThemeIndex =
        await FlutterSecureStorage().read(key: themeStorageKey);
    print('Read index theme from storage: $currentThemeIndex');

    return (int.parse(currentThemeIndex ?? '0')) == 0
        ? AppThemeEntity(appThemeMode: ThemeMode.light)
        : AppThemeEntity(appThemeMode: ThemeMode.dark);
  }

  Future<AppThemeEntity> changeTheme(ThemeMode currentThemeMode) async {
    final nextThemeIndex = currentThemeMode == ThemeMode.light ? 1 : 0;
    print('Current Theme : $currentThemeMode');
    print('Next Theme : $nextThemeIndex');
    await FlutterSecureStorage()
        .write(key: themeStorageKey, value: nextThemeIndex.toString());
    return currentThemeMode == ThemeMode.light
        ? AppThemeEntity(appThemeMode: ThemeMode.dark)
        : AppThemeEntity(appThemeMode: ThemeMode.light);
  }
}
