import 'package:fitness_tracker/core/configs/core_theme.dart';
import 'package:flutter/material.dart';

enum AppTheme {
  LightAppTheme,
  DarkAppTheme,
}
final appThemeData = {
  AppTheme.DarkAppTheme: themeLight,
  AppTheme.LightAppTheme: themeDark
};