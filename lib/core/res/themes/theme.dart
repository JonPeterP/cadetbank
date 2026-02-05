
import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:flutter/material.dart';

part 'elevated_button_theme.dart';
part 'text_theme.dart';

ThemeData get appTheme => ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.valorantDark,
  primaryColor: AppColors.valorantRed,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.valorantRed,
    secondary: AppColors.valorantTeal,
    surface: AppColors.valorantDarkMed,
    background: AppColors.valorantDark,
    error: AppColors.valorantRedBright,
    onPrimary: AppColors.valorantWhite,
    onSecondary: AppColors.valorantDarkest,
    onSurface: AppColors.valorantWhite,
    onBackground: AppColors.valorantWhite,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.valorantDarkest,
    foregroundColor: AppColors.valorantWhite,
    elevation: 0,
  ),
  elevatedButtonTheme: _elevatedButtonTheme,
  textTheme: _textTheme,
);