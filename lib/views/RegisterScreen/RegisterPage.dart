// import 'dart:convert';
// import 'dart:ffi';
// import 'dart:io';

// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/get_core.dart';
// import 'package:get/get_instance/get_instance.dart';
// import 'package:get/get_state_manager/get_state_manager.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:trashtocash/constants/Colors.dart';
// import 'package:trashtocash/controllers/SignUpController.dart';
// import 'package:trashtocash/widgets/custom_button.dart';
// import 'package:trashtocash/widgets/custom_textFiled.dart';
// import 'package:http/http.dart' as http;
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/controllers/SignUpController.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_textFiled.dart';
import 'package:http/http.dart' as http;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController otpController = TextEditingController();
//   final signUpController = Get.put(SignUpController());
//   bool isChecked = false;

//   late ImagePicker _imagePicker;
//   XFile? _image;

//   @override
//   void initState() {
//     super.initState();
//     _imagePicker = ImagePicker();
//   }

//   Future<void> _pickImage() async {
//     final XFile? pickedFile =
//         await _imagePicker.pickImage(source: ImageSource.gallery);

//     setState(() {
//       _image = pickedFile;
//     });
//   }

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final signUpController = Get.put(SignUpController());
  bool isChecked = false;

  late ImagePicker _imagePicker;
  XFile? _image;

  late String _imageUrl; // Global variable to store image URL

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

  Future<void> _uploadImageToFirebase() async {
    try {
      if (_image != null) {
        final firebase_storage.Reference firebaseStorageRef =
            firebase_storage.FirebaseStorage.instance.ref().child(
                'profile_images/${DateTime.now().millisecondsSinceEpoch}.jpg');

        final firebase_storage.UploadTask uploadTask =
            firebaseStorageRef.putFile(File(_image!.path));

        final firebase_storage.TaskSnapshot downloadSnapshot = await uploadTask;

        final String downloadUrl = await downloadSnapshot.ref.getDownloadURL();

        setState(() {
          _imageUrl = downloadUrl;
        });
      }
    } catch (error) {
      print('Error uploading image to Firebase: $error');
    }
  }

  Future<void> _submitForm() async {
    // await _uploadImageToFirebase();

    String name = nameController.text;
    String email = emailController.text;
    String telephone = otpController.text;

    // print(_imageUrl);

    print('Name: $name');
    print('Email: $email');
    print('Telephone: $telephone');

    final apiUrl =
        'http://192.168.8.142:8080/chakra_sutra/trash_2_cash/save_user';

    final Map<String, dynamic> data = {
      'name': name,
      'email': email,
      'telephone': telephone,
    };
    String jsonBody = json.encode(data);

    try {
      final http.Response response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonBody,
      );

      if (response.statusCode == 200) {
        print('user details saved successfully');
      } else {
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
            ],
          ),
          surfaceTintColor: Colors.transparent),
      body: SingleChildScrollView(
        child: GetBuilder<SignUpController>(builder: (controller) {
          return Container(
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
                      'Sign Up',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
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
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_upload_outlined,
                          color: AppColors.iconColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Upload your photo',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                            color: AppColors.textGaryColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Please enter your credentials to proceed',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: AppColors.textGaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                        controller: nameController, labelText: "ENTER NAME *"),
                    CustomTextField(
                        controller: emailController,
                        labelText: "ENTER EMAIL *"),
                    CustomTextField(
                        controller: otpController,
                        labelText:
                            "Enter your mobile number to receive an OTP *"
                                .toUpperCase()),
                    CheckboxListTile(
                      title: RichText(
                        text: TextSpan(
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: AppColors.textColor,
                          ),
                          children: [
                            TextSpan(
                              text: 'I accept ',
                            ),
                            TextSpan(
                              text: 'Terms & Conditions',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacementNamed(
                                      context, '/termsConditions');
                                },
                            ),
                            TextSpan(
                              text: ' of use',
                            ),
                          ],
                        ),
                      ),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      activeColor: AppColors.accentColor,
                      checkColor: Colors.white,
                      tileColor: Colors.transparent,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    GestureDetector(
                      onTap: () {
                        if (nameController.text == '' ||
                            emailController.text == '' ||
                            otpController.text == '') {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('WARNING !'),
                                content: Text('Fields cannot be empty.'),
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
                          _submitForm();

                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('USER SAVED'),
                                content: Text(
                                    'Your details have been saved successfully.'),
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
                          Navigator.pushReplacementNamed(context, '/otpscreen');
                        }
                      },
                      child: CustomButton(
                        text: "SIGN UP",
                        height: 41,
                        width: screenWidth,
                        backgroundColor: AppColors.accentColor,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
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
                            // _submitForm();
                            Navigator.pushReplacementNamed(context, '/login');
                          },
                          child: Text(
                            'Log in',
                            style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: AppColors.textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
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
          );
        }),
      ),
    );
  }
}
