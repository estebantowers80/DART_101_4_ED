import 'dart:async';


void main(){
  final ejecutar = 3;
  //
  if( ejecutar==1){
    print("ejemplo para generar una excepcion");
    suma();
  }
  if( ejecutar==2){
    print("ejemplo de funcion controlada");
    funcionControlada();
  }
  if (ejecutar == 3){
    print("ejemplo de funcion controlada por tipo");
    funcionControladaExcepcionesDivisionCero();
    excepcionControladoFormatException();
    excepcionControladoRangeError();
    excepcionControladaTimeoutException();
    excepcionControladaStateError();
    excepcionControladaCombinada();
    parametrosExcepciones();
    pruebaConRethow();
  }
  print("programa finalizado");
}

void suma(){
  print("la suma de 2 + 2 = ${2 + 2}");


  //throw -> para crear execpiones 
  //throw Exception("ha ocurrido un error");

  //format exception cuando da un error de formato
  // casi no se usa a no ser si queremos controlar algo 
  // el throw  me generar o forzamos a generar un error
  throw FormatException("el error es de la suma");
  
}

void funcionControlada(){
  try{
    //print("division para cero: ${10 / 0 }");
    suma();
  } catch(error){
    print("ERROR capturado: $error");

  }finally{

  }
}

void funcionControladaExcepcionesDivisionCero(){
  try{
    print("division para cero: ${10 ~/ 0 }");  //error division para cero
    //suma();
  } on FormatException catch(err){
    print("Exception");
    print(err.message);
  } on IntegerDivisionByZeroException {
    print("Errop: division por cero");
  }
  catch(error){
    print("ERROR: $error");

  }finally{

  }
}

void excepcionControladoFormatException() {
  try {
    int number = int.parse('abc'); // Error de formato
  } on FormatException {
    print('Error: Formato no válido.');
  }
}

void excepcionControladoRangeError() {
  try {
    List<int> numbers = [1, 2, 3];
    print(numbers[5]); // Índice fuera de rango
  } on RangeError {
    print('Error: Índice fuera de rango.');
  }
}

//import 'dart:async';  se debe poner al inicio
void excepcionControladaTimeoutException() {
  try {
    throw TimeoutException('Tiempo de espera agotado');
  } on TimeoutException {
    print('Error: Tiempo de espera excedido.');
  }
}

void excepcionControladaStateError() {
  try {
    List<int> numbers = [];
    print(numbers.first); // Error: Lista vacía
  } on StateError {
    print('Error: Operación no permitida en el estado actual. error de estado');
  }
}

void excepcionControladaCombinada() {
  try {
    int number = int.parse('abc');
  } on FormatException {
    print('Error: Formato no válido. Bloque combinado con catch y on');
  } on RangeError {
    print('Error: Índice fuera de rango.Bloque combinado con catch y on');
  }  catch (e) {
    print('Error genérico: $e Bloque combinado con catch y on');
  }
}

void parametrosExcepciones(){
  try {
    suma();
  } catch (e , stackTrace) {
    print("Error: parametros que se puede mostrar e.hashCode: ${e.hashCode}     e.runtimeType: ${e.runtimeType} ");
    print("para saber la linea del error con stackTrace :");
    print("------------------------------------------");
    print(stackTrace);
  }
}

void pruebaConRethow(){
  try {
    suma();
 
  } catch (e , stackTrace) {
    rethrow;
    print("Error: parametros que se puede mostrar e.hashCode: ${e.hashCode}     e.runtimeType: ${e.runtimeType} ");
    print("para saber la linea del error con stackTrace :");
    print("------------------------------------------");
    print(stackTrace);
  }
}