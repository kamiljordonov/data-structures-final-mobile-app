import 'package:danek_books/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function press;
  final double width;
  final bool isBold;

  CustomButton({
    this.text,
    this.press,
    this.width = double.infinity,
    this.isBold = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 56,
      child: TextButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.w500 : FontWeight.w400,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: BorderSide(color: Colors.yellowAccent),
            ),
          ),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
          backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
        ),
      ),
    );
  }
}
