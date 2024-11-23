import 'package:flutter/material.dart';
//-------------------------------------
import 'package:yumly_ever_after/src/core/styles/colors.dart';
//------------------------------------------------------------

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.primaryColor,
  colorScheme: ColorScheme.fromSwatch(
    accentColor: AppColors.accentColor,
    errorColor: AppColors.errorColor,
  ),
  fontFamily: "Poppins",
  scaffoldBackgroundColor: Colors.white,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
