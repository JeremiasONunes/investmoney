import 'package:flutter/material.dart';
import 'package:investmoney/common/constants/appColors.dart';
import 'package:investmoney/Screens/getStartController.dart';

class StartPage extends StatelessWidget {
  final StartController _controller = StartController();

  StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

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
          children: [
            SizedBox(height: screenHeight * 0.2), // 2/6 da tela
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

            Spacer(), // Empurra o botão para 3/4 da tela
            // Botão de login
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
                  'Get Started',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            SizedBox(
              height: screenHeight * 0.1,
            ), // ajuste fino para alinhar em 3/4
          ],
        ),
      ),
    );
  }
}
