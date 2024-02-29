import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_button4.dart';

class InviteAFriend extends StatefulWidget {
  const InviteAFriend({super.key});

  @override
  State<InviteAFriend> createState() => _InviteAFriendState();
}

class _InviteAFriendState extends State<InviteAFriend> {
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
              'Invite a Friend',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                'Invite Friends to',
                textAlign: TextAlign.justify,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: screenWidth * 0.5,
                child: Image.asset('assets/images/ttcLogoTransparent.png'),
              ),
              SizedBox(height: 20),
              Text(
                'and earn Up To 100 T2C Credits ',
                textAlign: TextAlign.justify,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                width: screenWidth,
                child: Image.asset('assets/images/InviteAFraiend.png'),
              ),
              SizedBox(height: 50),
              Text(
                'Your Referral Code :',
                textAlign: TextAlign.justify,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacementNamed(context, '/signup');
                },
                child: CustomButton4(
                  text: "00023456",
                  height: 40,
                  width: 120,
                  backgroundColor: const Color.fromARGB(255, 242, 87, 20),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacementNamed(context, '/signup');
                },
                child: CustomButton(
                  text: "Share via a link",
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
