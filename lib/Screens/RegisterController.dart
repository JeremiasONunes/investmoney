import 'package:flutter/material.dart';

class RegisterController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

  void submitForm() {
    if (formKey.currentState?.validate() ?? false) {
      // Aqui você pode adicionar a lógica de navegação ou confirmação
      print('Form submitted successfully');
      print('Email: ${emailController.text}');
      print('Name: ${nameController.text}');
      print('DOB: ${dobController.text}');
      print('CPF: ${cpfController.text}');

      // Exemplo: Redirecionar para outra página após o sucesso
      // Navigator.pushReplacementNamed(context, '/home');
    }
  }

  void dispose() {
    emailController.dispose();
    nameController.dispose();
    dobController.dispose();
    cpfController.dispose();
  }
}
