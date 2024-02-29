import 'package:flutter/material.dart';

class TFAQ extends StatefulWidget {
  const TFAQ({super.key});

  @override
  State<TFAQ> createState() => _TFAQState();
}

class _TFAQState extends State<TFAQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 50,
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
      ),
    );
  }
}
