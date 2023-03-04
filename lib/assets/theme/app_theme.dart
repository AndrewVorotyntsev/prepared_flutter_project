import 'package:flutter/material.dart';
import 'package:prepared_flutter_project/assets/theme/app_color.dart';
import 'package:prepared_flutter_project/assets/theme/app_typography.dart';
import 'package:prepared_flutter_project/assets/theme/extension/extra_colors.dart';
import 'package:prepared_flutter_project/assets/theme/extension/profile_typography.dart';

class AppTheme {
  AppTheme._(this.themeData);

  final ThemeData themeData;

  factory AppTheme.light() {
    return AppTheme._(
      ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(),
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: AppColor.white,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.primary,
          onPrimary: AppColor.white,
          secondary: AppColor.accent,
          onSecondary: AppColor.white,
          error: AppColor.error,
          onError: AppColor.white,
          background: AppColor.white,
          onBackground: AppColor.accent,
          surface: AppColor.white,
          onSurface: AppColor.accent,
        ),
        appBarTheme: AppBarTheme(
          titleTextStyle: AppTypography.medium16.copyWith(
            color: AppColor.black,
            fontFamily: 'Poppins',
          ),
          backgroundColor: AppColor.white,
          iconTheme: const IconThemeData(
            color: AppColor.black,
          ),
          elevation: 0,
          centerTitle: true,
        ),
        dividerTheme: const DividerThemeData(
          color: AppColor.grey,
          thickness: 1,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: AppColor.white,
          selectedItemColor: AppColor.primary,
          unselectedItemColor: AppColor.grey,
          type: BottomNavigationBarType.shifting,
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: AppColor.primary,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 8,
          ),
          horizontalTitleGap: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.primary,
            foregroundColor: AppColor.white,
            fixedSize: const Size.fromHeight(40),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            textStyle: AppTypography.semiBold14.copyWith(
              color: AppColor.white,
            ),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          filled: true,
          isDense: true,
          fillColor: AppColor.white,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 5,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColor.primary,
        ),
        extensions: [
          const ExtraColors(
            white: AppColor.white,
            black: AppColor.black,
            primary: AppColor.primary,
            accent: AppColor.accent,
            error: AppColor.error,
            grey: AppColor.grey,
          ),
          ProfileTypography(
            version: AppTypography.normal14.copyWith(
              color: Colors.black,
            ),
            menuTitle: AppTypography.normal16.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  factory AppTheme.dark() {
    return AppTheme._(
      ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(),
        scaffoldBackgroundColor: AppColor.white,
      ),
    );
  }
}
