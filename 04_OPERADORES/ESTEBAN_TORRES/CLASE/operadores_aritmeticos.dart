import 'dart:async';

void main(){
  final suma = 4 + 6;
  print(suma);
  // operar con variables

  final variable1 = 10;
  final variable2 = 2.2;
  final suma2 = variable1 + variable2;
  print(suma2);

  /// importante 
  /// + siver para concatenar string
  
  final string1 = "HOLA";  final string2 = "MUNDO";
  final mensaje = string1 + " " + string2;
  print(mensaje);

  // utilizar contacatenación de string con $
  final mensaje2 = "$string1 $string2";
  print(mensaje2);
  print(" EL RESULTADO DE LA SUMA ES $suma");

  print("SE PUEDE REALIZAR SUMAS ASI ${1 + 1}");
}