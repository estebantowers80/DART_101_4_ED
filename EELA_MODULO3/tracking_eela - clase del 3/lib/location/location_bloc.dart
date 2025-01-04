import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<InitialLocationEvent>(_onInitialLocationEvent);
  }

  /// localización inicial
  FutureOr<void> _onInitialLocationEvent(
    InitialLocationEvent event,
    Emitter<LocationState> emit,
  ) {
    /// logica para obtener la ubitación incial del usuario
    ///
  }
}
