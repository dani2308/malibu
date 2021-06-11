import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:malibu/screens/auth/loading_screen.dart';
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
import 'package:malibu/screens/options/language_screen.dart';
import 'package:malibu/screens/options/privacy_screen.dart';
import 'package:malibu/screens/options/help_screen.dart';
import 'package:malibu/screens/options/pack_screen.dart';
import 'package:malibu/screens/options/forecastdetail_screen.dart';
import 'package:malibu/screens/suboptions/pay_screen.dart';
import 'package:malibu/screens/suboptions/classconfirm_screen.dart';
import 'package:malibu/screens/suboptions/locationchoose_screen.dart';
import 'package:malibu/screens/suboptions/boardrentchoose_screen.dart';
import 'package:malibu/screens/suboptions/postcreator_screen.dart';
import 'package:malibu/screens/suboptions/postcomment_screen.dart';
import 'package:malibu/screens/suboptions/favourites_screen.dart';
import 'package:malibu/screens/suboptions/shopbag_screen.dart';
import 'package:malibu/screens/suboptions/terms_screen.dart';

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

  static final Handler _languageScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LanguageScreen());

  static final Handler _privacyScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PrivacyScreen());

  static final Handler _helpScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HelpScreen());

  static final Handler _packScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PackScreen());

  static final Handler _payScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PayScreen());

  static final Handler _classconfirmScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ClassConfirmScreen());

  static final Handler _forecastdetailScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ForecastDetailScreen());

  static final Handler _locationchooseScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LocationChooseScreen());

  static final Handler _boardrentchooseScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          BoardRentChooseScreen());

  static final Handler _postcreatorScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PostCreatorScreen());

  static final Handler _postcommentScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PostCommentScreen());

  static final Handler _favouritesScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          FavouritesScreen());

  static final Handler _shopbagScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ShopBagScreen());

  static final Handler _termsScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          TermsScreen());

  static final Handler _authHandlerScreen = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoadingScreen());

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
    router.define(
      'language',
      handler: _languageScreen,
    );
    router.define(
      'privacy',
      handler: _privacyScreen,
    );
    router.define(
      'help',
      handler: _helpScreen,
    );
    router.define(
      'pack',
      handler: _packScreen,
    );
    router.define(
      'pay',
      handler: _payScreen,
    );
    router.define(
      'classconfirm',
      handler: _classconfirmScreen,
    );
    router.define(
      'forecastdetail',
      handler: _forecastdetailScreen,
    );
    router.define(
      'locationchoose',
      handler: _locationchooseScreen,
    );
    router.define(
      'boardrentchoose',
      handler: _boardrentchooseScreen,
    );
    router.define(
      'postcreator',
      handler: _postcreatorScreen,
    );
    router.define(
      'postcomment',
      handler: _postcommentScreen,
    );
    router.define(
      'favourites',
      handler: _favouritesScreen,
    );
    router.define(
      'shopbag',
      handler: _shopbagScreen,
    );
    router.define(
      'terms',
      handler: _termsScreen,
    );
    router.define(
      'loading',
      handler: _authHandlerScreen,
    );
  }
}
