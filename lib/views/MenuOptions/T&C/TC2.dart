import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';

class TC2 extends StatefulWidget {
  const TC2({super.key});

  @override
  State<TC2> createState() => _TC2State();
}

class _TC2State extends State<TC2> {
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
              'terms & Conditions ',
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
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim, dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt.dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt.dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt.dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt.dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt.',
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
            ],
          ),
        ),
      ),
    );
  }
}
