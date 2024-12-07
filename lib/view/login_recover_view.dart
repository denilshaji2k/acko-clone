import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginRecover extends StatelessWidget {
  const LoginRecover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SvgPicture.asset('assets/ic_account_recovery.svg'),
        ],
      ),
    );
  }
}
