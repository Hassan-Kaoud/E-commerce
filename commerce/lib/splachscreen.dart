import 'dart:async';
import 'package:flutter/material.dart';

import 'package:commerce/onboarding_screen.dart'; // Ensure this import path is correct

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() { 
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  onboarding()), // Ensure HomeScreen is correctly referenced
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Use Scaffold for better UI management
      body: Container(

        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Colors.black,

          image: DecorationImage(image: AssetImage("images/image2.jpg"), fit: BoxFit.cover,
          opacity: 0.4 ,
          ),


        ),
        child: const Center( // Center the children vertically
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_cart, size: 200
              ,
                color: Color(0xFFEF6969),
              ),
              SizedBox(height: 20),
              Text(
                "My Shop",
                style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold
                ,color: Colors.white
                ), // Style text
              ),
            ],
          ),
        ),
      ),
    );
  }
}
