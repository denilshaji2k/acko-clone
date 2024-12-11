import 'package:acko_clone/view/home/family_view.dart';
import 'package:acko_clone/view/home/home_cards_view.dart';
import 'package:acko_clone/view/home/policies_view.dart';
import 'package:acko_clone/view_model/home_view_model.dart';

import 'package:flutter/material.dart';
import 'package:acko_clone/view/profile/profile_view.dart';
import 'package:acko_clone/view/home/vehicles_view.dart';
import 'package:acko_clone/view/home/rewards_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [
                Color.fromARGB(255, 64, 19, 101),
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
                            color: const Color(0xff171717),
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
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
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
                                      backgroundColor:
                                          isSelected.isSelected.value == 0
                                              ? const Color.fromARGB(255, 255,
                                                  255, 255)
                                              : const Color.fromARGB(
                                                  255, 40, 40, 40),
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
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
                                        : const Color.fromARGB(255, 40, 40, 40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    'Bike',
                                    style: TextStyle(
                                      color: isSelected.isSelected.value == 1
                                          ? const Color.fromARGB(
                                              255, 40, 40, 40)
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
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
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
                                          ? const Color.fromARGB(
                                              255, 40, 40, 40)
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
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
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
                                          ? const Color.fromARGB(
                                              255, 40, 40, 40)
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
                                        ? const Color.fromARGB(
                                            255, 255, 255, 255)
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
                                          ? const Color.fromARGB(
                                              255, 40, 40, 40)
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
                          height: 900,
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
                              MaterialButton(
                                onPressed: () {},
                                height: 90,
                                minWidth: MediaQuery.of(context).size.width,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                color: const Color.fromARGB(255, 219, 218, 218),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    ));
  }
}
