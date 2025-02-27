import 'package:flutter/material.dart';

class RegisterController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

  void submitForm() {
    if (formKey.currentState?.validate() ?? false) {
      // Lógica para salvar ou enviar os dados
      print('Form submitted successfully');
      print('Email: ${emailController.text}');
      print('Name: ${nameController.text}');
      print('DOB: ${dobController.text}');
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
