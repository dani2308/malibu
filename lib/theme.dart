import 'package:flutter/material.dart';

ThemeData themeLight() {
  return ThemeData(
    primaryColor: const Color(0xff023E73),
    accentColor: const Color(0xff049DBF),
    primaryColorLight: const Color(0xff07F2F2),
    // ! Analisar depois
    // backgroundColor: const Color(0xffFFFFFF),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
        fontFamily: 'Ubuntu',
      ),
      bodyText2: TextStyle(
        color: Colors.black,
        fontFamily: 'Ubuntu',
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
        fontFamily: 'Ubuntu',
      ),
      bodyText2: TextStyle(
        color: Colors.white,
        fontFamily: 'Ubuntu',
      ),
    ),
  );
}
