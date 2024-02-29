import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';

class DeleteProfile2 extends StatefulWidget {
  const DeleteProfile2({super.key});

  @override
  State<DeleteProfile2> createState() => _DeleteProfile2State();
}

class _DeleteProfile2State extends State<DeleteProfile2> {
  void _sendDelete() {
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
              height: 170,
              width: 250,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'your account has been delete'.toUpperCase(),
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
                Navigator.pushReplacementNamed(context, '/deleteProfile');
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
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Text(
                          'Delete Profile',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'We are sorry to see you go! Please Note All your data, including usernames, passwords, and activity history, will be permanently deleted within 24 hours. This action is irreversible. You can create a new account and sign up again at any time, but keep in mind that previous data cannot be recovered.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 25),
                  //   decoration: BoxDecoration(
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.grey.withOpacity(0.5),
                  //         spreadRadius: 0,
                  //         blurRadius: 3,
                  //         offset: Offset(0, 1),
                  //       ),
                  //     ],
                  //   ),
                  //   child: const Divider(
                  //     height: 2,
                  //     thickness: 1,
                  //     color: Color.fromARGB(69, 15, 108, 133),
                  //   ),
                  // ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _sendDelete();
                        // Navigator.pushReplacementNamed(context, '/historyCR');
                      },
                      child: CustomButton(
                        text: "confirm deletion".toUpperCase(),
                        height: 56,
                        width: 210,
                        backgroundColor: const Color.fromARGB(255, 230, 69, 69),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Thank you for being part of the Trash2Cash community! We\'re sorry to see you go.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color.fromARGB(117, 41, 87, 120),
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
