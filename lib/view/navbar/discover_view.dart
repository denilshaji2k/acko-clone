import 'package:flutter/material.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'Services and more',
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
              const SizedBox(height: 17),
              Container(
                color: Colors.white,
                height: 850,
                width: 490,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          final images = [
                            'assets/services1.jpg',
                            'assets/services2.jpg',
                          ];

                          final texts = [
                            "Visa made simple",
                            "Save up to ₹80,000*",
                          ];

                          final texts1 = [
                            "99.4% visas on time",
                            "         Get express delivery in 7 days",
                          ];
                          final button = [
                            "Apply now",
                            "Explore now",
                          ];

                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            width: 383,
                            child: Stack(
                              children: [
                                // Background image
                                Container(
                                  height: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                // Overlay for text and button
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                //
                                //Positioned content

                                Positioned(
                                  left: 10,
                                  top: 10,
                                  child: Column(
                                    children: [
                                      Text(
                                        texts[index],
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        texts1[index],
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 185, 185, 185),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),

                                Positioned(
                                  top: 55,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MaterialButton(
                                      height: 5,
                                      minWidth: 100,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      textColor:
                                          const Color.fromARGB(255, 0, 0, 0),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      onPressed: () {
                                        // Handle button press
                                      },
                                      child: Text(button[index]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    // For your vehicle starts here
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'For your vehicle',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            squareCard(
                                icon: Icons.build_circle_outlined,
                                text: 'Book car\nservicing'),
                            squareCard(
                                icon: Icons.confirmation_number_outlined,
                                text: 'Recharge\nFASTag'),
                            squareCard(
                                icon: Icons.traffic_outlined,
                                text: 'Pay traffic\nchallans'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            squareCard(
                                icon: Icons.no_crash_outlined,
                                text: 'Check resale\nvalue'),
                            squareCard(
                                icon: Icons.account_balance_outlined,
                                text: 'Get vehicle\ninfo'),
                            squareCard(
                                icon: Icons.assignment_outlined,
                                text: 'See PUCC\nvalidity'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            squareCard(
                                icon: Icons.car_rental_outlined,
                                text: 'Upgrade\nyour car'),
                            squareCard(
                                icon: Icons.co2_outlined,
                                text: 'Emission\ncentres'),
                            squareCard(
                                icon: Icons.notifications_active_outlined,
                                text: 'Activate\nalerts'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Other services starts here
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Other services',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            squareCard(
                                icon: Icons.file_present_outlined,
                                text: 'Apply\nfor a visa'),
                            squareCard(
                                icon: Icons.build_outlined,
                                text: 'Repair your\nmobile'),
                            squareCard(
                                icon: Icons.favorite_outlined,
                                text: 'Get ABHA\ncard'),
                          ],
                        ),
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

  MaterialButton squareCard({required IconData icon, required String text}) {
    return MaterialButton(
        onPressed: () {},
        height: 90,
        minWidth: 127,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
        color: const Color.fromARGB(255, 219, 218, 218),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon),
              const SizedBox(height: 15),
              Text(text),
            ],
          ),
        ));
  }
}
