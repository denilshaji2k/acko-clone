import 'package:flutter/material.dart';

class HomeCardsView extends StatelessWidget {
  final int selectedIndex;
  const HomeCardsView({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (selectedIndex == 0) const CarCard(),
        if (selectedIndex == 1) const BikeCard(),
        if (selectedIndex == 2) const HealthCard(),
        if (selectedIndex == 3) const LifeCard(),
        if (selectedIndex == 4) const TravelCard(),
      ],
    );
  }
}

class CarCard extends StatelessWidget {
  const CarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text('First Card'),
    );
  }
}

class BikeCard extends StatelessWidget {
  const BikeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text('Second Card'),
    );
  }
}

class HealthCard extends StatelessWidget {
  const HealthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text('Third Card'),
    );
  }
}

class LifeCard extends StatelessWidget {
  const LifeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text('Fourth Card'),
    );
  }
}

class TravelCard extends StatelessWidget {
  const TravelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text('Fifth Card'),
    );
  }
}
