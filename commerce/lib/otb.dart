import 'package:commerce/otd_code.dart';
import 'package:flutter/material.dart';

class OTB extends StatelessWidget {
  const OTB({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forget Password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Enter your PhoneNumber to recive the "
                  "code and set your new password"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                 
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: Text("Phone"),
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: InkWell(
                    
                      child: Icon(Icons.disabled_by_default_rounded),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xFFEF6969))),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: )
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OTP_code(),
                        ));
                  },
                  child: const Text(
                    "Send Code",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
               const SizedBox(height: 10,),
             
          
            
            ],
          ),
        ),
      ),
    );
  }
}