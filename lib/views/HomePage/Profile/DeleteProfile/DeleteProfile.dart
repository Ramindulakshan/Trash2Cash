import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_textFiled2.dart';

class DeleteProfile extends StatefulWidget {
  const DeleteProfile({super.key});

  @override
  State<DeleteProfile> createState() => _DeleteProfileState();
}

class _DeleteProfileState extends State<DeleteProfile> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();

    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/deactivateProfile');
                // Set index to 4 when navigating back to the homepage
                // Navigator.popUntil(context, ModalRoute.withName('/profile'));
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
                      'Delete Profile',
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
                      "All your data, including usernames, passwords, and activity history, will be permanently deleted within 24 hours. This action is irreversible. You can create a new account and sign up again at any time, but keep in mind that previous data cannot be recovered.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 225, 15, 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: CustomTextField2(
                        controller: nameController,
                        labelText: "Reason For Deleating The Profile ?"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/deleteProfile2');
                      },
                      child: CustomButton(
                        text: "Continue".toUpperCase(),
                        height: 56,
                        width: 150,
                        backgroundColor: AppColors.accentColor,
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
