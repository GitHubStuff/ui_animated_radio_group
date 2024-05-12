import 'package:flutter/material.dart';

class RadioGroupThemeData {
  static RadioGroupThemeData darkThemeData = const RadioGroupThemeData(
    circleColor: Color(0xFF00ACC1), // Cyan
    railColor: Color(0xFF007C91), // Dark cyan
    ringColor: Color(0xFFC4C4C4), // Light gray
    travelColor: Color(0xFFCDDC39), // Lime
  );

// For Light Mode
  static RadioGroupThemeData lightThemeData = const RadioGroupThemeData(
    circleColor: Color(0xFF4285F4), // Blue
    railColor: Color(0xFF8AB4F8), // Light blue
    ringColor: Color(0xFF757575), // Gray
    travelColor: Color(0xFF4CAF50), // Green
  );

// For Vision Impaired Users
  static RadioGroupThemeData impairedThemeData = const RadioGroupThemeData(
    circleColor: Colors.black, // Orange
    railColor: Colors.black, // Light yellow
    ringColor: Colors.black, // Dark gray
    travelColor: Color(0xFF2196F3), // Blue
  );

  final Color circleColor;
  final Color railColor;
  final Color ringColor;
  final Color travelColor;

  const RadioGroupThemeData({
    required this.circleColor,
    required this.railColor,
    required this.ringColor,
    required this.travelColor,
  });
}
