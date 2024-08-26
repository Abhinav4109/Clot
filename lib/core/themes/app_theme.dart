import 'package:clot/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'CircularStd',
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
    )
  ); 
}