import 'package:coffee_app/Screens/Navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 243, 243, 243),
       primaryColor: const Color.fromARGB(255, 198, 124, 78)
      ),
      home: const NavigationScreen(),
    );
}
}