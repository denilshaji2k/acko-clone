import 'package:flutter/material.dart';
import 'package:acko_clone/view/login_mobile_otp_view.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final mobileController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            'Log in with your phone number',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: 'Inter',
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: mobileController,
              decoration: InputDecoration(
                prefixIcon: Container(
                  width: MediaQuery.of(context).size.width * 0.10,
                  alignment: Alignment.center,
                  child: const Text(
                    '+91',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                hintText: 'Enter mobile number',
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const Spacer(),
          MaterialButton(
            minWidth: MediaQuery.of(context).size.width * 0.9,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginMobileOtpView(
                    mobileNumber: mobileController.text,
                  ),
                ),
              );
            },
            color: Colors.black,
            textColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text('Log in'),
          )
        ],
      ),
    );
  }
}
