import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/constants/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    inputDecorationTheme: InputDecorationTheme(
      // contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.gray.withOpacity(0.2))),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.gray.withOpacity(0.2))),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.gray.withOpacity(0.2))),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red.shade400, width: 1.2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.red.shade400, width: 1.5),
      ),
      errorStyle: TextStyle(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.gold,
            foregroundColor: Colors.white,
            textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                fontFamily: 'Poppins'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)))),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            backgroundColor: AppColors.black,
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)))),
    dividerTheme:
        DividerThemeData(space: 32, thickness: 0.2, color: AppColors.gray),
  );
}
