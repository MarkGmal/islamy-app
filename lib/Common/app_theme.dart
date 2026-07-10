import 'package:flutter/material.dart';
import 'package:islamy_app/Common/app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.primaryColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      selectedLabelStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      selectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: AppColors.blackColor),
    ),
  );
}
