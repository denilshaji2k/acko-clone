import 'package:flutter/material.dart';
import 'view/login/login_prompt_view.dart';
import 'view_model/login_work_view_model.dart';
import 'package:provider/provider.dart';
import 'view_model/login_mobile_otp_view_model.dart';
import 'view_model/home_view_model.dart';

void main() {
  runApp(const MainApp());
  changeNotifierProviders(
      LoginWorkModel(), LoginMobileOtpViewModel(), HomeViewModel());
}

void changeNotifierProviders(
    LoginWorkModel loginWorkModel,
    LoginMobileOtpViewModel loginMobileOtpViewModel,
    HomeViewModel homeViewModel) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(
          create: (context) => loginWorkModel,
          child: ChangeNotifierProvider(
            create: (context) => loginMobileOtpViewModel,
            child: ChangeNotifierProvider(
              create: (context) => homeViewModel,
              child: const MainApp(),
            ),
          ),
        ),
      ],
      child: const MainApp(),
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
