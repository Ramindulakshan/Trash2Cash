import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton4 extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color backgroundColor;

  CustomButton4({
    required this.text,
    required this.height,
    required this.width,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 3,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                fontSize: 13,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.copy,
              color: const Color.fromARGB(255, 255, 255, 255),
              size: 13,
            ),
          ],
        ),
      ),
    );
  }
}
