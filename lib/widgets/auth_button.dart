import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  const AuthButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return AuthButton(
      text: text,
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
  }
}