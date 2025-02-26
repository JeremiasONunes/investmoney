// routes.dart
import 'package:flutter/material.dart';
import 'package:investmoney/Screens/getStartPage.dart';
import 'package:investmoney/Screens/homePage.dart';
import 'package:investmoney/Screens/loginsPage.dart';
import 'package:investmoney/Screens/registerPage.dart';
import 'package:investmoney/Screens/splashPage.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const SplashPage(),
    '/login': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/getStart': (context) => StartPage(),
    '/register': (context) => RegisterPage(),
  };
}
