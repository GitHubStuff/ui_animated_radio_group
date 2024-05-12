import 'package:flutter/material.dart';

import 'radio_group_theme_data.dart';

class RadioButtonGroupTheme extends InheritedTheme {
  final RadioGroupThemeData data;

  const RadioButtonGroupTheme({
    required this.data,
    required super.child,
    super.key,
  });

  static RadioGroupThemeData of(BuildContext context) {
    final RadioButtonGroupTheme? theme =
        context.dependOnInheritedWidgetOfExactType<RadioButtonGroupTheme>();
    return theme?.data ?? _defaultTheme;
  }

  static const RadioGroupThemeData _defaultTheme = RadioGroupThemeData(
    circleColor: Colors.blue,
    railColor: Color.fromARGB(255, 15, 22, 226),
    ringColor: Colors.pink,
    travelColor: Colors.green,
  );

  @override
  Widget wrap(BuildContext context, Widget child) {
    return RadioButtonGroupTheme(data: data, child: child);
  }

  @override
  bool updateShouldNotify(RadioButtonGroupTheme oldWidget) {
    return data != oldWidget.data;
  }
}
