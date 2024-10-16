import 'package:commerce/widgets/productdetails.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

List<String> imageList = [
  "images/image1.jpg",
  "images/image2.jpg",
  "images/image3.jpg",
  "images/image4.jpg"
];

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Carousel Slider
                Center(
                  child: SizedBox(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: FanCarouselImageSlider.sliderType1(
                      imagesLink: imageList,
                      isAssets: true,
                      autoPlay: false,
                      sliderHeight: 430,
                      showIndicator: true,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Spacer between carousel and details
                // Product Details
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hodi",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "300\$",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Space between price and rating
                // Rating Bar
                RatingBar.builder(itemSize: 30,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),

                Row(
                   children: [
                    Icon(Icons.shopping_cart,
                    color: Colors.red,),
                    Spacer(flex: 2,),
                       ProductDetails(),
Spacer(flex: 1,)
                   ],
                ),
       
              ],
            ),
          ),
        ),
      ),
    );
  }
}
