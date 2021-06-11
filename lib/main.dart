import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:malibu/providers/theme_provider.dart';
import 'package:malibu/screens/auth/authentication.dart';
import 'package:malibu/screens/auth/login_screen.dart';
import 'package:malibu/screens/home/appform_screen.dart';
import 'package:malibu/screens/home/home_screen.dart';
import 'package:malibu/screens/interface/profile_screen.dart';
import 'package:malibu/theme.dart';
import 'package:provider/provider.dart';
import 'routes.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:malibu/store/user.store.dart';

final UserMob userMob = UserMob();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

    return MultiProvider(
      providers: [
        Provider<UserMob>(
          create: (_) => userMob,
        ),
        StreamProvider(
          initialData: null,
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        // * darkTheme: themeDark(),
        initialRoute: 'loading',
        onGenerateRoute: RouterHandler.router.generator,
      ),
    );
  }
}
