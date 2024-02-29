import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_textFiled2.dart';

class DeleteProfile1 extends StatefulWidget {
  const DeleteProfile1({super.key});

  @override
  State<DeleteProfile1> createState() => _DeleteProfile1State();
}

class _DeleteProfile1State extends State<DeleteProfile1> {
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
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt.dignissim nisi vitae, eleifend augue.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: CustomTextField2(
                        controller: nameController,
                        labelText: "Lorem ipsum dolor.. "),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/deleteProfile2');
                      },
                      child: CustomButton(
                        text: "continue".toUpperCase(),
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
