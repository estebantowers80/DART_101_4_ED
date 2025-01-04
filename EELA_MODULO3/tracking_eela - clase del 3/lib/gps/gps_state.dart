part of 'gps_bloc.dart';

//@immutable
class GpsState {
  final bool isGpsEnable;
  final bool isLocationPermissionGranted;

  GpsState({
    required this.isGpsEnable,
    required this.isLocationPermissionGranted,
  });

  /// si tiene habilidatdo el gps y los permisos de localización devuelve true
  bool get isAllEnable => isGpsEnable && isLocationPermissionGranted;

  GpsState copyWith({
    bool? isGpsEnable1,
    bool? isLocationPermissionGranted1,
  }) {
    return GpsState(
      // isGpsEnable: isGpsEnable1 != null ? this.isAllEnable, esto es igual a lo siguiente
      isGpsEnable: isGpsEnable1 ?? isAllEnable,
      isLocationPermissionGranted:
          isLocationPermissionGranted1 ?? isLocationPermissionGranted,
    );
  }
}
