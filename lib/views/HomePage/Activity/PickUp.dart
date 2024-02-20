import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/views/HomePage/Activity/History/History.dart';
import 'package:trashtocash/views/HomePage/Activity/Ongoing/Ongoing.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pick-ups',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Ongoing',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Ongoing(),
              const Ongoing(),
              Text(
                'History',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const History(),
              const History(),
              const History(),
              const History(),
            ],
          ),
        ),
      ),
    );
  }
}
