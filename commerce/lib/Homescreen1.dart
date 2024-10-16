import 'package:flutter/material.dart';

List tabs = ["ALL", "Catogroy", "Top", "Recommended"];
List imageList = [
  "images/image1.jpg",
  "images/image2.jpg",
  "images/image3.jpg",
  "images/image4.jpg"
];
List productTitle = ["Hooded", "Jacket", "T_Shirt", "Child Jacket"];
List price = ["\$200", "\$500", "\$400", "\$300"];
List reviews = [
  "55",
  "859",
  "66",
  "333",
];

class Homescreen1 extends StatelessWidget {
  const Homescreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFEF6969),
                          ),
                          border: InputBorder.none,
                          label: Text("find your product", style: TextStyle()),
                        ),
                      ),
                    ),
                    //SizedBox(width: 30,),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Center(
                        child: Icon(
                          Icons.notifications,
                          color: Color(0xFFEF6969),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF0D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("images/freed.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 40,
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            tabs[index],
                            style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(imageList[index]),
                                    ),
                                  ),
                                  Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xFFFE0969),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                                height: 30,
                                child: Text(
                                  productTitle[index],
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(reviews[index]),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  price[index],
                                  style: TextStyle(
                                      color: Color(0xFFFE0969),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Newest Prouduct",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 20,
                ),
                GridView.builder(
                  
                  itemCount: productTitle.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.6,
                      crossAxisCount: 2,
                      crossAxisSpacing: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      
                      margin: EdgeInsets.only(right: 8),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(imageList[index]),
                                  ),
                                ),
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color(0xFFFE0969),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                              height: 30,
                              child: Text(
                                productTitle[index],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                          Center(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(reviews[index]),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  price[index],
                                  style: TextStyle(
                                      color: Color(0xFFFE0969),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
