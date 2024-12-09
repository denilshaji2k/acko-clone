import 'package:acko_clone/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'view/login/login_prompt_view.dart';
import 'view_model/login_work_view_model.dart';
import 'package:provider/provider.dart';
import 'view_model/login_mobile_otp_view_model.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => LoginWorkModel()),
    ChangeNotifierProvider(create: (_) => HomeViewModel()),

    ChangeNotifierProvider(create: (_) => LoginMobileOtpViewModel()),
  ],
    
    child: const MainApp()));
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
