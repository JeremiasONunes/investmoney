import 'package:flutter/material.dart';
import 'package:investmoney/Screens/splashController.dart';
import 'package:investmoney/common/constants/appColors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final splashController = SplashController();
    splashController.navigateToLogin(context);

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.PrimaryColor, AppColors.PrimaryColorDark],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', width: 150, height: 150),
              Text(
                'InvestMoney',
                style: TextStyle(
                  fontSize: 30,
                ).copyWith(color: AppColors.TextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
