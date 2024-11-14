void main(){
  String mensaje = "HOLA MUNDO";

  //VARIABLE COMO NULA SE USA ->null

  ///
  ///String mensajeNulo = null;  // no nos deja por que esta con error 
  ///por el fuertemente tipado de dart 
  ///
  ///para declarar una variable nula 
  ///
  ///se declara con el ? despues del tipo de dato  asi:  tipo_dato - ? - nombre_variable 
  ///
  String? mensajeNulo = null;   // así se declara una variable en null

  print(mensajeNulo);

  String? apellido = "Torres";
  print(apellido);
  final splitString = apellido.split("");
  print(splitString);

  // para quitar el error se dee colorar el null aware ?.   como esta ahora en la variable apellido?.
  

}