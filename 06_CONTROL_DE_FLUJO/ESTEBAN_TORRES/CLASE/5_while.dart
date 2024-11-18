import 'dart:io';

void main(){
  //while
  ///tiene una andera que interrumpe el ciclo
  ///while( conición){
  ///   operación
  ///}
  
  int i = 0;
  while (i<4) {
    print("valor es $i");
    i++;    
  }

  ///contador
  ///ingresamos un valor 
  ///el valor es -> el numero incremental 
  ///ciclo while va  terminar cuando se cumpla la condición del valor que ingresamos 
  
 print("ingrese el valor");
  final valorConsola = stdin.readLineSync();
  final numero = int.tryParse(valorConsola ?? "");
  int contador = 0;
  if (numero != null) {
    while (contador <= numero) {
      print("el valor es: $contador");
      contador++;
    }
  } else {
    print("el valor no es un numero");
  }



}