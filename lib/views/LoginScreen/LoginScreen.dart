import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/controllers/LoginController.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_textFiled.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final codeController = Get.put(LoginController());

  Future<void> _getOTP() async {
    String telephone = phoneController.text;

    print('Telephone: $telephone');

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
        // print(response.body);
        String generated_otp = response.body;

        print(generated_otp);
        Navigator.pushReplacementNamed(context, '/lotpscreen');

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
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Invalid Number'),
              content: Text(
                  'The number you entered is incorrect.Please check again'),
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
        Navigator.pushReplacementNamed(context, '/login');
        print('Error during API request. Status code');
        // print('Response body: ${response.body}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/homeScreen');
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 35),
        width: screenWidth,
        height: screenHeight,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minHeight: screenHeight - AppBar().preferredSize.height - 30),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Login',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Enter your login details to access your account',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: AppColors.textGaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    'assets/images/login.png',
                    width: 400,
                    height: 400,
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 41,
                    child: GetBuilder<LoginController>(builder: (controller) {
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
                    }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (phoneController.text == '') {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('WARNING'),
                              content: Text(
                                  'The user authentification number cannot be empty.'),
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
                        Navigator.pushReplacementNamed(context, '/login');
                      } else {
                        _getOTP();
                      }
                    },
                    child: CustomButton(
                        text: "GET OTP",
                        height: 41,
                        width: screenWidth,
                        backgroundColor: AppColors.accentColor),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.textGaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/signup');
                        },
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: AppColors.textColor,
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Expanded(
                  //   child: SizedBox(
                  //     height: 5,
                  //   ),
                  // ),

                  Platform.isIOS
                      ? SizedBox(
                          height: 30,
                        )
                      : SizedBox(
                          height: 0,
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
