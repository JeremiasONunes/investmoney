import 'package:flutter/material.dart';

class StartController with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void navigateToLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  void navigateToRegisterPage(BuildContext context) {
    Navigator.pushNamed(context, '/register');
  }

  void loginWithGoogle() async {
    setLoading(true);
    await Future.delayed(Duration(seconds: 2)); // Simulando uma requisição
    print('Log in with Google pressed');
    setLoading(false);
  }
}
