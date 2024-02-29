import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';

class DeactivateProfile extends StatefulWidget {
  const DeactivateProfile({super.key});

  @override
  State<DeactivateProfile> createState() => _DeactivateProfileState();
}

class _DeactivateProfileState extends State<DeactivateProfile> {
  void _sendDeactivate() {
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
              height: 180,
              width: 250,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'your account has been temporarily deactivated'
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
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
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
            Spacer(),
            SizedBox(
              width: 150,
              child: Image.asset('assets/images/ttcLogoTransparent.png'),
            ),
          ],
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: screenWidth,
          // height: screenHeight,
          child: ConstrainedBox(
            constraints: BoxConstraints(
                // minHeight: screenHeight - AppBar().preferredSize.height,
                ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Temporarily Deactivate Profile',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Please note: Temporarily deactivating your account means you will need to manually reactivate it later. Your data will remain safely stored within the app.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 225, 15, 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Reason For Deactivation :",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 15, 108, 133),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RadioListTile(
                    value: 1,
                    groupValue: _value,
                    activeColor: const Color.fromARGB(255, 15, 108, 133),
                    title: Text(
                      "Lorem ipsum dolor sit amet, consectetur",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 15, 108, 133),
                      ),
                    ),
                    onChanged: (Value) {
                      setState(() {
                        _value = Value!;
                      });
                    },
                  ),
                  RadioListTile(
                    value: 2,
                    groupValue: _value,
                    activeColor: const Color.fromARGB(255, 15, 108, 133),
                    title: Text(
                      "Lorem ipsum dolor sit amet, consectetur",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 15, 108, 133),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    value: 3,
                    groupValue: _value,
                    activeColor: const Color.fromARGB(255, 15, 108, 133),
                    title: Text(
                      "Lorem ipsum dolor sit amet, consectetur",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 15, 108, 133),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  RadioListTile(
                    value: 4,
                    groupValue: _value,
                    activeColor: const Color.fromARGB(255, 15, 108, 133),
                    title: Text(
                      "Other",
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 15, 108, 133),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _sendDeactivate();
                      },
                      child: CustomButton(
                        text: "teamporarily Deactivate".toUpperCase(),
                        height: 56,
                        width: screenWidth - 120,
                        backgroundColor: AppColors.accentColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: AppColors.accentColor,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Looking For Delete Your Account : ',
                            ),
                            TextSpan(
                              text: 'Delete Your Account',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 225, 15, 15),
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacementNamed(
                                      context, '/deleteProfile');
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
