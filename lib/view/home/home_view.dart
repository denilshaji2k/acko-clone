import 'package:acko_clone/view/home/family_view.dart';
import 'package:acko_clone/view/home/home_cards_view.dart';
import 'package:acko_clone/view/home/policies_view.dart';
import 'package:acko_clone/view_model/home_view_model.dart';

import 'package:flutter/material.dart';
import 'package:acko_clone/view/profile/profile_view.dart';
import 'package:acko_clone/view/home/vehicles_view.dart';
import 'package:acko_clone/view/home/rewards_view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                        // ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                      onPressed: () {
                                        isSelected.setIsSelected(0);
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor:
                                            isSelected.isSelected.value == 0
                                                ? const Color.fromARGB(
                                                    255, 255, 255, 255)
                                                : const Color.fromARGB(
                                                    255, 40, 40, 40),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Text(
                                        'Car',
                                        style: TextStyle(
                                          color:
                                              isSelected.isSelected.value == 0
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
                                      backgroundColor:
                                          isSelected.isSelected.value == 1
                                              ? const Color.fromARGB(255, 255,
                                                  255, 255)
                                              : const Color.fromARGB(
                                                  255, 40, 40, 40),
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
                                      backgroundColor:
                                          isSelected.isSelected.value == 2
                                              ? const Color.fromARGB(255, 255,
                                                  255, 255)
                                              : const Color.fromARGB(
                                                  255, 40, 40, 40),
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
                                      backgroundColor:
                                          isSelected.isSelected.value == 3
                                              ? const Color.fromARGB(255, 255,
                                                  255, 255)
                                              : const Color.fromARGB(
                                                  255, 40, 40, 40),
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
                                      backgroundColor:
                                          isSelected.isSelected.value == 4
                                              ? const Color.fromARGB(255, 255,
                                                  255, 255)
                                              : const Color.fromARGB(
                                                  255, 40, 40, 40),
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
                          const HomeCardsView()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
