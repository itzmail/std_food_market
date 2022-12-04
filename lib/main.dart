import 'package:flutter/material.dart';
import 'package:food_market/ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GeneralPage(
        onBackButtonPressed: () {},
        title: "Navbar",
        child: const Text('Body'),
      ),
    );
  }
}
