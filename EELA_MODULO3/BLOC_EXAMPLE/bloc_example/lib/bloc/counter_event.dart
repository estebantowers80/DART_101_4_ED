part of 'counter_bloc.dart';

// ignore: file_names

/*Eventos del bloc*/

abstract class CounterEvent {}

class AddEvent extends CounterEvent {}

class RemoveEvent extends CounterEvent {}