import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditsHistory extends StatefulWidget {
  const CreditsHistory({super.key});

  @override
  State<CreditsHistory> createState() => _CreditsHistoryState();
}

class _CreditsHistoryState extends State<CreditsHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      // color: Colors.amber,
      // width: screenWidth,
      height: 130,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Text(
              '10th June 2021, 10:15pm',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 13,
                color: Color.fromARGB(144, 32, 80, 114),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 40,
            child: Container(
              width: 60,
              height: 55,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                'assets/images/ElephantH.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 40,
            child: Text(
              'Keells Supermarket ,',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(144, 32, 80, 114),
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 55,
            child: Text(
              'Ja-Ela',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromARGB(144, 32, 80, 114),
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 70,
            child: Text(
              '250 Points',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Color.fromARGB(255, 32, 80, 114),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
