import 'package:flutter/material.dart';

class CoveragesView extends StatelessWidget {
  const CoveragesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 450,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Color.fromARGB(255, 36, 10, 58),
              Color.fromARGB(255, 8, 6, 10),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    ' Your coverages',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Color(0xfff84f38),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      '🚨  Emergency',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                width: 490,
                height: 1500,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        ' Your family',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 7),
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        ' Book lab tests and other medicines',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 110,
                      width: 380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 246, 192, 111),
                            Color.fromARGB(255, 241, 234, 225),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(height: 22),
                          Image.asset(
                            'assets/bill.png',
                            width: 90,
                            height: 90,
                          ),
                          const Column(
                            children: [
                              SizedBox(height: 18),
                              Text(
                                  'One major treatment will exhaust\nyour savings',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                  )),
                                   SizedBox(height: 10),
                                   TextButton
                              

                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
