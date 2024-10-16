import 'package:commerce/otb.dart';
import 'package:flutter/material.dart';
import 'code.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  bool Ctr = false;
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  "code and set your new password" ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: email,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    label: const Text("Email"),
                    prefixIcon: const Icon(Icons.email),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          email.clear();
                        });
                      },
                      child: const Icon(Icons.disabled_by_default_rounded),
                    ),
                  ),
                ),
              ),
                const SizedBox(height: 10,),
                  const SizedBox(height: 10,),
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
                          builder: (context) => const Code(),
                        ));
                  },
                  child: const Text(
                    "Send Code",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),
              ),
                const SizedBox(height: 10,),
                  const SizedBox(height: 10,),
                    const SizedBox(height: 10,),
              const Text(
                "OR",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 10,),
              
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const OTB()));
                  },
                  child:const Text("using Phone Number",style: TextStyle( color: Color(0xFFEF6969),fontSize: 20,fontWeight: FontWeight.bold),) )
            ],
          ),
        ),
      ),
    );
  }
}
