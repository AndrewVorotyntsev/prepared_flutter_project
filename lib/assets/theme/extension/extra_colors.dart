import 'package:flutter/material.dart';

class ExtraColors extends ThemeExtension<ExtraColors> {
  const ExtraColors({
    required this.white,
    required this.black,
    required this.primary,
    required this.accent,
    required this.error,
    required this.grey,
  });

  final Color white;
  final Color black;
  final Color primary;
  final Color accent;
  final Color error;
  final Color grey;

  @override
  ThemeExtension<ExtraColors> copyWith({
    Color? white,
    Color? black,
    Color? primary,
    Color? accent,
    Color? error,
    Color? grey,
  }) {
    return ExtraColors(
      white: white ?? this.white,
      black: black ?? this.black,
      primary: primary ?? this.primary,
      accent: accent ?? this.accent,
      error: error ?? this.error,
      grey: grey ?? this.grey,
    );
  }

  @override
  ThemeExtension<ExtraColors> lerp(
    ThemeExtension<ExtraColors>? other,
    double t,
  ) {
    if (other is! ExtraColors) {
      return this;
    }

    return ExtraColors(
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      error: Color.lerp(error, other.error, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
    );
  }
}
