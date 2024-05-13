import 'package:flutter/material.dart';
import 'package:ui_extensions_flutter/ui_extensions_flutter.dart';

import 'radio_group_theme_data.dart';

class RadioButtonGroupTheme extends InheritedTheme {
  final RadioGroupThemeData data;

  const RadioButtonGroupTheme({
    required this.data,
    required super.child,
    super.key,
  });

  static RadioGroupThemeData of(BuildContext context) {
    RadioButtonGroupTheme? theme =
        context.dependOnInheritedWidgetOfExactType<RadioButtonGroupTheme>();
    if (theme != null) return theme.data;
    RadioGroupThemeData? t = context.theme.extension<RadioGroupThemeData>();
    return t ??
        ((context.theme.brightness == Brightness.dark)
            ? _defaultDarkTheme
            : _defaultLightTheme);
  }

  static const RadioGroupThemeData _defaultLightTheme = RadioGroupThemeData(
    circleColor: Colors.blue,
    railColor: Color.fromARGB(255, 15, 22, 226),
    ringColor: Colors.pink,
    travelColor: Colors.green,
  );

  static final RadioGroupThemeData _defaultDarkTheme = RadioGroupThemeData(
    circleColor: Colors.blue,
    railColor: Colors.green[200]!,
    ringColor: Colors.pink,
    travelColor: Colors.purple[300]!,
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
