import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField2 extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;

  const CustomTextField2({
    super.key,
    required this.controller,
    required this.labelText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      // height: 41,
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        maxLines: 8,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9.0),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 15, 108, 133),
              width: 0.5,
            ),
          ),
          labelText: labelText,
          alignLabelWithHint: true,
          labelStyle: GoogleFonts.montserrat(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 159, 159, 159),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        ),
      ),
    );
  }
}
