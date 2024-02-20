import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifi extends StatefulWidget {
  const Notifi({super.key});

  @override
  State<Notifi> createState() => _NotifiState();
}

class _NotifiState extends State<Notifi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '5 mins ago',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromARGB(139, 41, 87, 120),
                ),
              ),
              Spacer(),
              Text(
                'Pick-up Driver is on your way',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromARGB(255, 41, 87, 120),
                ),
              ),
            ],
          ),
          Divider(
            color: const Color.fromARGB(255, 203, 224, 227),
            thickness: 1.0,
            height: 16.0,
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
