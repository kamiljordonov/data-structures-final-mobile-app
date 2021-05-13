import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  final String mainText;
  final String content;
  final String imageUrl;

  const SplashContent({
    this.mainText,
    this.content,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          mainText,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(flex: 2),
        Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(14),
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic,
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          imageUrl,
          height: getProportionateScreenHeight(345),
          width: getProportionateScreenWidth(325),
        ),
      ],
    );
  }
}
