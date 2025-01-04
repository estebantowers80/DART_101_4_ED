import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart' as ph;

part 'gps_event.dart';
part 'gps_state.dart';

//este bloc devuelve un estado bool
class GpsBloc extends Bloc<GpsEvent, GpsState> {
  GpsBloc()
      : super(
          // estado o clase inicial
          GpsState(
            isGpsEnable: false,
            isLocationPermissionGranted: false,
          ),
        ) {
    // StreamSubscription<ServiceStatus>? serviceStatusStream;

    on<GpsInitialStatusEvent>(_onGpsInitialStatusEvent);

    on<ChangeGpsStatus>(_onChangeGpsStatusEvent);

    on<AskLocationPermissionsEvent>(_onAskLocationPermissionsEvent);

    // //tenemos que cerrar todos los streams
    // @override
    // Future<void> close(){
    //   serviceStatusStream?.dispose();
    //   return super.close();
    // }
  }

  /// *********************************
  /// Future para establecer el estatus incial
  FutureOr<void> _onGpsInitialStatusEvent(
    GpsInitialStatusEvent event,
    Emitter<GpsState> emit,
  ) async {
    // con geolocator podemos verificar si el servicio esta activado
    //devuelve un future por que no se sabe el tiempo que se demora
    //primera forma documentamso
    final isGpsEnable = await Geolocator.isLocationServiceEnabled();
    //verificamos si ya dimos permisos
    final isLocationPermissionGranted = await ph.Permission.location.isGranted;
    // una vez se ejeucta llo anterior emitimos el estado
    // emit(GpsState(
    //   isGpsEnable: isGpsEnable,
    //   isLocationPermissionGranted: true,
    // ));
    emit(state.copyWith(
      isGpsEnable1: isGpsEnable,
      isLocationPermissionGranted1: isLocationPermissionGranted,
    ));

    //otra forma
    //Geolocator.isLocationServiceEnabled().then((isGpsEnable) {
    //  emit(isGpsEnable);
    //lo anterior hace que mientras reponde sigue ejecutandose el codigo que
    //este mas abajo de esta linea
    //});
  }

  /// *********************************
  /// Future para el evento cuando cambo el status
  ///
  FutureOr<void> _onChangeGpsStatusEvent(
    ChangeGpsStatus event,
    Emitter<GpsState> emit,
  ) {
    //esto no se usa
    // StreamSubscription<ServiceStatus> serviceStatusStream =
    //     Geolocator.getServiceStatusStream().listen((ServiceStatus status) {
    //   final isGpsEnable = status == ServiceStatus.enabled;
    //   return emit(isGpsEnable);
    //   // print("imprimios el estatus  $status");
    // });

    // se dede hacer asi

    return emit.forEach(
      Geolocator.getServiceStatusStream(),
      onData: (status) {
        final isGpsEnabled = status == ServiceStatus.enabled;
        //final isLocationGrated = state.isLocationPermissionGranted;
        // return GpsState(
        //   isGpsEnable: isGpsEnable,
        //   isLocationPermissionGranted: isLocationGrated,
        // );
        // reemplazamos por el copyWith
        return state.copyWith(
          isGpsEnable1: isGpsEnabled,
        );
      },
    );
  }

  /// *********************************
  /// para solicitar permisos
  FutureOr<void> _onAskLocationPermissionsEvent(
    AskLocationPermissionsEvent event,
    Emitter<GpsState> emit,
  ) async {
    // esta nos presenta el mensaje para solicitar permisos
    final status = await ph.Permission.location.request();
    if (status.isDenied || status.isPermanentlyDenied) {
      // abrir las configuraciones de la app para que el usuario manualmene
      // nos de permisos
      ph.openAppSettings();
      return;
    }
    // recuperamos el estado del gps actual
    //final isGpsEnable = state.isGpsEnable;
    // el otro estado va en true por que si esta negado va a ir a lapantalla de setttings

    emit(
        // GpsState(
        //   isGpsEnable: isGpsEnable,
        //   isLocationPermissionGranted: true,
        // ),
        state.copyWith(isLocationPermissionGranted1: true));
  }
}
