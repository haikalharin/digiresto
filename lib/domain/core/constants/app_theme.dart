import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData theme = ThemeData();
final ThemeData themeDataLight = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: MaterialColor(AppColors.orange[500]!.value, AppColors.orange),
  primaryColor: AppColors.orange[500],
  primaryColorBrightness: Brightness.light,
  colorScheme: theme.colorScheme.copyWith(
      secondary: AppColors.orange[500]!, brightness: Brightness.light),
);

final ThemeData themeDataDark = ThemeData(
  brightness: Brightness.dark,
  primaryColor: AppColors.orange[500],
  primaryColorBrightness: Brightness.dark,
  colorScheme: theme.colorScheme
      .copyWith(secondary: AppColors.orange[500]!, brightness: Brightness.dark),
);
