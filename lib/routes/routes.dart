import 'package:flutter/material.dart';
import 'package:trashtocash/views/History/HistoryCR.dart';
import 'package:trashtocash/views/HomePage/HomePage.dart';
import 'package:trashtocash/views/HomePage/Pick_Up/PickUpL.dart';
import 'package:trashtocash/views/HomePage/Pick_Up/Timeslot.dart';
import 'package:trashtocash/views/HomePage/Profile/DeleteProfile/DeactivateProfile.dart';
import 'package:trashtocash/views/HomePage/Profile/DeleteProfile/DeleteProfile.dart';
import 'package:trashtocash/views/HomePage/Profile/DeleteProfile/DeleteProfile1.dart';
import 'package:trashtocash/views/HomePage/Profile/DeleteProfile/DeleteProfile2.dart';
import 'package:trashtocash/views/HomePage/Profile/EditProfile/EditProfile.dart';
import 'package:trashtocash/views/HomePage/Profile/Profile.dart';
import 'package:trashtocash/views/HomePage/Promotions/Promotions.dart';
import 'package:trashtocash/views/HomeScreen/HomeScreen.dart';
import 'package:trashtocash/views/Location/Location.dart';
import 'package:trashtocash/views/LoginScreen/LoginScreen.dart';
import 'package:trashtocash/views/MenuOptions/HowToWork/HowToWork.dart';
import 'package:trashtocash/views/MenuOptions/InviteAFriend/InviteAFriend.dart';
import 'package:trashtocash/views/MenuOptions/Support/Support.dart';
import 'package:trashtocash/views/MenuOptions/T&C/TC2.dart';
import 'package:trashtocash/views/Notifications/Notifications.dart';
import 'package:trashtocash/views/OTPScreen/L_OTPScreen.dart';
import 'package:trashtocash/views/OTPScreen/OTPScreen.dart';
import 'package:trashtocash/views/RegisterScreen/RegisterPage.dart';
import 'package:trashtocash/views/SplashScreen/SplashScreen.dart';
import 'package:trashtocash/views/Terms&Conditions/TC.dart';

class AppRoutes {
  static const String initialRoute = '/lotpscreen';

  static final Map<String, WidgetBuilder> routes = {
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
    '/support': (context) => Support(),
    '/termsConditions2': (context) => TC2(),
    '/inviteAFriend': (context) => InviteAFriend(),
    '/howToWork': (context) => HowToWork(),
    '/historyCR': (context) => HistoryCR(),
    '/profile': (context) => Profile(),
    '/editProfile': (context) => EditPro(),
    '/deleteProfile': (context) => DeleteProfile(),
    '/deleteProfile1': (context) => DeleteProfile1(),
    '/deleteProfile2': (context) => DeleteProfile2(),
    '/deactivateProfile': (context) => DeactivateProfile(),
    '/location': (context) => Location(),
    '/pickUp': (context) => PickUpL(),
    '/timeSlote': (context) => TimeSlote(),
  };
}
