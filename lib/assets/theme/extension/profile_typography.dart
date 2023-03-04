import 'package:flutter/material.dart';

class ProfileTypography extends ThemeExtension<ProfileTypography> {
  const ProfileTypography({
    required this.version,
    required this.menuTitle,
  });

  final TextStyle version;
  final TextStyle menuTitle;

  @override
  ThemeExtension<ProfileTypography> copyWith({
    TextStyle? version,
    TextStyle? menuTitle,
  }) {
    return ProfileTypography(
      version: version ?? this.version,
      menuTitle: menuTitle ?? this.menuTitle,
    );
  }

  @override
  ThemeExtension<ProfileTypography> lerp(
    ThemeExtension<ProfileTypography>? other,
    double t,
  ) {
    if (other is! ProfileTypography) {
      return this;
    }

    return ProfileTypography(
      version: TextStyle.lerp(version, other.version, t)!,
      menuTitle: TextStyle.lerp(menuTitle, other.menuTitle, t)!,
    );
  }
}
