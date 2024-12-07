import 'package:flutter/material.dart';
import 'view/login_prompt_view.dart';
import 'view_model/login_work_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
  changeNotifierProviders(LoginWorkModel(
  ));
}

void changeNotifierProviders(LoginWorkModel loginWorkModel) {
  runApp(
    ChangeNotifierProvider(
      create: (context) => loginWorkModel,
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
        body: LoginPrompt(),
      ),
    );
  }
}
