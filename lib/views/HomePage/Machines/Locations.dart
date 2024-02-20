import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/views/HomePage/Machines/RVM/RVM.dart';
import 'package:trashtocash/views/HomePage/Machines/RVM/RVMB.dart';

class Machines extends StatefulWidget {
  const Machines({super.key});

  @override
  State<Machines> createState() => _MachinesState();
}

class _MachinesState extends State<Machines> {
  TextEditingController _searchController = TextEditingController();
  String _searchText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nearest Drop-offs',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 15, 108, 133),
                ),
                controller: _searchController,
                decoration: InputDecoration(
                  // labelText: 'Search',
                  hintText: 'Your Location',
                  prefixIcon: Icon(
                    Icons.search,
                    color: const Color.fromARGB(255, 15, 108, 133),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 15, 108, 133),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 15, 108, 133),
                      width: 1.0,
                    ),
                  ),
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 15, 108, 133),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Nearest Reverse Vending Machine',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const RVM(),
              const RVMB(),
              Text(
                'Nearest Collection Point',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const RVM(),
              const RVMB(),
              const RVM(),
              const RVMB(),
            ],
          ),
        ),
      ),
    );
  }
}
