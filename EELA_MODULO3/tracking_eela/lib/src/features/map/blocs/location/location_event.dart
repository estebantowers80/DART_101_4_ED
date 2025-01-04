part of 'location_bloc.dart';

// @immutable
sealed class LocationEvent {}

class InitialLocationEvent extends LocationEvent {}

class StartTrackingUserEvent extends LocationEvent{}
