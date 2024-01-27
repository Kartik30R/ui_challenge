import 'package:coffee_app/Screens/Navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(249, 249, 249, 1),
       primaryColor: Color.fromARGB(255, 198, 124, 78)
      ),
      home: NavigationScreen(),
    );
}
}