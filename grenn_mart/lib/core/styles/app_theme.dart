import 'package:flutter/material.dart';
import 'package:grenn_mart/core/styles/colors.dart';
import 'package:grenn_mart/core/constants/app_fonts.dart';
import 'package:grenn_mart/core/styles/text_style.dart';

ThemeData appTheme() {
  return ThemeData(
    fontFamily: AppFonts.poppins,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.grayColor,
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedLabelStyle: TextStyles.caption2.copyWith(
        fontWeight: FontWeight.w600,
        height: 2,
      ),
      unselectedLabelStyle: TextStyles.caption2.copyWith(
        fontWeight: FontWeight.w600,
        height: 2,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.accentColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
      ),
    ),
    dividerColor: Colors.transparent,
  );
}
