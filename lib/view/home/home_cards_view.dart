import 'package:acko_clone/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeCardsView extends StatelessWidget {
  const HomeCardsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(builder: (context, homeViewModel, child) {
      final int selectedIndex = homeViewModel.isSelected.value;
      return Column(
        children: [
          if (selectedIndex == 0) const CarCard(),
          if (selectedIndex == 1) const BikeCard(),
          if (selectedIndex == 2) const HealthCard(),
          if (selectedIndex == 3) const LifeCard(),
          if (selectedIndex == 4) const TravelCard(),
        ],
      );
    });
  }
}

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 150,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const Text(
                'Get up to 85% off\n on car insurance',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'poppins',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Car number',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Colors.black,
                      textColor: Colors.white,
                      child: const Text('Check prices'),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 90,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Insure your brand new car without\nany commsion',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'poppins',
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShaderMask(
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [
                                  Color(0xFFE11D74),
                                  Color(0xFF7F00FF),
                                ],
                              ).createShader(bounds),
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'poppins',
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Save as much as ₹36,000*',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'assets/ic_policy_details_car.svg',
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BikeCard extends StatelessWidget {
  const BikeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 150,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const Text(
                'Get your bike insurance\nin just 60 seconds',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'poppins',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Bike number',
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Colors.black,
                      textColor: Colors.white,
                      child: const Text('Check prices'),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 90,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Buying a brand new bike?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 100, 99, 99),
                    fontFamily: 'poppins',
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [
                              Color(0xFFE11D74),
                              Color(0xFF7F00FF),
                            ],
                          ).createShader(bounds),
                          child: RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'poppins',
                              ),
                              children: [
                                TextSpan(
                                  text: 'Get insurance directly',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                TextSpan(
                                  text:
                                      ' from us and \n save big on your premium',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset(
                      'assets/ic_policy_details_bike.svg',
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class HealthCard extends StatelessWidget {
  const HealthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 120,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const Text(
                'Do you have ₹20 lakhs handy\nto pay for hospital bills?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'poppins',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {},
                minWidth: 365,
                height: 40,
                color: Colors.black,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text('Get a health cover'),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 90,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Want us to pay all your hospital bills?',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 100, 99, 99),
                        fontFamily: 'poppins',
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShaderMask(
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [
                                  Color(0xFFE11D74),
                                  Color(0xFF7F00FF),
                                ],
                              ).createShader(bounds),
                              child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'poppins',
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Get our health plan and have 100% of\n your bills paid',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                       ] ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  'assets/ic_health_proposal.svg',
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 90,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const Center(
                child: Text(
                  'Coroporate health policy from ACKO?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                'assets/corporate_health_plan.svg',
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class LifeCard extends StatelessWidget {
  const LifeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 250,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Life insurance that\'s highly\nflexible and truly reliable',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'poppins',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Starting at just ₹199/month*',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 100, 99, 99),
                  fontFamily: 'poppins',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromARGB(255, 249, 249, 249),
                    Color.fromARGB(255, 182, 129, 235),
                  ],
                ).createShader(bounds),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  height: 80,
                  width: 365,
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          Text(
                            ' Change your coverage any time',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'poppins',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '   with ACKO Life Flexi Term Plan',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 100, 99, 99),
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minWidth: 365,
                height: 40,
                color: Colors.black,
                textColor: Colors.white,
                child: const Text('Explore now'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TravelCard extends StatelessWidget {
  const TravelCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 120,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Get international\ntravel insurance',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'poppins',
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      SvgPicture.asset(
                        'assets/travel_coming_soon.svg',
                        height: 70,
                        width: 50,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '   Plans starting at ₹10/day',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 100, 99, 99),
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          height: 95,
          width: 390,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 180,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFE11D74),
                            Color(0xFF7F00FF),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          'Limited-time discount of upto ₹1000',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Apply for visa',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'poppins',
                              ),
                            ),
                            Text(
                              'Get end-to-end assistance on your visa\napplication',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 100, 99, 99),
                                fontFamily: 'poppins',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                SvgPicture.asset(
                  'assets/travel_home_visa.svg',
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
