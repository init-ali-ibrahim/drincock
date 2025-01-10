import 'package:flutter/material.dart';

@immutable
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color? backgroundColor;

  CustomThemeExtension({required this.backgroundColor});

  @override
  CustomThemeExtension copyWith({Color? backgroundColor}) {
    return CustomThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  CustomThemeExtension lerp(
      ThemeExtension<CustomThemeExtension> other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
    );
  }
}
