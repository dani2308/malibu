import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: const Color(0xff049DBF),
    accentColor: const Color(0xFFFFFFFF),
    primaryColorLight: const Color(0xff07F2aa),
    colorScheme: ColorScheme.dark(),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xff023E73),
    accentColor: const Color(0xff049DBF),
    primaryColorLight: const Color(0xff07F2F2),
    colorScheme: ColorScheme.light(),
  );
}
