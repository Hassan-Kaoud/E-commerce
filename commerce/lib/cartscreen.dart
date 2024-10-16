import 'package:commerce/payment_method.dart';
import 'package:commerce/widgets/contanir_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  List imageList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg"
  ];
  List productTitle = ["Coat", "Jacket", "T_Shirt", "Child Jacket"];

  List price = ["\$500", "\$700", "\$100", "\$250"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("cart")),
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              child: ListView.builder(
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            value: true,
                            splashRadius: 20,
                            activeColor: Color(0xFFEF6969),
                            onChanged: (val) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTitle[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Hooded Jacket",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                price[index],
                                style: TextStyle(
                                  color: Color(0xFFEF6969),
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                CupertinoIcons.minus,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                CupertinoIcons.plus,
                                color: Colors.green,
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Select All",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Checkbox(
                  value: false,
                  onChanged: (val) {},
                  splashRadius: 20,
                  activeColor: Color(0xFFEF6969),
                ),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1,
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Payment",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "\$1550",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFEF6969),
                  ),
                ),
              ],
            ),

             Center(
                  child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFEF6969))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod(),));
                },
                child: const Text(
                  "Login ",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
                ), ],
        ),
      )),
    );
  }
}
