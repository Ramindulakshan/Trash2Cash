import 'package:flutter/material.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/views/HomePage/Home/Home.dart';
import 'package:trashtocash/views/HomePage/Machines/Locations.dart';
import 'package:trashtocash/views/HomePage/NavBar.dart';
import 'package:trashtocash/views/HomePage/Activity/PickUp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  final screens = [
    Home(),
    Machines(),
    Center(child: Text("Pick ups")),
    Activity(),
    Center(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            SizedBox(
              width: 150,
              child: Image.asset('assets/images/ttcLogoTransparent.png'),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, '/notifications');
              },
              child: Icon(
                Icons.notifications_none,
                color: AppColors.iconColor,
              ),
            ),
          ],
        ),
      ),
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          // indicatorColor: const Color.fromARGB(255, 225, 122, 0),
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 15, 108, 133),
            ),
          ),
        ),
        child: NavigationBar(
          height: 80,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          selectedIndex: index,
          // animationDuration: Duration(seconds: 1),
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                size: 35,
                color: Color.fromARGB(255, 15, 108, 133),
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.location_on_outlined,
                size: 35,
                color: Color.fromARGB(255, 15, 108, 133),
              ),
              label: "Machines",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.add_circle_sharp,
                size: 35,
                color: Color.fromARGB(255, 15, 108, 133),
              ),
              label: "Pick ups",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.menu,
                size: 35,
                color: Color.fromARGB(255, 15, 108, 133),
              ),
              label: "Activity",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person_outline_rounded,
                size: 35,
                color: Color.fromARGB(255, 15, 108, 133),
              ),
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }
}
