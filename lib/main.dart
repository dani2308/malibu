import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:malibu/theme.dart';

import 'routes.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  RouterHandler.setupRouter();
  Intl.defaultLocale = 'pt_PT';
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('pt_PT');
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight(),
      // * darkTheme: themeDark(),
      initialRoute: 'login',
      onGenerateRoute: RouterHandler.router.generator,
    );
  }
}
