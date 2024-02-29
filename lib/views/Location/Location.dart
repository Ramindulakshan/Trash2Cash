import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:trashtocash/constants/Colors.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late GoogleMapController mapController;
  static const LatLng _center = LatLng(7.0, 80.0);
  Map<String, Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    addMarker("test", _center);
    addMarker("test2", const LatLng(7.123, 80.123));
    addMarker("test3", const LatLng(7.325, 80.0));
    addMarker("test4", const LatLng(7.425, 80.110));
  }

  addMarker(String id, LatLng location) async {
    var markerIcon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), 'assets/images/ElephantH.png');

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
            Spacer(),
          ],
        ),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 10.0,
        ),
        markers: _markers.values.toSet(),
      ),
    );
  }
}
