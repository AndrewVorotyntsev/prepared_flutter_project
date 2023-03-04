import 'package:flutter/material.dart';
import 'package:prepared_flutter_project/assets/theme/extension/extra_colors.dart';
import 'package:prepared_flutter_project/assets/theme/extension/profile_typography.dart';

extension ThemeContextExtension on BuildContext {
  ExtraColors get colors => Theme.of(this).extension<ExtraColors>()!;

  ProfileTypography get profile =>
      Theme.of(this).extension<ProfileTypography>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
