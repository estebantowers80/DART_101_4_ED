import 'package:bloc/bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(MapInitial());

  GoogleMapController? _mapController;
  //procedimiento para inicializar
  void onMapInitialize(GoogleMapController controller) {
    _mapController = controller;
  }

  void moveCamera(LatLng lastKnownLocation) {
    final cameraUpdate = CameraUpdate.newLatLng(lastKnownLocation);
    _mapController?.moveCamera(cameraUpdate);
  }
}
