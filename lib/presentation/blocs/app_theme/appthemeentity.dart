import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appthemeentity.freezed.dart';

@freezed
class AppThemeEntity with _$AppThemeEntity {
  factory AppThemeEntity({ThemeData? appTheme}) = _AppThemeEntity;
}
