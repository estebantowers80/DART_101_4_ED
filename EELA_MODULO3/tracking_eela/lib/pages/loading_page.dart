import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tracking_eela/bloc/gps_bloc.dart';
import 'package:tracking_eela/pages/gps_page.dart';
import 'package:tracking_eela/pages/map_page.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GpsBloc, GpsState>(
      builder: (context, state) {
        // final isAllEnabled =
        //     state.isLocationPermissionGranted && state.isGpsEnable;
        //final isAllEnabled = state.isAllEnable;
        //validamos si ya tenemos permisos de localización
        // vamos a la pagina del mapa
        if (state.isAllEnable) {
          return const MapPage();
        }
        return const GpsPage();
      },
    );
  }
}
