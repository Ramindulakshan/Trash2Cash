import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/views/Notifications/N_Notifi.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: AppColors.iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Notifications',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColors.textColor,
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
          child: Column(children: [
            SizedBox(
              height: 10,
            ),
            Notifi(),
            Notifi(),
            Notifi(),
            Notifi(),
            Notifi(),
            Notifi(),
            Notifi(),
            Notifi(),
            Notifi(),
            Notifi(),
            Notifi(),
          ]),
        ),
      ),
    );
  }
}
