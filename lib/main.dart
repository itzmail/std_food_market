import 'package:flutter/material.dart';
import 'package:food_market/ui/pages/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const MainPage(),
          '/sign-up': (context) => const SignUpPage(),
          'sign-up/address': (context) => const AddressPage(),
        });
  }
}
