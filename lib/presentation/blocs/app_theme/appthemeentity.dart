import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vk_postman/presentation/blocs/app_theme/theme_type.dart';

part 'appthemeentity.freezed.dart';

@freezed
class AppThemeEntity with _$AppThemeEntity {
  factory AppThemeEntity({ThemeMode? appThemeMode}) = _AppThemeEntity;
}
