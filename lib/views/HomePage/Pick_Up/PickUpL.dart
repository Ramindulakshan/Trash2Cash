import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:trashtocash/constants/Colors.dart';
import 'package:trashtocash/widgets/custom_button.dart';
import 'package:trashtocash/widgets/custom_button_home.dart';
import 'package:trashtocash/widgets/custom_button_office.dart';
import 'package:trashtocash/widgets/custom_button_other.dart';

class PickUpL extends StatefulWidget {
  const PickUpL({super.key});

  @override
  State<PickUpL> createState() => _PickUpLState();
}

class _PickUpLState extends State<PickUpL> {
  late GoogleMapController mapController;
  static const LatLng _center = LatLng(7.0, 80.0);
  Map<String, Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    addMarker("test", _center);
    // addMarker("test2", const LatLng(7.123, 80.123));
    // addMarker("test3", const LatLng(7.325, 80.0));
    // addMarker("test4", const LatLng(7.425, 80.110));
  }

  addMarker(String id, LatLng location) async {
    // var markerIcon = await BitmapDescriptor.fromAssetImage(
    //     const ImageConfiguration(), 'assets/images/ElephantH.png');

    var marker = Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: InfoWindow(
        title: "Title of place",
        snippet: "Hiiiiiiiiiiiiii",
      ),
      // icon: markerIcon,
    );
    _markers[id] = marker;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight =
    //     MediaQuery.of(context).size.height - AppBar().preferredSize.height;

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
              'Select your Pick-up Location',
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
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            // bottom: 50,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    // height: screenHeight - AppBar().preferredSize.height,
                    height: 500,
                    child: Container(
                      child: GoogleMap(
                        onMapCreated: _onMapCreated,
                        initialCameraPosition: CameraPosition(
                          target: _center,
                          zoom: 10.0,
                        ),
                        markers: _markers.values.toSet(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 5,
            // top: 0,
            right: 5,
            bottom: 0,
            child: Column(
              children: [
                Container(
                  height: 375,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Welcome To',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 21,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Your Location',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: const Color.fromARGB(
                                        255, 157, 157, 157),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: TextField(
                                // controller: emailController,
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 52, 52, 52),
                                ),
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 157, 157, 157),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 157, 157, 157),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'My Locations',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: const Color.fromARGB(
                                        255, 157, 157, 157),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.pushReplacementNamed(context, '/signup');
                                        },
                                        child: CustomButtonHome(
                                          text: "Home",
                                          height: 40,
                                          width: screenWidth / 2 - 40,
                                          backgroundColor: const Color.fromARGB(
                                              255, 245, 245, 245),
                                        ),
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.pushReplacementNamed(context, '/signup');
                                        },
                                        child: CustomButtonOffice(
                                          text: "Office",
                                          height: 40,
                                          width: screenWidth / 2 - 40,
                                          backgroundColor: const Color.fromARGB(
                                              255, 245, 245, 245),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.pushReplacementNamed(context, '/signup');
                                        },
                                        child: CustomButtonOther(
                                          text: "Others",
                                          height: 40,
                                          width: screenWidth / 2 - 40,
                                          backgroundColor: const Color.fromARGB(
                                              255, 245, 245, 245),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/timeSlote');
                                },
                                child: CustomButton(
                                  text: "Next",
                                  height: 50,
                                  width: screenWidth,
                                  backgroundColor: AppColors.accentColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
