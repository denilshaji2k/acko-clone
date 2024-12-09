import 'package:acko_clone/view/login/login_recover_view.dart';
import 'package:acko_clone/view/login/login_mobile_view.dart';
import 'package:acko_clone/view/login/login_work_view.dart';
import 'package:acko_clone/view/login/privacy_view.dart';
import 'package:flutter/material.dart';

class LoginPromptView extends StatelessWidget {
  const LoginPromptView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/login_home.jpg',
                width: 250,
                height: 350,
              ),
            ],
          ),
          const Column(
            children: [
              Text(
                'Simple. Fast. Paperless.\n Meet ACKO Insurance',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 380,
            height: 60,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginMobile()),
                );
              },
              color: Colors.black,
              textColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text('Login with mobile number'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 380,
            height: 70,
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginWork()),
                );
              },
              color: Colors.white,
              textColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Colors.black),
              ),
              child: const Column(
                children: [
                  Text(
                    'Have a corporate health policy? ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 74, 73, 73),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Login with work email',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Can\'t access? '),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginRecover()),
                  );
                },
                child: const Text(
                  'Recover my account',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 103, 187),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 144,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Privacy()),
                );
              },
              child: const Text(
                'Privacy Policy',
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
