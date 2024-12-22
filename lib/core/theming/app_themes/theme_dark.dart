import 'package:english_secrets/core/theming/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeDark = ThemeData(
  scaffoldBackgroundColor: AppColors.dark,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.dark,
    secondary: AppColors.dark,
    error: Colors.red,
    onPrimary: AppColors.blue,
    onSecondary: AppColors.blue,
    onSurface: AppColors.silver,
    onError: AppColors.white,
    brightness: Brightness.dark,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.dark,
    elevation: 0.0,
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    actionsIconTheme: const IconThemeData(
      color: AppColors.white,
      size: 26,
    ),
    toolbarTextStyle: GoogleFonts.poppins(
      color: AppColors.white,
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
      color: AppColors.white,
      fontSize: 16,
    ),
  ),
);
