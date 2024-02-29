import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_textFiled.dart';

class EditPro extends StatefulWidget {
  const EditPro({super.key});

  @override
  State<EditPro> createState() => _EditProState();
}

class _EditProState extends State<EditPro> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  late ImagePicker _imagePicker;
  XFile? _image;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile;
    });
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
                Navigator.pushReplacementNamed(context, '/homepage');
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
          margin: EdgeInsets.symmetric(horizontal: 35),
          width: screenWidth,
          height: screenHeight,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: screenHeight - AppBar().preferredSize.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Edit Profile',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 205, 203, 203),
                      ),
                      child: Center(
                        child: _image == null
                            ? Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 30,
                              )
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.file(
                                  File(_image!.path),
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      _pickImage();
                    },
                    child: Text(
                      'Change Picture',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: const Color.fromARGB(255, 15, 108, 133),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: const Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                      controller: nameController, labelText: "ENTER NAME *"),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: const Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                      controller: emailController, labelText: "ENTER EMAIL *"),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Phone Number',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: const Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                      controller: otpController,
                      labelText: "ENTER MOBILE FOR GET OTP *"),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacementNamed(context, '/historyCR');
                    },
                    child: CustomButton(
                      text: "save details".toUpperCase(),
                      height: 56,
                      width: 150,
                      backgroundColor: AppColors.accentColor,
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
