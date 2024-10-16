import 'package:flutter/material.dart';
class Register extends StatelessWidget {
  const Register({super.key});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
    body: 
       Padding(
         padding: const EdgeInsets.all(15.0),
         child: SingleChildScrollView(
           child: Column(
            children: [
                 
           Image.asset("images/freed.png"),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Row(
               children: [
                 Expanded(
                   child: TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Firstname"),
                   prefixIcon: Icon(Icons.person),
                   enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                   focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                   
                   
                    ),
                   
                   
                   ),
                   
                 ),const SizedBox(width: 10,),
                     Expanded(
                       child: TextFormField(
                                     decoration: const InputDecoration(
                                       label: Text("Second name"),
                                    prefixIcon: Icon(Icons.person_2),
                                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                    focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                    
                                    
                                     ),
                                    
                                    
                                    ),
                     ),
               ],
             ),
           ),
           const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
              decoration: const InputDecoration(
                label: Text("Email"),
              prefixIcon: Icon(Icons.email),
              suffix: Icon(Icons.remove_red_eye),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              
              
              ),
              
              
              
              
              
                     ),
            ),
                   const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
              decoration: const InputDecoration(
                label: Text("phone number"),
              prefixIcon: Icon(Icons.phone),
              suffix: Icon(Icons.remove_red_eye),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              
              
              ),
              
              
              
              
              
                     ),
            ),
                 const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextFormField(
                obscureText: true,
              decoration: const InputDecoration(
                label: Text("Password"),
              prefixIcon: Icon(Icons.password),
              suffix: Icon(Icons.remove_red_eye),
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
                label: Text("Confirm Password"),
              prefixIcon: Icon(Icons.password),
              suffix: Icon(Icons.remove_red_eye),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              
              
              ),
              
              
              
              
              
                     ),
            ),
              
           
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(height: 20),
            ),
           
           SizedBox(width: MediaQuery.sizeOf(context).width,
             child: ElevatedButton(

                    style: const ButtonStyle(
                      
                      backgroundColor: WidgetStatePropertyAll(Color(0xFFEF6969)))
                    ,
                      onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: )
                       
                      },
                      child: const Text("Register ",style: TextStyle(fontSize: 30,color: Colors.white),
                      
                      
                      )
                      ,),
           )
                    ,
                   
            ],
                 ),
         ),
       ),
    );
  }
}