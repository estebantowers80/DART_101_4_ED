import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tracking_eela/bloc/gps_bloc.dart';

class PermissionsGps extends StatelessWidget {
  const PermissionsGps({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/enable_gps.png',
            width: 200,
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Ubicación',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Necesitamos ingresar a tu ubicación para mostrarte tus rutas e información de tu rendimiento",
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<GpsBloc>().add(AskLocationPermissionsEvent());
            },
            child: const Text('Solicitar Permisos'),
          ),
        ],
      ),
    );
  }
}
