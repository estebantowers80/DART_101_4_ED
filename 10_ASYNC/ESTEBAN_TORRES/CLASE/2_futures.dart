void main(){
//futures -> future

  final future = Future(() => print("future"));   // esto es un callback

  final future2 = Future.delayed(Duration(seconds: 2),()=> print("espero 2 segundos"));

  final future3 = Future.delayed(Duration(seconds: 1),()=> "fin del future");

  final future4 = Future.delayed(
    Duration(seconds: 1),
    ()=> {
      "id":1,
      "nombre":"Esteban",
    });

  print(future3);
  //primera opcion
  // then
  // catchError
  //whenComplete

  // then         -> funciona como try
  // cathcError   -> funciona como catch
  // whenComplete -> funciona como finally
  
  future4
    .then((value) => {print(value)})          // then         -> funciona como try
    .catchError(() => print("ERROR"))       // cathcError   -> funciona como catch
    .whenComplete(()=> print("Finaliza FUTURE4"));  // whenComplete -> funciona como finally
  /// de lo anterior 3 problemas
  ///   1. dificil de explicar -> sintaxis poco legible
  ///   2. problema de lectura ->scripts grandes
  ///   3. yo no tengo los valores accesibles 
  

  print("finaliza el script");

}

// 1. INICIA EL SCRIPT
// 2. Future
// 3. Finaliza el script

// DART
// SCRIPT -------------------------------------> FIN SCRIPT
// Future
// SCRIPT ---------|---------------|-------------> FIN SCRIPT
// Future          |-------------->|       