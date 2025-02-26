import 'package:flutter/material.dart';

class SplashController {
  void navigateToLogin(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }
}
