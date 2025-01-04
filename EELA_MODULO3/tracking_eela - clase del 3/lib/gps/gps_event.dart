part of 'gps_bloc.dart';

//@immutable
//es una clase base   y es sellada solo lo vamos a implementar a nivel del archivo
//solo se van a poder implementar dentro de esta clase todos los eventos
//clase sellada sealed
sealed class GpsEvent {}

//vamos a crear un evento par aobtener el estado inicial del gps
//es extendida de la clase vase GpsEvent
class GpsInitialStatusEvent extends GpsEvent {}

// este evento toma los cambios en el gps
class ChangeGpsStatus extends GpsEvent {}

// CREAMOS EVENTO PARA SOLICITAR PERMISOS al usuario
class AskLocationPermissionsEvent extends GpsEvent {}
