import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeLight = ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.blue,
    secondary: AppColors.dark,
    error: Colors.red,
    onPrimary: AppColors.blue,
    onSecondary: AppColors.blue,
    onSurface: AppColors.silver,
    onError: AppColors.dark,
    brightness: Brightness.light,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.white,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.dark,
      fontSize: 24,
      fontWeight: FontWeight.w500,
    ),
    actionsIconTheme: const IconThemeData(color: AppColors.dark, size: 26),
    toolbarTextStyle: GoogleFonts.poppins(
      color: AppColors.dark,
      fontSize: 14,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.dark,
    ),
  ),
  iconTheme: const IconThemeData(
    color: AppColors.dark,
  ),
  textTheme: TextTheme(
    bodyMedium: GoogleFonts.poppins(
      color: AppColors.dark,
      fontSize: 14,
    ),
  ),
);
