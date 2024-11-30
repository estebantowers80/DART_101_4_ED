Future<void> main() async {
  print("inicia script");
  //saludar();
  //saludar1();
  final saludo = await saludarDevuelveString();
  print("imprimo la variale saludo que toma de saludarDevuelveString:   $saludo");
  print("finaliza script");
}


/// vamos a ver Como se utiliza async y await
///     async -> palabra reservada
///     await -> palabra reservada
/// se utilizan en Funciones
/// 
/// como convertir una funcion normal a una función tipo future

void saludar(){
  print("hola mundo");
}

/// la función anterior a tipo future se delcara con 
/// Future<void>  como future 
/// () -- {}    esto es asincrono 
Future<void> saludar1() async{
  /// ESPERAR
  //await Future(()=> print("future en el await"));   //esto ya no se usa 
  print("inicia el saludo");
  print("espera un segundo");
  await Future.delayed(Duration(microseconds: 100));
  print("hola mundo Future de saludar1");
}

Future<String> saludarDevuelveString() async{
  /// ESPERAR
  //await Future(()=> print("future en el await"));   //esto ya no se usa 
  print("inicia el saludo");
  print("espera un segundo");
  await Future.delayed(Duration(seconds: 1));
  return "hola mundo Future devuelve string";
}