import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_button2.dart';

class TC extends StatefulWidget {
  const TC({super.key});

  @override
  State<TC> createState() => _TCState();
}

class _TCState extends State<TC> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

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
              SizedBox(
                width: 10,
              ),
              Text(
                'Terms and Conditions',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
          surfaceTintColor: Colors.transparent),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 18),
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 200,
                child: Image.asset('assets/images/ttcLogoTransparent.png'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: const Color.fromARGB(255, 15, 108, 133),
                ),
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
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: CustomButton(
                      text: "AGREE",
                      height: 55,
                      width: (screenWidth / 2) - 30,
                      backgroundColor: AppColors.accentColor,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: CustomButton2(
                      text: "DISAGREE",
                      height: 55,
                      width: (screenWidth / 2) - 30,
                      backgroundColor: const Color.fromARGB(255, 229, 248, 255),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
