import 'package:danek_books/screens/home/home_screen.dart';
import 'package:danek_books/screens/sign_in/sign_in_screen.dart';
import 'package:danek_books/screens/sign_up/sign_up_screen.dart';
import 'package:danek_books/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

import 'screens/cart/cart_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/favorite/favorite_screen.dart';
import 'screens/talk_about/talk_about_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  FavoriteScreen.routeName: (context) => FavoriteScreen(),
  TalkAboutScreen.routeName: (context) => TalkAboutScreen(),
};
