import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/controllers/LoginController.dart';
import 'package:trashtocash/widgets/custom_button2.dart';
import 'package:http/http.dart' as http;

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final codeController = Get.put(LoginController());
  int _remainingSeconds = 60;
  Timer? _countdownTimer;
  final TextEditingController phoneController = TextEditingController();
  String? generatedOTP;

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

  Future<void> _checkNumber() async {
    String telephone = phoneController.text;

    final apiUrl = 'http://192.168.8.142:8080/chakra_sutra/trash_2_cash/number';
    final Map<String, dynamic> number = {
      'telephone': telephone,
    };
    String jsonBody = json.encode(number);

    try {
      final http.Response response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonBody,
      );

      if (response.statusCode == 200) {
        print('number sent successfully');
        generatedOTP = response.body; // Assign value to generatedOTP
        print(generatedOTP);

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Here is your OTP'),
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

        setState(() {}); // Trigger a rebuild to update the UI with the OTP
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Incorrect Number'),
              content: Text('Please enter the number used during the signup.'),
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

        print('Error during API request. Status code');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  final TextEditingController pinController = TextEditingController();

  Future<void> _verifyOTP() async {
    String otp = pinController.text;

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
          Navigator.pushReplacementNamed(context, '/otpscreen');
        } else if (response.body == 'otp verification done') {
          Navigator.pushReplacementNamed(context, '/homepage');
        }

        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('VERIFICATION'),
              content: Text(message),
              actions: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Close the dialog
                    Navigator.of(context).pop();
                    Navigator.pushReplacementNamed(context, '/homepage');
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        Navigator.pushReplacementNamed(context, '/otpscreen');
        print('Error during API request. Status code');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // var pinController = TextEditingController(text: generatedOTP);
    var pinput = Pinput(
      controller: pinController,
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
    );

    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/signup');
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
                'Sign Up',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
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
                        text: 'We have sent you an ',
                      ),
                      TextSpan(
                        text: 'One Time Password(OTP)',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 49, 54, 70),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ' to this mobile number.',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 41,
                child: Row(
                  children: [
                    Expanded(
                      child: GetBuilder<LoginController>(
                        builder: (controller) {
                          return TextField(
                            controller: phoneController,
                            keyboardType: TextInputType.number,
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
                              prefixIcon: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 5.0),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 5),
                                decoration: const BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Text(
                                  '+94', // Country code for Sri Lanka
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ),
                              suffixIcon: phoneController.text.length == 9
                                  ? SizedBox(
                                      width: 50,
                                      child: Image.asset(
                                        'assets/images/ph.png',
                                        scale: 1.0,
                                      ),
                                    )
                                  : SizedBox(),
                              labelText: "Phone Number",
                              labelStyle: GoogleFonts.montserrat(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 159, 159, 159),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton(
                      onPressed: () {
                        if (phoneController.text == '') {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('WARNING !'),
                                content: Text(
                                    'The phone number field cannot be empty.'),
                                actions: <Widget>[
                                  GestureDetector(
                                    onTap: () {
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
                          _checkNumber();
                          startCountdown();
                        }
                      },
                      child: Text("Verify".toUpperCase()),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              pinput,
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
                  if (pinController.text == '') {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('WARNING !'),
                          content: Text('OTP field cannot be empty !'),
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
                    _verifyOTP();
                  }
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
