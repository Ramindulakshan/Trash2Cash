import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(232, 15, 108, 133),
          // color: Colors.black.withOpacity(0.1),
        ),
        child: Stack(
          children: <Widget>[
            ListView(
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    'Menu',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // Do something
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading: Icon(
                    Icons.menu_book_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    'How T2C Works?',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/howToWork');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.bookmark_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    'Support',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/support');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.people_outline_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    'Invite a Friend',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/inviteAFriend');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.edit_document,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    'Terms & Conditions',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, '/termsConditions2');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  title: Text(
                    'Settings',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    // Do something
                  },
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'By Chakra Suthra',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
