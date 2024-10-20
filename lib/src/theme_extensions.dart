import 'package:flutter/material.dart';

@immutable
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  const CustomThemeExtension({
    required this.customColor1,
    required this.customColor2,
  });

  final Color customColor1;
  final Color customColor2;

  @override
  CustomThemeExtension copyWith({
    Color? customColor1,
    Color? customColor2,
  }) {
    return CustomThemeExtension(
      customColor1: customColor1 ?? this.customColor1,
      customColor2: customColor2 ?? this.customColor2,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
    ThemeExtension<CustomThemeExtension>? other,
    double t,
  ) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      customColor1: Color.lerp(customColor1, other.customColor1, t)!,
      customColor2: Color.lerp(customColor2, other.customColor2, t)!,
    );
  }
}
