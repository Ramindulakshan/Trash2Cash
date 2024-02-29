import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_button3.dart';
import 'package:trashtocash/widgets/custom_textFiled2.dart';

class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  void _sendSupport() {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          content: SingleChildScrollView(
            child: SizedBox(
              height: 200,
              width: 250,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'your question will be answered within next 48 hours.'
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: CustomButton(
                      text: "OK",
                      height: 40,
                      width: 80,
                      backgroundColor: AppColors.accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  int _value = 0;
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/homepage');
              },
              child: Icon(
                Icons.arrow_back,
                color: AppColors.iconColor,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Support',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColors.textColor,
              ),
            ),
            Spacer(),
            SizedBox(
              width: screenWidth * 0.3,
              child: Image.asset('assets/images/ttcLogoTransparent.png'),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                'Required Support Category :',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color.fromARGB(255, 159, 159, 159),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _value = 1;
                  });
                  // Navigator.pushReplacementNamed(context, '/signup');
                },
                child: Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (Value) {
                        setState(() {
                          _value = Value!;
                        });
                      },
                    ),
                    CustomButton3(
                      text: "Weight Calculated is Wrong",
                      height: 56,
                      width: screenWidth / 2 * 1.5,
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _value = 2;
                  });
                  // Navigator.pushReplacementNamed(context, '/signup');
                },
                child: Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (Value) {
                        setState(() {
                          _value = Value!;
                        });
                      },
                    ),
                    CustomButton3(
                      text: "PickUp Driver Issue",
                      height: 56,
                      width: screenWidth / 2 * 1.5,
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _value = 3;
                  });
                  // Navigator.pushReplacementNamed(context, '/signup');
                },
                child: Row(
                  children: [
                    Radio(
                      value: 3,
                      groupValue: _value,
                      onChanged: (Value) {
                        setState(() {
                          _value = Value!;
                        });
                      },
                    ),
                    CustomButton3(
                      text: "Credit Confirmation Did Not Arrive",
                      height: 56,
                      width: screenWidth / 2 * 1.5,
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _value = 4;
                  });
                  // Navigator.pushReplacementNamed(context, '/signup');
                },
                child: Row(
                  children: [
                    Radio(
                      value: 4,
                      groupValue: _value,
                      onChanged: (Value) {
                        setState(() {
                          _value = Value!;
                        });
                      },
                    ),
                    CustomButton3(
                      text: "Other",
                      height: 56,
                      width: screenWidth / 2 * 1.5,
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Please provide a description of the issue :',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: const Color.fromARGB(255, 159, 159, 159),
                ),
              ),
              SizedBox(height: 10),
              CustomTextField2(
                  controller: nameController, labelText: "Type here......"),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  _sendSupport();
                  // Navigator.pushReplacementNamed(context, '/signup');
                },
                child: CustomButton(
                  text: "SEND",
                  height: 56,
                  width: screenWidth,
                  backgroundColor: AppColors.accentColor,
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
