import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:crm_project/configs/configs.dart';

class AppTheme {
  final lightTheme = ThemeData(
    primaryColor: AppColors.primaryLightMain,
    brightness: Brightness.light,
    textTheme: GoogleFonts.kalamTextTheme().apply(
      bodyColor: AppColors.lightTextPrimary,
      displayColor: AppColors.lightTextPrimary,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.lightBodyBg,
    inputDecorationTheme: InputDecorationTheme(
        labelStyle: const TextStyle(
          color: AppColors.lightTextDisabled,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: const TextStyle(
          color: AppColors.lightTextSecondary,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lightActionDisabled,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.lightActionFocus,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        )),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: AppColors.primaryLightContainedHover,
        elevation: 5,
      ),
    ),
  );

  final darkTheme = ThemeData(
    primaryColor: AppColors.primaryDarkMain,
    dividerColor: const Color(0xff474261),
    disabledColor: AppColors.darkTextDisabled,
    brightness: Brightness.dark,
    textTheme: GoogleFonts.kalamTextTheme().apply(
      bodyColor: AppColors.darkTextPrimary,
      displayColor: AppColors.darkTextPrimary,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBodyBg,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(
        color: AppColors.darkTextDisabled,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      hintStyle: const TextStyle(
        color: AppColors.darkTextSecondary,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.darkActionDisabled,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: AppColors.darkActionFocus,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: AppColors.primaryDarkContainedHover,
        elevation: 5,
      ),
    )
  );
}
