import 'package:flutter/material.dart';
import 'view/login_prompt_view.dart';
import 'view_model/login_work_view_model.dart';
import 'package:provider/provider.dart';
import 'view_model/login_mobile_otp_view_model.dart';

void main() {
  runApp(const MainApp());
  changeNotifierProviders(LoginWorkModel(), LoginMobileOtpViewModel());
}

void changeNotifierProviders(LoginWorkModel loginWorkModel,
    LoginMobileOtpViewModel loginMobileOtpViewModel) {
  runApp(
    ChangeNotifierProvider(
      create: (context) => loginWorkModel,
      child: ChangeNotifierProvider(
        create: (context) => loginMobileOtpViewModel,
        child: const MainApp(),
      ),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPromptView(),
      ),
    );
  }
}
