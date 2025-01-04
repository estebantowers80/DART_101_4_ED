import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        //child: Text("página de mapa..."),
        child: SafeArea(
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(
                -2.900168130900296,
                -79.00581842650668,
              ),
              zoom: 15,
            ),
            zoomControlsEnabled: false,
            zoomGesturesEnabled: true,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
        ),
      ),
    );
  }
}
