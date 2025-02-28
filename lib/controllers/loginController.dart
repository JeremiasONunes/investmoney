import 'package:flutter/material.dart';

class LoginController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      print("Email ou senha não podem estar vazios.");
      return;
    }

    print("Login realizado com o email: $email e a senha: $password");
  }

  void loginWithGoogle() {
    print("Login com Google");
  }

  void navigateToRegisterPage(BuildContext context) {
    Navigator.pushNamed(context, '/register');
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
