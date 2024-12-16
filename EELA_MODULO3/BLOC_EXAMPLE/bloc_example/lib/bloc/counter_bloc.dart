import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    //evento de agregar  va a llegar tomar el estado actual y suma 1 
    //forma correcta de declarar el evento 
    on<AddEvent>(_onAddEvent);

    //forma incorrecta es mejor hacer como esta arriba creando un metodo _onRemoveEvent y pasar la logica alla 
    on<RemoveEvent>(
      (event, emit) {
        final newValue = state - 1;
        emit(newValue);
      },
    );
  }

  FutureOr<void> _onAddEvent(AddEvent event, Emitter<int> emit) {
    (event, emit) {
        final newValue = state + 1;
        emit(newValue);
      };
  }
}


