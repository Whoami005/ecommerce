import 'package:ecommerce/theme/colors.dart';
import 'package:flutter/material.dart';

final myLightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: MyAppColors.myBackground,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: MyAppColors.ellipse3,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
    showSelectedLabels: false,
    showUnselectedLabels: false
  )

);