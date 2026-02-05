import 'package:flutter/material.dart';
import 'package:sign_screen/widgets/my_textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final signinEmail = TextEditingController();
    final signinPassword = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.lock, size: 200, weight: 50, color: Colors.brown,),
              ),

              const SizedBox(height: 30),

              Container(
                width: 350,
                child: MyTextfield(
                  controller: signinEmail,
                  hintText: "Enter Email",
                  obsecureText: false,
                ),
              ),

              const SizedBox(height: 20),

              Container(
                width: 350,
                child: MyTextfield(
                  controller: signinPassword,
                  hintText: "Enter password",
                  obsecureText: true,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 270.0),
                    child: Text("Forgot Password?"),
                  ),
                ],
              ),

              const SizedBox(height: 100,),

              Container(
                height: 80,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.brown,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap:() => Navigator.pushNamed(context, "/nav"),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ), 
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
