import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final String label;
  final Function onTapped;

  DefaultButton({this.label, this.onTapped});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: TextButton(
        onPressed: onTapped,
        child: Text(label),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: kPrimaryColor,
          primary: Colors.white,
          textStyle: TextStyle(
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
      ),
    );
  }
}
