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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),

            //logo
            Image.asset("assets/logo.png",height:250,width:250,),

            // const SizedBox(height: 10,),

          //welcome text
            Text("Welcome to the coffee shop!",style:TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            )),
            
            const SizedBox(height: 50,),

            // first name text field
            Container(
              width: 350,
              child: MyTextfield(controller: firstNameController, hintText: "Enter your First name", obsecureText: false)),
            
            const SizedBox(height: 20,),

            // last name text field
            Container(
              width: 350,
              child: MyTextfield(controller: lastNameController, hintText: "Enter your Last name", obsecureText: false)),

            const SizedBox(height: 20,),

            //email text field
            Container(
              width: 350,
              child: MyTextfield(controller: emailController, hintText: "Enter you email", obsecureText: false)),

              const SizedBox(height: 20,),

            // password textField
            Container(
              width: 350,
              child: MyTextfield(controller: passwordController, hintText: "Enter your password", obsecureText: true)),

              const SizedBox(height: 20,),

              // password confirmation textfield
            Container(
              width: 350,
              child: MyTextfield(controller: confirmPasswordController, hintText: "Confirm your password", obsecureText: true)),
          ],
        )),
    );
  }
}