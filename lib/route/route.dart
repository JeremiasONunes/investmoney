// routes.dart
import 'package:flutter/material.dart';
import 'package:investmoney/Screens/homePage.dart';
import 'package:investmoney/Screens/loginsPage.dart';
import 'package:investmoney/Screens/splashPage.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => const SplashPage(),
    '/login': (context) => const LoginPage(),
    '/home': (context) => const HomePage(),
  };
}
