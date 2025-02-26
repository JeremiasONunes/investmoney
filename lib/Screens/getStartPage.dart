import 'package:flutter/material.dart';
import 'package:investmoney/common/constants/appColors.dart';
import 'package:investmoney/Screens/getStartController.dart';

class StartPage extends StatelessWidget {
  final StartController _controller = StartController();

  StartPage({super.key});

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
            // Botão de login padrão
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _controller.navigateToLogin(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.PrimaryColorDark,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Botão com apenas o ícone do Google
            SizedBox(
              width: 50,
              height: 50,
              child: ElevatedButton(
                onPressed: () => _controller.loginWithGoogle(),
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
              onTap: () => _controller.navigateToRegister(context),
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
