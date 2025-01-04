import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tracking_eela/src/features/map/blocs/cubit/map_cubit.dart';
import 'package:tracking_eela/src/features/map/blocs/location/location_bloc.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //child: Text("página de mapa..."),
        child: SafeArea(
          child: BlocBuilder<LocationBloc, LocationState>(
            builder: (context, state) {
              final lastKnownLocation = state.lastKnownLocation;
              if (lastKnownLocation == null) {
                return const Center(
                  child: Text('Espere por favor...'),
                );
              }
              return GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: lastKnownLocation,
                  // ya no va esto
                  // LatLng(
                  //   -2.900168130900296,
                  //   -79.00581842650668,
                  // ),
                  zoom: 15,
                ),
                zoomControlsEnabled: false,
                zoomGesturesEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                onMapCreated: (controller) {
                  context.read<MapCubit>().onMapInitialize(controller);
                },
              );
            },
          ),
        ),
      ),
      floatingActionButton: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          //boton del zomm
          FloatingActionButton.small(
            onPressed: () {},
            child: Icon(Icons.more_horiz),
          ),
          //boton ubicación actual
          FloatingActionButton.small(
            onPressed: () {
              final lastKnownLocation =
                  context.read<LocationBloc>().state.lastKnownLocation;
              if (lastKnownLocation == null) return;
              context.read<MapCubit>().moveCamera(lastKnownLocation);
            },
            child: const Icon(Icons.gps_fixed),
          ),
        ],
      ),
    );
  }
}
