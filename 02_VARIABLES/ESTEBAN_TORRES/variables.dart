///Variables en Dart

String variable_global = "variable global";

void main(){
  //var 
  var nombre = "Esteban Torres";
  var anio_nacimiento = 1985;

  //late
  //inicializarlo mas tarde;
  late String edad;  
  edad = "43";

  ///Const y Final
  ///
  ///Const -> se asigna su espacio de memoria al momento de compilar
  ///
  ///final -> se asigna su espacio de memoria al ejecutar
  ///
  
  const velocidadSonido = "630";
  final diaSemana = "Lunes";

  print(nombre);
  print(edad);
  print(variable_global);


}