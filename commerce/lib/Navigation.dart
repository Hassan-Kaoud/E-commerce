import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:commerce/Homescreen1.dart';
import 'package:commerce/Login.dart';
import 'package:commerce/Proudct.dart';
import 'package:commerce/Register.dart';
import 'package:commerce/cartscreen.dart';
import 'package:commerce/otd_code.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Widget> screens = [
    const Homescreen1(),
Product(),
     Cartscreen(),
    const Register(),
   
    const OTP_code(),
  ];
  int pageindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFEF6969),
        child: const Icon(Icons.qr_code),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[pageindex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapWidth: 0,
        icons: const [
          Icons.home_outlined,
          Icons.shopping_cart_outlined,
          Icons.favorite_border_outlined,
          Icons.person_2_outlined
        ],
        gapLocation: GapLocation.center,
        activeColor: Colors.red,
        activeIndex: pageindex,
        onTap: (p0) {
          setState(() {
            pageindex = p0;
          });
        },
      ),
    );
  }
}
