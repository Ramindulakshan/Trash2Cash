import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/views/MenuOptions/HowToWork/Redeems/Redeems.dart';
import 'package:trashtocash/views/MenuOptions/HowToWork/FAQ/FAQ.dart';
import 'package:trashtocash/views/MenuOptions/HowToWork/T2CDropOff/T2CDropOff.dart';
import 'package:trashtocash/views/MenuOptions/HowToWork/T2CHome/T2CHome.dart';
import 'package:trashtocash/views/MenuOptions/HowToWork/T2CMachine/T2CMachine.dart';

class HowToWork extends StatefulWidget {
  const HowToWork({super.key});

  @override
  State<HowToWork> createState() => _HowToWorkState();
}

class _HowToWorkState extends State<HowToWork> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                'How Trash 2 Cash Works',
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
          bottom: TabBar(
            indicatorColor: const Color.fromARGB(255, 225, 122, 0),
            isScrollable: true,
            // indicatorWeight: 3,
            // indicator: BoxDecoration(
            //     borderRadius: BorderRadius.circular(50), // Creates border
            //     color: Colors.greenAccent),
            tabs: [
              Tab(
                child: Text(
                  'T2C Home',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'T2C Machine',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'T2C Drop Off',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Redeems',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'FAQs',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            T2CHome(),
            T2CMachine(),
            T2CDropOff(),
            Redeems(),
            FAQ(),
          ],
        ),
      ),
    );
  }
}
