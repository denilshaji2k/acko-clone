import 'package:flutter/material.dart';

class HomeScrollView extends StatelessWidget {
  const HomeScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ScrollOne extends StatelessWidget {
  const ScrollOne(
      {super.key}); // Added `const` and corrected the class name capitalization

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 300,
        width: 395,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/1.jpeg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
