import 'package:flutter/material.dart';

class RegisterController with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();

  bool _isSubmitting = false;
  bool get isSubmitting => _isSubmitting;

  bool validateForm() {
    return formKey.currentState?.validate() ?? false;
  }

  void setSubmitting(bool value) {
    _isSubmitting = value;
    notifyListeners();
  }

  Future<void> submitForm() async {
    if (validateForm()) {
      setSubmitting(true);
      await Future.delayed(Duration(seconds: 2)); // Simula uma requisição
      print('Email: ${emailController.text}');
      print('Full Name: ${nameController.text}');
      print('Date of Birth: ${dobController.text}');
      print('CPF: ${cpfController.text}');
      setSubmitting(false);
    }
  }

  void dispose() {
    emailController.dispose();
    nameController.dispose();
    dobController.dispose();
    cpfController.dispose();
  }
}
