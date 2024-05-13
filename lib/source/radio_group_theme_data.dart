import 'package:flutter/material.dart';

class RadioGroupThemeData extends ThemeExtension<RadioGroupThemeData> {
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

  @override
  ThemeExtension<RadioGroupThemeData> copyWith({
    Color? circleColor,
    Color? railColor,
    Color? ringColor,
    Color? travelColor,
  }) {
    return RadioGroupThemeData(
      circleColor: circleColor ?? this.circleColor,
      railColor: railColor ?? this.railColor,
      ringColor: ringColor ?? this.ringColor,
      travelColor: travelColor ?? this.travelColor,
    );
  }

  @override
  RadioGroupThemeData lerp(
      ThemeExtension<RadioGroupThemeData>? other, double t) {
    if (other is! RadioGroupThemeData) return this;
    return RadioGroupThemeData(
      circleColor: Color.lerp(circleColor, other.circleColor, t)!,
      railColor: Color.lerp(railColor, other.railColor, t)!,
      ringColor: Color.lerp(ringColor, other.ringColor, t)!,
      travelColor: Color.lerp(travelColor, other.travelColor, t)!,
    );
  }
}
