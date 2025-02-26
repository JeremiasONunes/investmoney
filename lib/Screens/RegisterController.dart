import 'package:flutter/material.dart';

class RegisterController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

  bool validateForm() {
    return formKey.currentState?.validate() ?? false;
  }

  void submitForm() {
    if (validateForm()) {
      print('Email: ${emailController.text}');
      print('Full Name: ${nameController.text}');
      print('Date of Birth: ${dobController.text}');
      print('CPF: ${cpfController.text}');
    }
  }

  void dispose() {
    emailController.dispose();
    nameController.dispose();
    dobController.dispose();
    cpfController.dispose();
  }
}
