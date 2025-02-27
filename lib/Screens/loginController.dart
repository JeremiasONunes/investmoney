import 'package:flutter/material.dart';

class LoginController {
  // Controladores de texto movidos para o controlador
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // Função para fazer login (substitua a lógica com o backend ou a autenticação necessária)
  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      // Tratar erro de campos vazios
      print("Email ou senha não podem estar vazios.");
      return;
    }

    // Lógica de autenticação (substitua com seu processo de login)
    print("Login realizado com o email: $email e a senha: $password");

    // Aqui você pode fazer o redirecionamento para outra página
  }

  // Função para fazer login com o Google (exemplo)
  void loginWithGoogle() {
    // Aqui vai a lógica para o login com Google
    print("Login com Google");
  }

  // Função para navegação até a tela de registro
  void navigateToRegisterPage(BuildContext context) {
    Navigator.pushNamed(context, '/register');
  }

  // Dispose para limpar os controladores ao sair da página
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}
