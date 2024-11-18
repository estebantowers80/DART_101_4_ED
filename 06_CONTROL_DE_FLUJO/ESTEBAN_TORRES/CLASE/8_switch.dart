import 'dart:io';

void main(){
  print("Ingrese la edad como entero:");

  //el ingreso de datos y se guarda en una variable
  final datoEdad = stdin.readLineSync() ?? '0';  // no olvidar lo del null safety poner con ??

  final edad = int.tryParse(datoEdad) ?? -1;

  switch (edad) {
    case > 63:
      print("adulto mayor");
      break;
    case > 28 && <=63:
      print("adulto");
      break;
    case > 12 && <=28:
      print("joven");
      break;      
    case > 1 && <=12:
      print("niño");
      break;  
    default:
      print("dato erroneo");
      break;
  }

  // si ingreo "lunes" "inicio de semana"
  // si ingreso "martes" "miercoles" "jueves" "dias laborables"
  // si ingreso "viernes" "inicio de fin de semana "
  // si ingreso "sábado" "domingo" "fin de semana"

  print("ingrese el dia de la semana");
  final dia = stdin.readLineSync();
  if (dia == null) {
    print("El día no puede ser nulo");
    return;
  }

  switch (dia) {
    case "Lunes":
      print("Inicio de semana");
      break;
    case "Martes":
    case "Miercoles":
    case "Jueves":
      print("Dias de la semana");
      break;
    case "Viernes":
      print("Inicio del fin de semana");
    case "Sabado":
    case "Domingo":
      print("Fin de semana");
      break;
    default:
      print("No aplica");
  }


}