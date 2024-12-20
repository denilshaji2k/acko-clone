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
                height: 945,
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
                          Column(
                            children: [
                              const SizedBox(height: 18),
                              const Text(
                                  'One major treatment will exhaust\nyour savings',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                  )),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'See how hospital costs are rising',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(207, 172, 127, 60),
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_forward,
                                      size: 20,
                                      color: Color.fromARGB(207, 172, 127, 60)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    //end of bill container
                    Row(
                      children: [
                        const SizedBox(
                          width: 19,
                        ),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 20),
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: const Color.fromARGB(
                                        255, 238, 199, 139),
                                  ),
                                  child: const Center(
                                    child: Text('DS',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                        )),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              const Text(
                                'User Name',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                'NOT COVERED',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 175, 41, 32),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 19),
                        Container(
                          height: 170,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 38),
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: const Color.fromARGB(
                                        255, 221, 221, 221),
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add,
                                  )),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Add member',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
//add your vehicle starts here
                    Container(
                      color: const Color.fromARGB(255, 229, 228, 228),
                      height: 500,
                      width: 450,
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            'Add your vehicle. Minus the worries.',
                            style: TextStyle(
                              fontSize: 23,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          const Text(
                            'Get insurance,Fastag,servicing,challan alerts,remiders,\nrewards & so much more.',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            height: 320,
                            width: 395,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                final images = [
                                  'assets/add1.png',
                                  'assets/add2.png',
                                  'assets/add3.png',
                                  'assets/add4.png',
                                ];

                                final texts = [
                                  "PERSONALISED DASHBOARD",
                                  "REAL TIME REMINDERS",
                                  "COMPLETE PROTECTION",
                                  "SAFE AND SECURE E-LOCKER"
                                ];

                                final texts1 = [
                                  "Manage and maintain your vehicle\nin one place",
                                  "Recharge Fastag,pay challans\nand get PUC alerts",
                                  "Protect your vehicle from\naccidental damage costs",
                                  "Store and access your vehicle's\ndocuments online",
                                ];

                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  width: 250,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 200,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: AssetImage(images[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        texts[index],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 112, 111, 111),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        texts1[index],
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          MaterialButton(
                            minWidth: 367,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            textColor: const Color.fromARGB(255, 255, 255, 255),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            onPressed: () {
                              // Handle button press
                            },
                            child: const Text('Add your vehicle'),
                          ),
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
