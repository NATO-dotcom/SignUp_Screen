import 'package:flutter/material.dart';
import 'package:sign_screen/widgets/my_textfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
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
              width: 50,
              child: MyTextfield(controller:TextEditingController(), hintText: "Enter you first name", obsecureText: false, TextEditingController: null,),
            )


          
          ],
        ))
    );
  }
}