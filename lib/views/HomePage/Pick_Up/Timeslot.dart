import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:trashtocash/constants/Colors.dart';

class TimeSlote extends StatefulWidget {
  const TimeSlote({super.key});

  @override
  State<TimeSlote> createState() => _TimeSloteState();
}

class _TimeSloteState extends State<TimeSlote> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focuseDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
              width: 8,
            ),
            Text(
              'Select your Pick-up Time Slot',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: AppColors.textColor,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Text(
            //   'Invite ' + today.toString().split("")[0],
            // ),
            Container(
              child: TableCalendar(
                locale: "en_us",
                rowHeight: 43,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    formatButtonShowsNext: false),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: today,
                onDaySelected: _onDaySelected,
              ),
            )
          ],
        ),
      ),
    );
  }
}
