import 'package:flutter/material.dart';
import 'package:trashtocash/views/HomePage/HomePage.dart';
import 'package:trashtocash/views/HomePage/Promotions/Promotions.dart';
import 'package:trashtocash/views/HomeScreen/HomeScreen.dart';
import 'package:trashtocash/views/LoginScreen/LoginScreen.dart';
import 'package:trashtocash/views/Notifications/Notifications.dart';
import 'package:trashtocash/views/OTPScreen/L_OTPScreen.dart';
import 'package:trashtocash/views/OTPScreen/OTPScreen.dart';
import 'package:trashtocash/views/RegisterScreen/RegisterPage.dart';
import 'package:trashtocash/views/SplashScreen/SplashScreen.dart';
import 'package:trashtocash/views/Terms&Conditions/TC.dart';

class AppRoutes {
  static const String initialRoute = '/splashScreen';

  static final Map<String, WidgetBuilder> routes = {
    '/login': (context) => LoginScreen(),
    '/signup': (context) => RegisterPage(),
    '/homepage': (context) => HomePage(),
    '/notifications': (context) => Notifications(),
    '/loginScreen': (context) => LoginScreen(),
    '/splashScreen': (context) => SplashScreen(),
    '/homeScreen': (context) => HomeScreen(),
    '/otpscreen': (context) => OTPScreen(),
    '/lotpscreen': (context) => LOTPScreen(),
    '/promotions': (context) => Promotions(),
    '/termsConditions': (context) => TC(),
    // '/support': (context) => Support(),
    // '/termsConditions2': (context) => TC2(),
    // '/inviteAFriend': (context) => InviteAFriend(),
    // '/howToWork': (context) => HowToWork(),
  };
}
