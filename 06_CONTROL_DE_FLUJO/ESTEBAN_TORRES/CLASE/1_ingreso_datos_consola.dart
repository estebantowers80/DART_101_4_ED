
import 'dart:io';

void  main(){

  print("Ingrese un valor:");

  //el ingreso de datos y se guarda en una variable
  final datoConsola = stdin.readLineSync() ?? '';  // no olvidar lo del null safety poner con ??

  print(datoConsola);

  // como convertir un string a numero
  // int.tryParse    -> enteros
  // double.TryParse -> dobles

  final valorEntero = int.tryParse(datoConsola);
  print("valor entero:  $valorEntero");

  final valorDouble = double.tryParse(datoConsola);
  print("valor doble : $valorDouble");

}