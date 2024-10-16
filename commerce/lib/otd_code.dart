import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTP_code extends StatefulWidget {
  const OTP_code({super.key});

  @override
  State<OTP_code> createState() => _OTP_code();
}

class _OTP_code extends State<OTP_code> {
  TextEditingController text1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: Colors.white,
      appBar: AppBar(),
      
body: Column(
crossAxisAlignment: CrossAxisAlignment.center,

  children: [

         const Align(
                alignment:Alignment.topLeft ,
                child: Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Enter your email to recive the "
                  "code and set your new password"),
              const SizedBox(
                height: 20,
              ),
                const SizedBox(height: 1,),
   TextFieldPin(
  textController: text1,
  autoFocus: true,
  codeLength: 5,
  alignment: MainAxisAlignment.center,
  defaultBoxSize: 46.0,
  margin: 10,
  selectedBoxSize: 46.0,
  textStyle: const TextStyle(fontSize: 16),
  defaultDecoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(
      color: Colors.grey, // Default box border color
    ),
  ),
  selectedDecoration: BoxDecoration(
    borderRadius: BorderRadius.circular(5.0),
    border: Border.all(
      color: Theme.of(context).primaryColor, // Selected box border color
      width: 2.0,
    ),
  ),
  onChange: (code) {
    setState(() {
      
    });
  },
)
,


            
               SizedBox(width: MediaQuery.sizeOf(context).width,
               height: 60,
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(
                          style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFFEF6969)))
                          ,
                            onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: )
                             
                            },
                            child: const Text("verefiy",style: TextStyle(fontSize: 30,color: Colors.white),
                            
                            
                            )
                            ,),
                 ),
               )
                        ,
  ],
),

   
    );
  }
}