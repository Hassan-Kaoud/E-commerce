import 'package:commerce/cartscreen.dart';
import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String itext;

  const ContainerButton({
    super.key, 
    this.bgColor, 
    this.containerWidth, 
    required this.itext,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerWidth, // Use SizedBox to set the width
      child: ElevatedButton(
        onPressed: () {
          // Navigate to CartScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Cartscreen(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor, 
          textStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
        ),
        child: Center(
          child: Text(
         "Check out",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
