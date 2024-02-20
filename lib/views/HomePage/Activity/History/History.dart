import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
            left: 0,
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
            left: 30,
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
            left: 30,
            top: 33,
            child: Text(
              '100 Points',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 17,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 55,
            child: Text(
              'Completed',
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
                backgroundColor: const Color.fromARGB(255, 203, 224, 227),
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
