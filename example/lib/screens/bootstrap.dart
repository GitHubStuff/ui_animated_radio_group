import 'package:logger/logger.dart';
import 'package:radio_button_demo/screens/initial_screen.dart';
import 'package:flutter/material.dart';

var _logger = Logger();

void bootStrap(ThemeMode themeMode) {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MyApp(themeMode: themeMode),
  );
}

class MyApp extends StatelessWidget {
  final ThemeMode themeMode;
  const MyApp({super.key, required this.themeMode});

  @override
  Widget build(BuildContext context) {
    switch (themeMode) {
      case ThemeMode.light:
        _logger.i('💡 ThemeMode.light');
        break;
      case ThemeMode.dark:
        _logger.i('🌛 ThemeMode.dark');
        break;
      case ThemeMode.system:
        _logger.i('📲 ThemeMode.system');
        break;
    }
    return MaterialApp(
      title: 'Animated Buttons ${themeMode.name}',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(extensions: [
        //RadioGroupThemeData.lightThemeData,
      ]),
      themeMode: themeMode,
      localizationsDelegates: const [],
      home: InitialScreen(title: 'Flutter Demo ${themeMode.name} mode'),
    );
  }
}
