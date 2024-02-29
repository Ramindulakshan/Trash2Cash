import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                // width: screenWidth,
                height: 120,
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      left: 0,
                      top: 0,
                      child: Container(
                        height: 85,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 203, 224, 227),
                          border: Border.all(
                            color: const Color.fromARGB(255, 203, 224, 227),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 15,
                      child: Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 203, 224, 227),
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 2.0,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/man.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      top: 22,
                      child: Column(
                        children: [
                          Text(
                            'Himesh Fernando',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: Color.fromARGB(255, 15, 108, 133),
                            ),
                          ),
                          Text(
                            'Customer Status',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(255, 15, 108, 133),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 25,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/editProfile');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.iconColor,
                              width: 1.5,
                            ),
                            color: const Color.fromARGB(255, 217, 217, 217),
                          ),
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.edit,
                            color: AppColors.iconColor,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: const Color.fromARGB(255, 15, 108, 133),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: nameController,
                style:
                    TextStyle(color: const Color.fromARGB(255, 15, 108, 133)),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(69, 15, 108, 133)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(69, 15, 108, 133)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
              TextField(
                controller: emailController,
                style:
                    TextStyle(color: const Color.fromARGB(255, 15, 108, 133)),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(69, 15, 108, 133)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(69, 15, 108, 133)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
              TextField(
                controller: numberController,
                style:
                    TextStyle(color: const Color.fromARGB(255, 15, 108, 133)),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(69, 15, 108, 133)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(69, 15, 108, 133)),
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
                    'Temporary Account Deactivation',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: const Color.fromARGB(255, 15, 108, 133),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, '/deactivateProfile');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.iconColor,
                          width: 1.5,
                        ),
                        color: const Color.fromARGB(255, 217, 217, 217),
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.iconColor,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              const Divider(
                height: 2,
                thickness: 1,
                color: const Color.fromARGB(69, 15, 108, 133),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Log Out',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      color: const Color.fromARGB(255, 15, 108, 133),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.logout,
                    color: AppColors.iconColor,
                    size: 22,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              const Divider(
                height: 2,
                thickness: 1,
                color: const Color.fromARGB(69, 15, 108, 133),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
