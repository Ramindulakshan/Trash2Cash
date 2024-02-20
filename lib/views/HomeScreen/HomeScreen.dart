import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myitems = [
    Image.asset('assets/images/home1.png'),
    Image.asset('assets/images/home2.png'),
    Image.asset('assets/images/home3.png'),
  ];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight * 8 / 10,
            width: screenWidth,
            child: Column(
              children: [
                SizedBox(
                  height: AppBar().preferredSize.height,
                ),
                Container(
                  width: screenWidth,
                  margin: EdgeInsets.only(right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Welcome To',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 21,
                          color: AppColors.textColor,
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child:
                            Image.asset('assets/images/ttcLogoTransparent.png'),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          height: 500,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          autoPlayInterval: const Duration(seconds: 2),
                          enlargeCenterPage: true,
                          aspectRatio: 2.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              myCurrentIndex = index;
                            });
                          },
                        ),
                        items: myitems,
                      ),
                      AnimatedSmoothIndicator(
                        activeIndex: myCurrentIndex,
                        count: myitems.length,
                        effect: WormEffect(
                            dotHeight: 9,
                            dotWidth: 9,
                            spacing: 9,
                            dotColor: Color.fromARGB(61, 32, 80, 114),
                            activeDotColor: Color.fromARGB(255, 32, 80, 114),
                            paintStyle: PaintingStyle.fill),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(35),
            //     bottomRight: Radius.circular(60),
            //   ),
            //   image: DecorationImage(
            //     scale: 0.9,
            //     fit: BoxFit.fitWidth,
            //     image: AssetImage('assets/images/home1.png'),
            //   ),
            // ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: CustomButton(
                      text: "Get Started",
                      height: 56,
                      width: 310,
                      backgroundColor: AppColors.accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Text(
                        'Already have an account?',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: AppColors.accentColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/loginScreen');
                        },
                        child: Text(
                          ' Log in',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: AppColors.accentColor,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
