part of 'gps_bloc.dart';

//@immutable
class GpsState {
  final bool isGpsEnable;
  final bool isLocationPermissionGranted;

  GpsState({
    required this.isGpsEnable,
    required this.isLocationPermissionGranted,
  });
}
