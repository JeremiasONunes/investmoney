import 'package:flutter/material.dart';

class SplashController with ChangeNotifier {
  bool _isNavigating = false;
  bool get isNavigating => _isNavigating;

  void setNavigating(bool value) {
    _isNavigating = value;
    notifyListeners();
  }

  void navigateToLogin(BuildContext context) {
    setNavigating(true);
    Future.delayed(const Duration(seconds: 1), () {
      if (Navigator.canPop(context)) {
        Navigator.pop(
          context,
        ); // Garante que a navegação só ocorra se a tela ainda existir
      }
      Navigator.pushReplacementNamed(context, '/getStart');
      setNavigating(false);
    });
  }
}
