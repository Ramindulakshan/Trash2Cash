import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/views/History/CreditHistory/CreditHistory.dart';
import 'package:trashtocash/views/History/RedeemHistory/RedeemHistory.dart';

class HistoryCR extends StatefulWidget {
  const HistoryCR({super.key});

  @override
  State<HistoryCR> createState() => _HistoryCRState();
}

class _HistoryCRState extends State<HistoryCR> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
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
                'History',
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
            // isScrollable: true,
            // indicatorWeight: 3,
            // indicator: BoxDecoration(
            //     borderRadius: BorderRadius.circular(50), // Creates border
            //     color: Colors.greenAccent),
            tabs: [
              Tab(
                child: Text(
                  'Credits',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Redeems',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: AppColors.textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  CreditsHistory(),
                  CreditsHistory(),
                  CreditsHistory(),
                  CreditsHistory(),
                ]),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  RedeemHistory(),
                  RedeemHistory(),
                  RedeemHistory(),
                  RedeemHistory(),
                  RedeemHistory(),
                  RedeemHistory(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
