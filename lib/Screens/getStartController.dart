import 'package:flutter/material.dart';

class StartController {
  void navigateToLogin(BuildContext context) {
    Navigator.pushNamed(context, '/login');
  }

  void navigateToRegisterPage(BuildContext context) {
    Navigator.pushNamed(context, '/register');
  }

  void loginWithGoogle() {
    // Aqui você pode implementar a lógica real de autenticação com o Google
    print('Log in with Google pressed');
  }

  void navigateToRegister(BuildContext context) {
    Navigator.pushNamed(context, '/register');
  }
}
