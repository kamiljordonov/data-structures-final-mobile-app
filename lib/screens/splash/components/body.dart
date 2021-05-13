import 'package:danek_books/constants.dart';
import 'package:danek_books/size_config.dart';
import 'package:flutter/material.dart';

import './splash_content.dart';
import '../../../components/default_button.dart';
import '../../sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "mainText": "Билим кенчи",
      "content": "Ким китеп окуй билсе күтүнө,\nЭки дүйнө жарык берер ишине.",
      "imageUrl": "assets/images/splash_01.png",
    },
    {
      "mainText": "Китеп",
      "content":
          "Билбегенди билгизген,,\nМээге сезим киргизген.\nАк булуттун үстүндө,\nАйга жакын жүргүзгөн.",
      "imageUrl": "assets/images/splash_02.png",
    },
    {
      "mainText": "Сенека",
      "content": "Көп китептен пайда жок,\nмыкты китептерден гана пайда бар.",
      "imageUrl": "assets/images/splash_03.png",
    }
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Container(
              // color: Colors.blue,
              width: double.infinity,
              child: PageView.builder(
                onPageChanged: (val) {
                  setState(() {
                    currentPage = val;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, ind) => SplashContent(
                  mainText: splashData[ind]["mainText"],
                  content: splashData[ind]["content"],
                  imageUrl: splashData[ind]["imageUrl"],
                ),
              ),
            ),
            flex: 4,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(16)),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildSplashDot(index),
                    ),
                  ),
                  Spacer(flex: 3),
                  DefaultButton(
                    label: "Кийинки",
                    onTapped: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildSplashDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: index == currentPage ? 30 : 10,
      decoration: BoxDecoration(
        color: index == currentPage ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
