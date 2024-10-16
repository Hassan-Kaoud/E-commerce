import 'package:flutter/material.dart';
//import 'package:commerce/splashscreen.dart';
import 'package:commerce/splachscreen.dart';// Fixed import statement

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFFEF6969)
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const SplashScreen(),
      // SplashScreen(), // Fixed widget instantiation
    );
  }
}


