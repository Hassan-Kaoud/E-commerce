import 'package:commerce/Login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

// ignore: camel_case_types
class onboarding extends StatelessWidget {
  final introkey = GlobalKey<IntroductionScreenState>();

  onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    const pagedecoration = PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ),
        bodyTextStyle: TextStyle(fontSize: 19),
        bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 0));
    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "shop now",
          body: "welcome at my shop you will see special products",
          image: Image.asset("images/splash1.png"),
          decoration: pagedecoration,
        ),
        PageViewModel(
          title: "shop now",
          body: " you can select from diffrenet packges diffrent proudcts",
          image: Image.asset("images/splash2.png"),
          decoration: pagedecoration,
        ),
        PageViewModel(
          title: "shop now",
          body: "plese sign in and you will see our products",
          image: Image.asset("images/splash3.png"),
          decoration: pagedecoration,
          footer: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFFEF6969))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Login(),
                    ));
              },
              child: const Text(
                "Home ",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ),
        )
      ],
      showBackButton: true,
      showDoneButton: false,
      showSkipButton: false,
      back: const Text(
        "back",
        style: TextStyle(fontSize: 20),
      ),
      next: const Text(
        "next",
        style: TextStyle(fontSize: 20),
      ),
      skip: const Text(
        "next",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
