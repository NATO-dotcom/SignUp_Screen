
import 'package:flutter/material.dart';
import 'package:sign_screen/screens/sign_in.dart';
import 'package:sign_screen/screens/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:SignUp(),

      //Declaring the route to sign in screen
      routes:{
        "/sign":(context) => SignIn()
      },

    );
  }
}

