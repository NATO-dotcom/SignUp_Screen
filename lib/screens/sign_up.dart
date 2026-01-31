import 'package:flutter/material.dart';
import 'package:sign_screen/widgets/my_textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final firstNameController = TextEditingController();
    final lastNameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.greenAccent, 
      body:SingleChildScrollView(
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),

            //logo
            Image.asset("assets/logo.png",height:250,width:250,),

            // const SizedBox(height: 10,),

          //welcome text
            Text("Welcome to the coffee shop!",style:TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            )),
            
            const SizedBox(height: 30,),

            // first name text field
            Container(
              width: 350,
              child: MyTextfield(controller: firstNameController, hintText: "Enter your First name", obsecureText: false)),
            
            const SizedBox(height: 15,),

            // last name text field
            Container(
              width: 350,
              child: MyTextfield(controller: lastNameController, hintText: "Enter your Last name", obsecureText: false)),

            const SizedBox(height: 15,),

            //email text field
            Container(
              width: 350,
              child: MyTextfield(controller: emailController, hintText: "Enter your email", obsecureText: false)),

              const SizedBox(height: 15,),

            // password textField
            Container(
              width: 350,
              child: MyTextfield(controller: passwordController, hintText: "Enter your password", obsecureText: true)),

              const SizedBox(height: 15,),

              // password confirmation textfield
            Container(
              width: 350,
              child: MyTextfield(controller: confirmPasswordController, hintText: "Confirm your password", obsecureText: true)),

              const SizedBox(height: 30,),
              // sign up button
              Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text("Sign Up",style:TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  ),
                ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context,"/sign"),
                child: Text(
                  "Sign In",
                    style: TextStyle(
                    color: Colors.brown,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
                ],
          ),

          ],
        )),
      )       
    );
  }
}