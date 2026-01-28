import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final controller;
  


  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecureText,

    });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecureText,
      decoration: InputDecoration(
        hintText: hintText,
        
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15)
        ),
          
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(15)
        ),

        fillColor:Colors.white,
        filled: true,
      ),
    );
  }
}