import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/views/HomeScreen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const  HomeScreen()),
      ),
    );
    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset('assets/images/ttcLogo.png'),
            Spacer(),
            Text(
              'By',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 21,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/chakraLogo.png'),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
