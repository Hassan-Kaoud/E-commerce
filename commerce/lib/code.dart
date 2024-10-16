import 'package:flutter/material.dart';

class Code extends StatelessWidget {
  const Code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(

  children: [

     Image.asset("images/freed.png"),
                        const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                  decoration: const InputDecoration(
                    label: Text("Code"),
                  prefixIcon: Icon(Icons.numbers),
                 // suffix: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                     focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  
                  
                  ),
                  
                  
                  
                  
                  
                         ),
                ),
                            Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Password"),
                  prefixIcon: Icon(Icons.lock),
                  
                  suffixIcon:
                   Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                     focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  
                  
                  ),
                  
                  
                  
                  
                  
                         ),
                ),
                const SizedBox(height: 1,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Confirm Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffix: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                     focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  
                  
                  ),
                  
                  
                  
                  
                  
                         ),
                ),
                  const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(width: MediaQuery.sizeOf(context).width,
                  height: 60,
                   child: ElevatedButton(
                          style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color(0xFFEF6969)))
                          ,
                            onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: )
                             
                            },
                            child: const Text("Confirm",style: TextStyle(fontSize: 30,color: Colors.white),
                            
                            
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