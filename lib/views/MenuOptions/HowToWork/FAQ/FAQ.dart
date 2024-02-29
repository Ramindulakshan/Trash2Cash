import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                'Latest updated: Jan 11, 2024',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 23,
                  color: const Color.fromARGB(255, 15, 108, 133),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(40, 15, 108, 133),
                ),
                child: ExpansionTile(
                  initiallyExpanded: false,
                  maintainState: false,
                  collapsedShape: null,
                  iconColor: Color.fromARGB(255, 15, 108, 133),
                  collapsedIconColor: const Color.fromARGB(255, 15, 108, 133),
                  backgroundColor: Color.fromARGB(40, 255, 255, 255),
                  collapsedBackgroundColor: Color.fromARGB(40, 255, 255, 255),
                  title: Text(
                    "Lorem ipsum dolor sit amet?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 15, 108, 133),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 19.0,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim. Learn more ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(40, 15, 108, 133),
                ),
                child: ExpansionTile(
                  initiallyExpanded: false,
                  maintainState: false,
                  collapsedShape: null,
                  iconColor: Color.fromARGB(255, 15, 108, 133),
                  collapsedIconColor: const Color.fromARGB(255, 15, 108, 133),
                  backgroundColor: Color.fromARGB(40, 255, 255, 255),
                  collapsedBackgroundColor: Color.fromARGB(40, 255, 255, 255),
                  title: Text(
                    "Lorem ipsum dolor sit amet?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 15, 108, 133),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 19.0,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim. Learn more ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(40, 15, 108, 133),
                ),
                child: ExpansionTile(
                  initiallyExpanded: false,
                  maintainState: false,
                  collapsedShape: null,
                  iconColor: Color.fromARGB(255, 15, 108, 133),
                  collapsedIconColor: const Color.fromARGB(255, 15, 108, 133),
                  backgroundColor: Color.fromARGB(40, 255, 255, 255),
                  collapsedBackgroundColor: Color.fromARGB(40, 255, 255, 255),
                  title: Text(
                    "Lorem ipsum dolor sit amet?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 15, 108, 133),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 19.0,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim. Learn more ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(40, 15, 108, 133),
                ),
                child: ExpansionTile(
                  initiallyExpanded: false,
                  maintainState: false,
                  collapsedShape: null,
                  iconColor: Color.fromARGB(255, 15, 108, 133),
                  collapsedIconColor: const Color.fromARGB(255, 15, 108, 133),
                  backgroundColor: Color.fromARGB(40, 255, 255, 255),
                  collapsedBackgroundColor: Color.fromARGB(40, 255, 255, 255),
                  title: Text(
                    "Lorem ipsum dolor sit amet?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 15, 108, 133),
                    ),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 19.0,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras a tincidunt massa. Cras pulvinar porta ligula a hendrerit. Vestibulum sit amet lorem dignissim. Learn more ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 15, 108, 133),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
