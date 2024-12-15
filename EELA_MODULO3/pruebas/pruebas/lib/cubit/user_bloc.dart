// user_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';

import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState(name: '', phone: '')) {
    on<UpdateName>((event, emit) {
      emit(state.copyWith(name: event.name));
    });

    on<UpdatePhone>((event, emit) {
      emit(state.copyWith(phone: event.phone));
    });
  }
}
