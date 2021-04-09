import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:malibu/theme.dart';

import 'routes.dart';

void main() {
  RouterHandler.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight(),
      // * darkTheme: themeDark(),
      initialRoute: 'postcomment',
      onGenerateRoute: RouterHandler.router.generator,
    );
  }
}
