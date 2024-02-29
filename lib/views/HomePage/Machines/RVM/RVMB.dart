import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RVMB extends StatefulWidget {
  const RVMB({super.key});

  @override
  State<RVMB> createState() => _RVMBState();
}

class _RVMBState extends State<RVMB> {
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
                color: Color.fromARGB(255, 203, 224, 227),
                border: Border.all(
                  color: const Color.fromARGB(255, 203, 224, 227),
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
              'Keells Super, Colombo',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Positioned(
            left: 85,
            top: 33,
            child: Text(
              '15 Mins Away',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Positioned(
            left: 85,
            top: 55,
            child: Text(
              '15KM away',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 11,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
