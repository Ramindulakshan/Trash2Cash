import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RVM extends StatefulWidget {
  const RVM({super.key});

  @override
  State<RVM> createState() => _RVMState();
}

class _RVMState extends State<RVM> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 120,
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 30,
            top: 0,
            child: Container(
              height: 85,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 122, 0),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 122, 0),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 15,
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
                'assets/images/map.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 85,
            top: 15,
            child: Text(
              '09/10/2021',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Positioned(
            left: 85,
            top: 33,
            child: Text(
              '15 Mins - 30 Mins',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Positioned(
            left: 85,
            top: 55,
            child: Text(
              'ETA',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Positioned(
            right: 15,
            top: 20,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 255, 122, 0),
                side: BorderSide(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: 1.5,
                ),
              ),
              child: Text(
                'VIEW',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}