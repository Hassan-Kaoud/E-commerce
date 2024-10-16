 // Corrected the import
import 'package:commerce/widgets/contanir_button.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final TextStyle isStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) => Container(
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
Row(
  children: [
    SizedBox(width: 10,),
    Column( crossAxisAlignment:CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
    Row(
      children: [
        Text("Size:",style: isStyle,),
        SizedBox(width: 20,),
             Text("   S",style: isStyle,),
              SizedBox(width: 20,),
                  Text(" M",style: isStyle,),
                   SizedBox(width: 20,),
                       Text(" L",style: isStyle,),
                        SizedBox(width: 20,),
                            Text("  XL",style: isStyle,),
      ],
    ),SizedBox(height: 20,)
  ,  Row(
    children: [
      Text("Color:",style: isStyle,),
       SizedBox(width: 20,),
       CircleAvatar(radius: 10,backgroundColor: Colors.green,),
        SizedBox(width: 20,),
       CircleAvatar(radius: 10,backgroundColor: Colors.red,),
        SizedBox(width: 20,),
       CircleAvatar(radius: 10,backgroundColor: Colors.blue,),
        SizedBox(width: 20,),
       CircleAvatar(radius: 10,backgroundColor: Colors.black,)
    ],
  ),SizedBox(height: 20,),
  Row(children: [  Text("Toatal       -  1  +",style: isStyle,),SizedBox(width: 200,),],)
   , Row(
     children: [
       Text("Toatal payment",style: isStyle,),SizedBox(width: 200,),
       Text("300\$",style: TextStyle(
        fontSize: 30,
        color: Color(0xFEFF6969)),)
     ],
   ),SizedBox(height: 20,)
    
    ],),

  ],
),

                Center(
                  child: ContainerButton(
                    itext: "Buy Now",
                    bgColor: Colors.red,
                    containerWidth: 200, 
                
                  ),
                ),
              ],
            ),
          ),
        );
      },
      child: Center(

        child: Container(
          height: 40,
          width: 300,
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
             color: Color(0xFEFF6969),
          ),
          child: Center(
            child: Text(
              "Show Product Details",
              style: isStyle,
            ),
          ),
        ),
      ),
    );
  }
}
