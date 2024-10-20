import 'package:flutter/material.dart';
import 'package:flutter_common_theme/src/theme_colors.dart';
import 'package:flutter_common_theme/src/theme_extensions.dart';
import 'package:flutter_common_theme/src/theme_typography.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[100],
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.primaryLight,
      onPrimary: ThemeColors.onPrimaryLight,
      secondary: ThemeColors.secondaryLight,
      onSecondary: ThemeColors.onSecondaryLight,
      error: ThemeColors.errorLight,
      onError: ThemeColors.onErrorLight,
      background: ThemeColors.backgroundLight,
      onBackground: ThemeColors.onBackgroundLight,
      surface: ThemeColors.surfaceLight,
      onSurface: ThemeColors.onSurfaceLight,
    ),
    textTheme: ThemeTypography.lightTextTheme,
    extensions: const [
      CustomThemeExtension(
        customColor1: const Color(0xFF6200EE),
        customColor2: const Color(0xFF03DAC6),
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColors.primaryDark,
      onPrimary: ThemeColors.onPrimaryDark,
      secondary: ThemeColors.secondaryDark,
      onSecondary: ThemeColors.onSecondaryDark,
      error: ThemeColors.errorDark,
      onError: ThemeColors.onErrorDark,
      background: ThemeColors.backgroundDark,
      onBackground: ThemeColors.onBackgroundDark,
      surface: ThemeColors.surfaceDark,
      onSurface: ThemeColors.onSurfaceDark,
    ),
    textTheme: ThemeTypography.darkTextTheme,
    extensions: const [
      CustomThemeExtension(
        customColor1: Color(0xFFBB86FC),
        customColor2: Color(0xFF03DAC6),
      ),
    ],
  );
}
