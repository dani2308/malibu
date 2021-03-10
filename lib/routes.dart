import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:malibu/screens/home/home_screen.dart';
import 'package:malibu/screens/auth/login_screen.dart';
import 'package:malibu/screens/auth/register_screen.dart';
import 'package:malibu/screens/home/appform_screen.dart';
import 'package:malibu/screens/interface/forecast_screen.dart';

class RouterHandler {
  static FluroRouter router = FluroRouter();

  static final Handler _homeScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomeScreen());

  static final Handler _loginScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginScreen());

  static final Handler _registerScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          RegisterScreen());

  static final Handler _appformScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          AppformScreen());

  static final Handler _forecastScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ForecastScreen());

  static void setupRouter() {
    router.define(
      'home',
      handler: _homeScreen,
    );
    router.define(
      'login',
      handler: _loginScreen,
    );
    router.define(
      'register',
      handler: _registerScreen,
    );
    router.define(
      'appform',
      handler: _appformScreen,
    );
    router.define(
      'forecast',
      handler: _forecastScreen,
    );
  }
}
