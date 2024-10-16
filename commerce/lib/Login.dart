import 'package:commerce/Navigation.dart';
import 'package:commerce/Register.dart';
import 'package:commerce/forgetpassword.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset("images/freed.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.password),
                  suffix: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
             TextButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Forgetpassword(),
                      ),
                    );
                  },
                  child: const Text(
                    "Forget password",
                    style: TextStyle(fontSize: 15, color: Color(0xFFEF6969)),
                  ),
                ),
             
                
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: SizedBox(height: 20),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFEF6969))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyWidget(),));
                },
                child: const Text(
                  "Login ",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                const Text("Dont have account?"),
                TextButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.white)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Register(),
                      ),
                    );
                  },
                  child: const Text(
                    "Registernow",
                    style: TextStyle(fontSize: 15, color: Color(0xFFEF6969)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
