import 'package:danek_books/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF43a047);
const kPrimaryLightColor = Color(0xFF76d275);
const kPrimaryGradienColor = LinearGradient(
  colors: [Color(0xFF00FF00), Color(0xFF99CC00)],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
const kSecondaryColor = Color(0xFFFF6600);
const kTextColor = Color(0xFF000000);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kPassNullError = "Сырсөзүңүздү жазыңыз";
const String kShortPassError = "Сырсөзүңүз абдан кыска";
const String kMatchPassError = "Сырсөзүңүз дал келбеди";
const String kNamelNullError = "Атыңызды жазыңыз";
const String kPhoneNumberNullError = "Телефонуңузду жазыңыз";
const String kAddressNullError = 'Адресиңизди жазыңыз';

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
