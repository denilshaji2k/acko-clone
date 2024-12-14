import 'package:acko_clone/view/home/family_view.dart';
import 'package:acko_clone/view/home/home_cards_view.dart';
import 'package:acko_clone/view/home/policies_view.dart';
import 'package:acko_clone/view/navbar/coverages_view.dart';
import 'package:acko_clone/view/navbar/discover_view.dart';
import 'package:acko_clone/view/navbar/support_view.dart';
import 'package:acko_clone/view_model/home_view_model.dart';

import 'package:flutter/material.dart';
import 'package:acko_clone/view/profile/profile_view.dart';
import 'package:acko_clone/view/home/vehicles_view.dart';
import 'package:acko_clone/view/home/rewards_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeContent(),
    const CoveragesView(),
    const DiscoverView(),
    const SupportView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 245, 162, 242),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shield_outlined),
            label: 'Coverages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Support',
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
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
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileView(),
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Hey User!👋',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
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
                const SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 110,
                        width: 395,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 28, 1, 43),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "YOUR ACKO ESSENTIALS",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      MaterialButton(
                                        splashColor: Colors.black,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const PoliciesView(),
                                            ),
                                          );
                                        },
                                        child: const Column(
                                          children: [
                                            Icon(
                                              Icons.assignment_outlined,
                                              size: 40,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Policies',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      MaterialButton(
                                        splashColor: Colors.black,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const VehiclesView(),
                                            ),
                                          );
                                        },
                                        child: const Column(
                                          children: [
                                            Icon(
                                              Icons.garage_outlined,
                                              size: 40,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Vehicles',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      MaterialButton(
                                        splashColor: Colors.black,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const FamilyView(),
                                            ),
                                          );
                                        },
                                        child: const Column(
                                          children: [
                                            Icon(
                                              Icons.group_outlined,
                                              size: 40,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Family',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      MaterialButton(
                                        splashColor: Colors.black,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const RewardsView(),
                                            ),
                                          );
                                        },
                                        child: const Column(
                                          children: [
                                            Icon(
                                              Icons.redeem_outlined,
                                              size: 40,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              'Rewards',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Explore insurances',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ],
                ),
                //Insurance cards starts here
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      //car insurance
                      Consumer<HomeViewModel>(
                        builder: (context, isSelected, _) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    isSelected.setIsSelected(0);
                                  },
                                  style: TextButton.styleFrom(
                                    backgroundColor: isSelected
                                                .isSelected.value ==
                                            0
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(255, 40, 40, 40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    'Car',
                                    style: TextStyle(
                                      color: isSelected.isSelected.value == 0
                                          ? const Color.fromARGB(
                                              255, 40, 40, 40)
                                          : Colors.white,
                                    ),
                                  )),

                              //bike insurance
                              TextButton(
                                onPressed: () {
                                  isSelected.setIsSelected(1);
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: isSelected
                                              .isSelected.value ==
                                          1
                                      ? const Color.fromARGB(255, 255, 255, 255)
                                      : const Color.fromARGB(255, 40, 40, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  'Bike',
                                  style: TextStyle(
                                    color: isSelected.isSelected.value == 1
                                        ? const Color.fromARGB(255, 40, 40, 40)
                                        : Colors.white,
                                  ),
                                ),
                              ),

                              //health insurance
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: isSelected
                                              .isSelected.value ==
                                          2
                                      ? const Color.fromARGB(255, 255, 255, 255)
                                      : const Color.fromARGB(255, 40, 40, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  isSelected.setIsSelected(2);
                                },
                                child: Text(
                                  'Health',
                                  style: TextStyle(
                                    color: isSelected.isSelected.value == 2
                                        ? const Color.fromARGB(255, 40, 40, 40)
                                        : Colors.white,
                                  ),
                                ),
                              ),

                              //life insurance
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: isSelected
                                              .isSelected.value ==
                                          3
                                      ? const Color.fromARGB(255, 255, 255, 255)
                                      : const Color.fromARGB(255, 40, 40, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  isSelected.setIsSelected(3);
                                },
                                child: Text(
                                  'Life',
                                  style: TextStyle(
                                    color: isSelected.isSelected.value == 3
                                        ? const Color.fromARGB(255, 40, 40, 40)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                              //travel insurance
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: isSelected
                                              .isSelected.value ==
                                          4
                                      ? const Color.fromARGB(255, 255, 255, 255)
                                      : const Color.fromARGB(255, 40, 40, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () {
                                  isSelected.setIsSelected(4);
                                },
                                child: Text(
                                  'Travel',
                                  style: TextStyle(
                                    color: isSelected.isSelected.value == 4
                                        ? const Color.fromARGB(255, 40, 40, 40)
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      //home cards view added using class
                      const HomeCardsView(),
                      //main container after home cards view

                      Container(
                        height: 850,
                        width: 395,
                        margin: const EdgeInsets.only(top: 20),
                        padding: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 3),
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              padding: const EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              height: 25,
                              width: 130,
                              child: Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFFE11D74),
                                      Color(0xFF7F00FF),
                                    ],
                                  ),
                                ),
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: Colors.white,
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'No ACKO policy needed',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //end of no acko policy needed
                            const SizedBox(height: 7),
                            const Text(
                              ' Do more than just insurance',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              '  Useful services for your health,vehicles and family.',
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 99, 99),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            const SizedBox(height: 10),
                            MaterialButton(
                              height: 90,
                              minWidth: MediaQuery.of(context).size.width,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(11),
                              ),
                              color: const Color.fromARGB(255, 219, 218, 218),
                              onPressed: () {},
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/ic_abha_icon.svg',
                                        height: 20,
                                        width: 20,
                                      ),
                                      const Spacer(),
                                      const Icon(Icons.arrow_forward_rounded),
                                    ],
                                  ),
                                  const Text(
                                    'Get ABHA - the Aadhaar of healthcare',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const Text(
                                    'Mandatory health ID for hospitalisations,emergency visits and\ninsurance claims',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 99, 99, 99),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                squareCard(
                                    icon: Icons.build_circle_outlined,
                                    text: 'Book car\nservicing'),
                                squareCard(
                                    icon: Icons.airplane_ticket_outlined,
                                    text: 'Book flight\ntickets'),
                                squareCard(
                                    icon: Icons.account_balance_outlined,
                                    text: 'Get vehicle\ninfo'),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                squareCard(
                                    icon: Icons.traffic_outlined,
                                    text: 'Pay  traffic\nchallans'),
                                squareCard(
                                    icon: Icons.assignment_ind_outlined,
                                    text: 'See PUCC\nvalidity'),
                                MaterialButton(
                                  onPressed: () {},
                                  height: 90,
                                  minWidth: 127,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  color:
                                      const Color.fromARGB(255, 219, 218, 218),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                        ),
                                        child: const Icon(
                                            Icons.arrow_right_alt_sharp,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(height: 15),
                                      const Text('Discover\nall'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              '  Drive away with the best deals',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inter',
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '  Enjoy supersaver offers on new cars, sell you car at a\n  great price, save on car servicing and more',
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 99, 99),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Inter',
                              ),
                            ),

                            //scrolling image starts here

                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 320,
                                  width: 395,
                                  child: ListView.builder(
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
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        width: 383,
                                        child: Stack(
                                          children: [
                                            // Background image
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image:
                                                      AssetImage(images[index]),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            // Overlay for text and button
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            //
                                            //Positioned content
                                            Positioned(
                                              top: 15,
                                              left: 10,
                                              child: Column(
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/ackodrive.svg',
                                                    height: 15,
                                                    width: 15,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              top: 40,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    texts[index],
                                                    style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 255, 255, 255),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    texts1[index],
                                                    style: const TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 185, 185, 185),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Positioned(
                                              top: 254,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: MaterialButton(
                                                  minWidth: 367,
                                                  color: const Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  textColor:
                                                      const Color.fromARGB(
                                                          255, 0, 0, 0),
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                                )
                              ],
                            ),
                            //scrollview ends here
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //abha starts here
                Container(
                  height: 396.29,
                  width: 500,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 77, 16, 90),
                        Color.fromARGB(255, 4, 2, 52),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text('Do you and your family have\nABHA cards?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text('ABHA is the Aadhaar of healthcare',
                              style: TextStyle(
                                color: Color.fromARGB(255, 207, 15, 241),
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'It is already mandatory in AIIMS and will soon need to be needed\neverywhere for treatments and tests',
                            style: TextStyle(
                              color: Color.fromARGB(255, 145, 145, 145),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset('assets/aabha.png'),
                          MaterialButton(
                            minWidth: 445,
                            color: const Color.fromARGB(255, 7, 5, 44),
                            textColor: const Color.fromARGB(255, 255, 255, 255),
                            onPressed: () {
                              // Handle button press
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Create ABHA cards for FREE",
                                ),
                                SizedBox(
                                    width: 8), // Space between text and icon
                                Icon(Icons.arrow_right_alt_outlined),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //abha ends here

                //In the spotlight starts here
                Container(
                  color: Colors.white,
                  height: 1550,
                  width: 460,
                  child: Column(children: [
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '  In the spotlight',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 320,
                          width: 395,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              final images = [
                                'assets/visa.jpg',
                                'assets/ambulance.jpg',
                              ];

                              final texts = [
                                "Travelling abroad?\nLet us handle the visa process",
                                "  Are you prepared for a\n  emergency",
                              ];

                              final texts1 = [
                                "       Get expert assistance,pickup and drop of\n       documents and doorstep visa delivery",
                                "   Instant online quote and free evaluation",
                              ];
                              final button = [
                                "Apply for visa",
                                "Book an ambulance",
                              ];

                              return Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
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
                                    const Positioned(
                                      top: 15,
                                      left: 10,
                                      child: Column(
                                        children: [],
                                      ),
                                    ),
                                    Positioned(
                                      left: 10,
                                      top: 40,
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
                                      top: 254,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: MaterialButton(
                                          minWidth: 367,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          textColor: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          onPressed: () {},
                                          child: Text(button[index]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        const Row(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '  Trending now',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/v1.png',
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              '   Get insurance directly and save up to ₹36K',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.5,
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/v2.png',
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              '   No hassle, no confusion and the right price',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.5,
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/v3.png',
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              '   New car? Buy insurance directly and save up to\n   ₹36K',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                letterSpacing: 0.5,
                              )),
                        ),
                        const SizedBox(
                          height: 29,
                        ),
                        Container(
                          height: 250,
                          width: 450,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 255, 255, 255),
                                Color.fromARGB(255, 181, 211, 220),
                                Color.fromARGB(255, 255, 255, 255),
                              ],
                            ),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/umbrella.png'),
                              const Text(
                                'The protection destination',
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 96, 5, 142),
                                  letterSpacing: 0.5,
                                ),
                              ),
                              const Text(
                                'for millions of Indians',
                                style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ]),

                  //in the spotlight ends here
                ),
              ],
            ),
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
