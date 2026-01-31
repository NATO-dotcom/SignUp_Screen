import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(
              child: Text("Welcome to our Baze!",style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
              ),),
            )
          ],
        ),
    );
  }
}