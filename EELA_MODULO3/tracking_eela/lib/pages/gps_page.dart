import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tracking_eela/bloc/gps_bloc.dart';
import 'package:tracking_eela/pages/map_page.dart';
import 'package:tracking_eela/widgets/enabled_gps.dart';
import 'package:tracking_eela/widgets/permissions_gps.dart';

class GpsPage extends StatelessWidget {
  const GpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //agregamos el evento de inicio para que se ejecute
    //context.read<GpsBloc>().add(GpsInitialStatusEvent());
    // si tengo que agregar dos eventos ..add(evento1())..add(evento2());  es una anotación en cascada
    return BlocBuilder<GpsBloc, GpsState>(
      builder: (context, state) {
        //validamos si ya tenemos permisos de localización
        // vamos a la pagina del mapa
        if (state.isLocationPermissionGranted) {
          return const MapPage();
        }
        return Scaffold(
          body: BlocBuilder<GpsBloc, GpsState>(
            builder: (context, state) {
              if (state.isGpsEnable) {
                return const PermissionsGps();
              }
              return const EnabledGps();
            },
          ),
          //body: PermissionsGps(),
        );
      },
    );
  }
}


  // @override
  // Widget build(BuildContext context) {
  //   //agregamos el evento de inicio para que se ejecute
  //   context.read<GpsBloc>().add(GpsInitialStatusEvent());
  //   // si tengo que agregar dos eventos ..add(evento1())..add(evento2());  es una anotación en cascada
  //   return Scaffold(
  //     body: BlocBuilder<GpsBloc, GpsState>(
  //       builder: (context, state) {
  //         if (state.isGpsEnable) {
  //           return const PermissionsGps();
  //         }
  //         return const EnabledGps();
  //       },
  //     ),
  //     //body: PermissionsGps(),
  //   );
  // }

