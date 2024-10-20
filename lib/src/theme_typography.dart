import 'package:flutter/material.dart';
import 'package:flutter_common_theme/src/theme_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeTypography {
  static TextTheme textTheme = GoogleFonts.interTextTheme();

  static TextTheme get lightTextTheme => textTheme.apply(
        bodyColor: ThemeColors.onBackgroundLight,
        displayColor: ThemeColors.onBackgroundLight,
      );

  static TextTheme get darkTextTheme => textTheme.apply(
        bodyColor: ThemeColors.onBackgroundDark,
        displayColor: ThemeColors.onBackgroundDark,
      );
}
