// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.buttonText,
    this.buttonColor = Colors.grey,
    this.textColor = Colors.white,
    this.radius = 16,
    this.height = 40,
    required this.buttonIcon,
    required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double radius;
  final double height;
  final Widget buttonIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        primary: buttonColor,
        onPrimary: textColor,
        minimumSize: Size(double.infinity, height),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buttonIcon,
          Text(
            buttonText,
            style: TextStyle(color: textColor),
          ),
          Opacity(opacity:0, child:buttonIcon),

        ],
      ),
    );
  
  }
}
