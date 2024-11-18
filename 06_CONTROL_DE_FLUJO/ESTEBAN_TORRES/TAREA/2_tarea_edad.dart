import "dart:io";

void main(){
  print("Ingrese la edad como entero:");

  //el ingreso de datos y se guarda en una variable
  final datoEdad = stdin.readLineSync() ?? '0';  // no olvidar lo del null safety poner con ??

  final edad = int.tryParse(datoEdad) ?? -1;

  if ( edad >= 0 && edad <= 1){
    print("Es un bebe");
  } else if ( edad >1 && edad<=12){
    print("Es un niño");
  }else if ( edad >12 && edad<=28){
    print("Es un adolecente");
  }else if ( edad >28 && edad<=63){
    print("Es un adulto");
  }else if ( edad >63){
    print("Es un adulto mayor");
  } else {
    print("ingreso un dato erroneo");
  }

}