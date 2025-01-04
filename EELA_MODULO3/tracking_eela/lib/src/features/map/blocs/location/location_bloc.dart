import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:meta/meta.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationState()) {
    on<InitialLocationEvent>(_onInitialLocationEvent);
    on<StartTrackingUserEvent>(_onStartTrackingUserEvent);
  }

  /// localización inicial
  Future<void> _onInitialLocationEvent(
    InitialLocationEvent event,
    Emitter<LocationState> emit,
  ) async {
    /// logica para obtener la ubitación incial del usuario
    ///
    final position = await Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        //precisión tome la mejor
        accuracy: LocationAccuracy.best,
        //filtro de distancia distancia minima que el dispositivo tiene que moverse para obtener
        // una actualización del dispositivo, por defecto 0 dará inmediatamente
        distanceFilter: 0,
      ),
    );
    //posición tiene varios parametros, altura, latitud longitd, velocidad a la que se mueve el dispositivo
    // print("imprimimos latitud y longitud ");
    // print(position.latitude);
    // print(position.longitude);
    final lastKnownLocation = LatLng(position.latitude, position.longitude);
    return emit(state.copyWith(lastKnownLocation: lastKnownLocation));
  }

  FutureOr<void> _onStartTrackingUserEvent(
    StartTrackingUserEvent event,
    Emitter<LocationState> emit,
  ) {
    return emit.forEach(
      Geolocator.getPositionStream(),
      onData: (position) {
        print("ACTUALIZA POSICION:");
        print(position.latitude);
        print(position.longitude);
        final lastKnownLocation = LatLng(position.latitude, position.longitude);
        return state.copyWith(lastKnownLocation: lastKnownLocation);

      },

    );

  }
}
