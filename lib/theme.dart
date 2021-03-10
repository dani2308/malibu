import 'package:flutter/material.dart';

ThemeData themeLight() {
  return ThemeData(
    primaryColor: const Color(0xff5EC5F1),
    accentColor: const Color(0xff36474F),
    // ! Analisar depois
    // backgroundColor: const Color(0xffFFFFFF),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

ThemeData themeDark() {
  return ThemeData(
    primaryColor: const Color(0xff508D8F),
    accentColor: const Color(0xffE27F24),
    backgroundColor: const Color(0xff232323),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
