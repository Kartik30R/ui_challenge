import 'package:coffee_app/widgets/item.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: CoffeeCard(currentIndex: 0, currentCoffee: 'cappitchano')),
    );
  }
}