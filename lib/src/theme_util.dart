// ignore_for_file: public_member_api_docs, sort_constructors_first

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Package imports:

// Project imports:

final class ThemeUtils {
  final ColorScheme _colorScheme;
  ThemeUtils(
    this._colorScheme,
  );
  BottomNavigationBarThemeData get kbaseBottomNavigationBarTheme =>
      const BottomNavigationBarThemeData();

  IconThemeData get kBaseIconThemeData => IconThemeData(
        color: _colorScheme.onSurface,
      );

  TabBarTheme get kBaseTabBarTheme => TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: _colorScheme.onPrimary,
        indicatorColor: _colorScheme.surface,
      );

  ProgressIndicatorThemeData get kBaseProgressIndicatorThemeData =>
      ProgressIndicatorThemeData(
        color: _colorScheme.onPrimary,
        circularTrackColor: _colorScheme.primary,
      );

  ListTileThemeData get kBaseListTileThemeData => const ListTileThemeData(
        minTileHeight: 46,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      );

  DrawerThemeData get kBaseDrawerThemeData => DrawerThemeData(
        backgroundColor: _colorScheme.surface,
      );

  AppBarTheme get kBaseAppBarTheme => AppBarTheme(
        centerTitle: true,
        backgroundColor: _colorScheme.surface,
        titleTextStyle: GoogleFonts.urbanist(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: kBaseIconThemeData.copyWith(
          color: _colorScheme.onPrimary,
        ),
      );

  ElevatedButtonThemeData get kBaseElevatedButtonThemeData =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: _colorScheme.onSecondaryContainer,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          backgroundColor: _colorScheme.secondaryContainer,
          padding: const EdgeInsets.symmetric(vertical: 12),
          textStyle: kBaseTextTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  TextButtonThemeData get kBaseTextButtonThemeData => TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: _colorScheme.onSurface,
        ),
      );

  OutlinedButtonThemeData get kBaseOutlinedButtonThemeData =>
      OutlinedButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: _colorScheme.onSurface,
        ),
      );

  InputDecorationTheme get kBaseInputDecorationTheme => InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(
            width: 0.6,
            color: _colorScheme.outline,
          ),
        ),
        hintStyle: kBaseTextTheme.labelSmall?.copyWith(
          color: const Color(0xffD9D9D9),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(
            width: 0.6,
            color: _colorScheme.outline,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(2)),
          borderSide: BorderSide(
            width: 0.6,
            color: _colorScheme.outline,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(2)),
          borderSide: BorderSide(
            width: 0.6,
            color: _colorScheme.outline,
          ),
        ),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        errorStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        floatingLabelStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      );

  DividerThemeData get kBaseDividerThemeData => DividerThemeData(
        color: _colorScheme.outline,
        thickness: 1,
      );

  TextTheme get kBaseTextTheme => GoogleFonts.urbanistTextTheme().apply(
        bodyColor: _colorScheme.onSurface,
        displayColor: _colorScheme.onSurface,
      );

  CheckboxThemeData get kBaseCheckboxTheme {
    return CheckboxThemeData(
      checkColor: WidgetStatePropertyAll<Color>(
        _colorScheme.onPrimary,
      ),
    );
  }

  IconButtonThemeData get kBaseIconButtonTheme {
    return IconButtonThemeData(
      style: IconButton.styleFrom(
        // backgroundColor: _colorScheme.primary,
        foregroundColor: _colorScheme.onSurface,
      ),
    );
  }

  ExpansionTileThemeData get kBaseExpansionTileTheme {
    return const ExpansionTileThemeData(
      tilePadding: EdgeInsets.zero,
    );
  }
}
