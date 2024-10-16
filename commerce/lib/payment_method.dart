import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int type = 1;
  void _handelRadio(Object? e) => setState(() {
        type = e as int;
      });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

appBar: AppBar(),
body: Column(
  children: [
    SizedBox(height: 30,)
   , Container(
    width: size.width,
    height: 55,
    decoration: BoxDecoration(
      border: type==1?Border.all(width: 1,color: Color(0xFFFF6969)):Border.all(width: 0.3 ,color: Colors.black)

    ),
    child:  Row(
      children: [
        Row(
          children: [
            Radio(value: 1, groupValue: type, onChanged: _handelRadio,activeColor: Color(0xffff6969),),
            Text("Amzon way ",style: type==1?TextStyle():TextStyle(),),
            // Image.asset("name",width: 70,
            // height: 70,
            // fit: BoxFit.cover,)
          ],
        )
      ],
    ),
   )
  ],
),

    );
  }
}
