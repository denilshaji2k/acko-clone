import 'package:flutter/material.dart';
class LoginMobileOtpViewModel extends ChangeNotifier {
  final loginMobileOtpFormKey = GlobalKey<FormState>();
  bool buttonEnabled = false;
  final List<TextEditingController> otpControllers = List.generate(
    4,
    (index) => TextEditingController(),
  );
  final List<FocusNode> focusNodes = List.generate(
    4,
    (index) => FocusNode(),
  );

  bool get isOtpFilled =>
      otpControllers.every((controller) => controller.text.isNotEmpty);

  void validateOtp() {
    if (isOtpFilled) {
      buttonEnabled = true;
      
    } else {
      buttonEnabled = false;
    }
    notifyListeners();
  }
}
