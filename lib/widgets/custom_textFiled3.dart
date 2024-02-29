import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import this for FilteringTextInputFormatter
import 'package:google_fonts/google_fonts.dart';

class CustomTextField3 extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isPassword;

  const CustomTextField3({
    Key? key, // Fix key declaration
    required this.controller,
    required this.labelText,
    this.isPassword = false,
  }) : super(key: key); // Fix constructor call

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 41,
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        obscureText: isPassword,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(10),
        ],
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          if (value.length < 9) {
            return 'Minimum length must be 9';
          }
          return null;
        },
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
