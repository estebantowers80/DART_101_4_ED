import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  void increment() {
    //la variable estado ya existe en la clase block
    //incrementamos en 1  asinos el nuevo valor 
    final newValue = state + 1;
    emit(newValue);  //emit actualiza el nuevo estado 
  }
}
