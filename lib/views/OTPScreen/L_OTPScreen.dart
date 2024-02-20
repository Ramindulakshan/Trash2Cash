import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/controllers/LoginController.dart';
import 'package:http/http.dart' as http;

class LOTPScreen extends StatefulWidget {
  const LOTPScreen({super.key});

  @override
  State<LOTPScreen> createState() => _LOTPScreenState();
}

class _LOTPScreenState extends State<LOTPScreen> {
  // static String test = 'okay fine';

  final TextEditingController otpController = TextEditingController();

  Future<void> _sendOTP() async {
    String otp = otpController.text;

    print('OneTimePassword: $otp');

    final apiUrl = 'http://192.168.8.142:8080/chakra_sutra/trash_2_cash/verify';

    final Map<String, dynamic> otpdata = {
      'otp': otp,
    };
    String jsonBody = json.encode(otpdata);

    try {
      final http.Response response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonBody,
      );

      if (response.statusCode == 200) {
        print('otp sent successfully');
        // print(response.body);

        String message = response.body;
        print(message);

        if (response.body == 'invalid otp entered') {
          Navigator.pushReplacementNamed(context, '/lotpscreen');
        } else if (response.body == 'otp verification done') {
          Navigator.pushReplacementNamed(context, '/homepage');
        }

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('VERIFICATION'),
              content: Text(response.body),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    // Close the dialog
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        print('Error during API request. Status code');
        // showDialog(
        //   context: context,
        //   builder: (BuildContext context) {
        //     return AlertDialog(
        //       title: Text('Invalid user'),
        //       content: Text('Please check the otp again'),
        //       actions: <Widget>[
        //         TextButton(
        //           onPressed: () {
        //             // Close the dialog
        //             Navigator.of(context).pop();
        //           },
        //           child: Text('OK'),
        //         ),
        //       ],
        //     );
        //   },
        // );
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  final codeController = Get.put(LoginController());
  int _remainingSeconds = 60;
  Timer? _countdownTimer;
  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  void startCountdown() {
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _countdownTimer?.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              // GestureDetector(
              //   onTap: () {
              //     // Navigator.pushReplacementNamed(context, '/signup');
              //   },
              //   child: Icon(
              //     Icons.arrow_back,
              //     color: AppColors.iconColor,
              //   ),
              // ),
              Spacer(),
              SizedBox(
                width: 150,
                child: Image.asset('assets/images/ttcLogoTransparent.png'),
              ),
            ],
          ),
          surfaceTintColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Login',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'OTP Verification',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: const Color.fromARGB(255, 24, 32, 53),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: const Color.fromARGB(255, 96, 98, 104),
                    ),
                    children: [
                      TextSpan(
                        text: 'Enter the code from the sms we sent to ',
                      ),
                      TextSpan(
                        text: 'your mobile number',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 49, 54, 70),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Pinput(
                controller: otpController,
                showCursor: true,
                defaultPinTheme: PinTheme(
                  width: 63,
                  height: 63,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    border: Border.all(
                      color: const Color.fromARGB(255, 35, 60, 135),
                      width: 2.0,
                    ),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 60, 135),
                  ),
                ),
                length: 4,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Spacer(),
                  const Text(
                    "I didn’t receive the code,",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 255, 122, 0),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_remainingSeconds <= 0) {
                        // Resend OTP logic here
                        // Reset the countdown timer
                        _remainingSeconds = 60;
                        startCountdown();
                      }
                    },
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: _remainingSeconds > 0
                            ? const Color.fromARGB(255, 150, 150, 150)
                            : const Color.fromARGB(255, 35, 60, 135),
                      ),
                    ),
                  ),
                  Text(
                    _remainingSeconds > 0 ? " in $_remainingSeconds sec" : "",
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 32, 80, 114),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {
                  _sendOTP();
                  Navigator.pushReplacementNamed(context, '/homepage');
                },
                child: CustomButton(
                    text: "CONTINUE",
                    height: 55,
                    width: screenWidth - 60,
                    backgroundColor: AppColors.accentColor),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 70,
              ),
              Image.asset(
                'assets/images/ttcLogoTransparent.png',
                width: 200,
                height: 50,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'By Chakra Suthra',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  color: const Color.fromARGB(255, 15, 108, 133),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
