import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/views/HomePage/Promotions/LRedeemables/LRedeemables.dart';
import 'package:trashtocash/widgets/custom_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                child: Stack(
                  children: [
                    Positioned(
                      right: 30,
                      left: 30,
                      top: 15,
                      child: Container(
                        height: 85,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(45, 15, 108, 133),
                          border: Border.all(
                            color: Color.fromARGB(45, 15, 108, 133),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 50,
                      top: 30,
                      child: Container(
                        width: 60,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Image.asset(
                          'assets/images/man.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 65,
                      top: 33,
                      child: Text(
                        'Himesh Fernando',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 65,
                      top: 55,
                      child: Text(
                        '+94 712352678',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 275,
                child: Stack(
                  children: [
                    Positioned(
                      right: 30,
                      left: 30,
                      top: 15,
                      bottom: 0,
                      child: Container(
                        height: 85,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(45, 15, 108, 133),
                          border: Border.all(
                            color: Color.fromARGB(45, 15, 108, 133),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      right: 70,
                      top: 40,
                      bottom: 30,
                      child: CircularProgressIndicator(
                        color: const Color.fromARGB(255, 15, 108, 133),
                        backgroundColor: Color.fromARGB(71, 15, 108, 133),
                        value: 0.25,
                        strokeWidth: 14,
                      ),
                    ),
                    // Positioned(
                    //   left: 90,
                    //   right: 90,
                    //   top: 60,
                    //   bottom: 50,
                    //   child: CircularProgressIndicator(
                    //     color: const Color.fromARGB(255, 255, 122, 0),
                    //     backgroundColor: Color.fromARGB(75, 255, 123, 0),
                    //     value: 0.6,
                    //     strokeWidth: 10,
                    //   ),
                    // ),
                    // Positioned(
                    //   left: 110,
                    //   right: 110,
                    //   top: 80,
                    //   bottom: 70,
                    //   child: CircularProgressIndicator(
                    //     color: const Color.fromARGB(255, 98, 187, 71),
                    //     backgroundColor: Color.fromARGB(73, 98, 187, 71),
                    //     value: 0.4,
                    //     strokeWidth: 10,
                    //   ),
                    // ),
                    Positioned(
                      left: 160,
                      top: 100,
                      child: Icon(
                        Icons.currency_exchange,
                        color: const Color.fromARGB(255, 15, 108, 133),
                        size: 30,
                      ),
                    ),
                    Positioned(
                      left: 160,
                      top: 130,
                      bottom: 0,
                      child: Column(
                        children: [
                          Text(
                            '540',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 23,
                              color: Color.fromARGB(255, 15, 108, 133),
                            ),
                          ),
                          Text(
                            'T2C Points',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(188, 15, 108, 133),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Spacer(),
                  Icon(
                    Icons.water_drop,
                    color: const Color.fromARGB(255, 98, 187, 71),
                    size: 14,
                  ),
                  Text(
                    ' T2C Home Points ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                      color: AppColors.textColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.water_drop,
                    color: const Color.fromARGB(255, 255, 122, 0),
                    size: 14,
                  ),
                  Text(
                    '  T2C Machine Points ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                      color: AppColors.textColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.water_drop,
                    color: const Color.fromARGB(255, 15, 108, 133),
                    size: 14,
                  ),
                  Text(
                    ' T2C Drop Off Points ',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 9,
                      color: AppColors.textColor,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: CustomButton(
                      text: "credit history".toUpperCase(),
                      height: 56,
                      width: 150,
                      backgroundColor: AppColors.accentColor,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: CustomButton(
                      text: "redeem history".toUpperCase(),
                      height: 56,
                      width: 150,
                      backgroundColor: AppColors.accentColor,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Offers for you',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.textColor,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/promotions');
                    },
                    child: Text(
                      'View all offers >',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.textColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    LRedeemables(),
                    LRedeemables(),
                    LRedeemables(),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              // const ARedeemables(),
              // const ARedeemables(),
              // const ARedeemables(),
              // const History(),
            ],
          ),
        ),
      ),
    );
  }
}
