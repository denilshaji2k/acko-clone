import 'package:flutter/material.dart';

class LoginWorkModel extends ChangeNotifier {
  final emailController = TextEditingController();
  final workLoginFormKey = GlobalKey<FormState>();
  bool buttonEnabled = false;

  void validateEmail(String email) {
    bool valid = workLoginFormKey.currentState!.validate();

    if (valid) {
      buttonEnabled = true;
    } else {
      buttonEnabled = false;
    }
    notifyListeners();
  }
}
