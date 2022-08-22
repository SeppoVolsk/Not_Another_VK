import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:vk_postman/presentation/blocs/app_theme/appthemeentity.dart';

class IAppThemeRepository {
  final themeStorageKey = 'theme';

  Future<AppThemeEntity> checkCurrentTheme() async {
    //final storage = await
    final currentThemeIndex =
        await const FlutterSecureStorage().read(key: themeStorageKey);
    print('Read index theme from storage: $currentThemeIndex');

    return (int.parse(currentThemeIndex ?? '0')) == 0
        ? AppThemeEntity(appThemeMode: ThemeMode.light)
        : AppThemeEntity(appThemeMode: ThemeMode.dark);
  }

  Future<AppThemeEntity> changeTheme(ThemeMode currentThemeMode) async {
    final nextThemeIndex = currentThemeMode == ThemeMode.light ? 1 : 0;
    print('Current Theme : $currentThemeMode');
    print('Next Theme : $nextThemeIndex');
    await const FlutterSecureStorage()
        .write(key: themeStorageKey, value: nextThemeIndex.toString());
    return currentThemeMode == ThemeMode.light
        ? AppThemeEntity(appThemeMode: ThemeMode.dark)
        : AppThemeEntity(appThemeMode: ThemeMode.light);
  }
}
