import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tracking_eela/src/features/gps/bloc/gps_bloc.dart';
import 'package:tracking_eela/src/features/gps/widgets/enabled_gps.dart';
import 'package:tracking_eela/src/features/gps/widgets/permissions_gps.dart';

class GpsPage extends StatelessWidget {
  const GpsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //agregamos el evento de inicio para que se ejecute
    //context.read<GpsBloc>().add(GpsInitialStatusEvent());
    // si tengo que agregar dos eventos ..add(evento1())..add(evento2());  es una anotación en cascada
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

