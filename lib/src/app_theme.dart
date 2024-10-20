import 'package:flutter/material.dart';
import 'package:flutter_common_theme/src/color_scheme_util.dart';
import 'package:flutter_common_theme/src/theme_extensions.dart';
import 'package:flutter_common_theme/src/theme_typography.dart';
import 'package:flutter_common_theme/src/theme_util.dart';

class AppTheme {
  AppTheme({ThemeUtils? themeUtil})
      : _themeUtil = themeUtil ??
            ThemeUtils(
              ColorSchemeUtils.kStandardColorScheme,
            );
  final ThemeUtils _themeUtil;

  ThemeData get lightTheme => ThemeData(
        scaffoldBackgroundColor: Colors.grey[100],
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
        inputDecorationTheme: _themeUtil.kBaseInputDecorationTheme,
        colorScheme: ColorSchemeUtils.kStandardColorScheme,
        textTheme: ThemeTypography.lightTextTheme,
        elevatedButtonTheme: _themeUtil.kBaseElevatedButtonThemeData,
        extensions: const [
          CustomThemeExtension(
            customColor1: Color(0xFF6200EE),
            customColor2: Color(0xFF03DAC6),
          ),
        ],
      );

  ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        colorScheme: ColorSchemeUtils.kDarkColorScheme,
        textTheme: ThemeTypography.darkTextTheme,
        extensions: const [
          CustomThemeExtension(
            customColor1: Color(0xFFBB86FC),
            customColor2: Color(0xFF03DAC6),
          ),
        ],
      );
}
