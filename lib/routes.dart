import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:malibu/screens/home/home_screen.dart';
import 'package:malibu/screens/auth/login_screen.dart';
import 'package:malibu/screens/auth/register_screen.dart';
import 'package:malibu/screens/home/appform_screen.dart';
import 'package:malibu/screens/interface/forecast_screen.dart';
import 'package:malibu/screens/interface/rentboard_screen.dart';
import 'package:malibu/screens/interface/rentwetsuit_screen.dart';
import 'package:malibu/screens/interface/class_screen.dart';
import 'package:malibu/screens/interface/news_screen.dart';
import 'package:malibu/screens/interface/profile_screen.dart';

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

  static final Handler _rentboardScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          RentBoardScreen());

  static final Handler _rentwetsuitScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          RentWetsuitScreen());

  static final Handler _classScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ClassScreen());

  static final Handler _newsScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          NewsScreen());

  static final Handler _profileScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ProfileScreen());

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
    router.define(
      'rentboard',
      handler: _rentboardScreen,
    );
    router.define(
      'rentwetsuit',
      handler: _rentwetsuitScreen,
    );
    router.define(
      'class',
      handler: _classScreen,
    );
    router.define(
      'news',
      handler: _newsScreen,
    );
    router.define(
      'profile',
      handler: _profileScreen,
    );
  }
}
