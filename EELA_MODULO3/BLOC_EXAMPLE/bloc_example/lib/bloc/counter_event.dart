// ignore: file_names
part of 'counter_bloc.dart';

abstract class CounterEvent {}

class AddEvent extends CounterEvent {}

class RemoveEvent extends CounterEvent {}
