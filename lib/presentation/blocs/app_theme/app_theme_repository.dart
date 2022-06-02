import 'package:flutter/material.dart';
import 'package:vk_postman/presentation/blocs/app_theme/appthemeentity.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';

class IAppThemeRepository {
  final ThemeData _light = ThemeData.light();
  final ThemeData _dark = ThemeData.dark();

  AppThemeEntity checkCurrentTheme() {
    return AppThemeEntity(appTheme: _light);
  }

  AppThemeEntity changeTheme(ThemeType type) {
    return type == ThemeType.light
        ? AppThemeEntity(appTheme: _light)
        : AppThemeEntity(appTheme: _dark);
  }
}
