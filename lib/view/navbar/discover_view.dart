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
                height: 900,
                width: 490,
                child: Column(
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        final images = [
                          'assets/1.jpeg',
                          'assets/2.jpeg',
                          'assets/3.jpeg',
                        ];

                        final texts = [
                          "Save ₹80,000* on your next car",
                          "Sell your car at a great price",
                          "Take car care to the next level",
                        ];

                        final texts1 = [
                          "    Supersaver deals and superfast delivery",
                          "          Instant online quote and free evaluation",
                          "             Premium maintenance at unbeatable prices",
                        ];
                        final button = [
                          "Explore new cars",
                          "Check resale value",
                          "Book your car service",
                        ];

                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          width: 383,
                          child: Stack(
                            children: [
                              // Background image
                              Container(
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
                                top: 40,
                                child: Column(
                                  children: [
                                    Text(
                                      texts[index],
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
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
                                top: 254,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MaterialButton(
                                    minWidth: 367,
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
