import 'package:flutter/material.dart';

class MyAppColors{
  static const myBackground = Color(0xFFE5E5E5);
  static const ellipse2 = Color(0xFFFF6E4E);
  static const ellipse3 = Color(0xFF010035);
}

Color colorFromApi(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}