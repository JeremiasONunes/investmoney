import 'package:flutter/material.dart';
import 'package:investmoney/Screens/loginController.dart'; // Certifique-se de importar o controlador
import 'package:investmoney/common/constants/appColors.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final StartController _controller =
      StartController(); // Criando uma instância do controlador

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.TextColor, AppColors.PrimaryColorDark],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),

            // Logo
            Image.asset('assets/images/logo.png', width: 150, height: 150),
            const SizedBox(height: 5),

            // Texto "InvestMoney"
            const Text(
              'InvestMoney',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const Spacer(flex: 2),

            // Campo de Email
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: AppColors.PrimaryColorDark,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Campo de Senha
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: AppColors.PrimaryColorDark,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 30),

            // Botão de Login
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.PrimaryColorDark,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Aqui você pode implementar a lógica de login
                  print("Login button pressed");
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Botão de Login com Google
            SizedBox(
              width: 50,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _controller
                      .loginWithGoogle(); // Chama o método de login com Google
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                ),
                child: Image.asset(
                  'assets/images/logo-google.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Texto "Não possui conta? REGISTRAR"
            GestureDetector(
              onTap: () {
                _controller.navigateToRegisterPage(
                  context,
                ); // Navega para a página de registro
              },
              child: const Text.rich(
                TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                  children: [
                    TextSpan(
                      text: "REGISTER",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
