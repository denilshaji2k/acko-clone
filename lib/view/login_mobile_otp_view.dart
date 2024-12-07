import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login_mobile_view.dart';
import '../view_model/login_mobile_otp_view_model.dart';
import 'home_view.dart';

class LoginMobileOtpView extends StatelessWidget {
  final String mobileNumber;
  const LoginMobileOtpView({super.key, required this.mobileNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer<LoginMobileOtpViewModel>(
            builder: (context, loginMobileOtp, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Your OTP is on its way',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Enter the OTP sent to $mobileNumber',
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginMobile()));
                      },
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                          color: Color.fromARGB(255, 27, 122, 199),
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Form(
                  key: loginMobileOtp.loginMobileOtpFormKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (index) => SizedBox(
                        width: 64,
                        height: 68,
                        child: TextField(
                          controller: loginMobileOtp.otpControllers[index],
                          focusNode: loginMobileOtp.focusNodes[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          onChanged: (value) {
                            if (value.length == 1) {
                              if (index < 3) {
                                loginMobileOtp.focusNodes[index + 1]
                                    .requestFocus();
                              }
                            }
                            if (value.isEmpty) {
                              if (index > 0) {
                                loginMobileOtp.focusNodes[index - 1]
                                    .requestFocus();
                              }
                            }
                            loginMobileOtp.validateOtp();
                            if (loginMobileOtp.buttonEnabled) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomeView()));
                            }
                          },
                          style: const TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            counterText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
