import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';

class CustomButtonHome extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color backgroundColor;

  CustomButtonHome({
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
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 225, 234, 234),
              ),
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.home_outlined,
                color: AppColors.textColor,
                size: 15,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: AppColors.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
