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

  print('texto null : $mensajeNulo');

  //como funciona?

  String? apellido = "Torres";
  print(apellido);

  //si quiero trabajar con este valor
  //apellido = null;
  final splitString = apellido.split("");
  print(splitString);


  print('\n');
  // para quitar el error se dee colorar el null aware ?.   como esta ahora en la variable apellido?.
  //null awere  < ?. >
  apellido = null;
  print(apellido?.split(""));  //ahí deja trabajar con el valor nulo

  //podemos poner una validacion para validar que no sea null

  if(apellido != null){
    print(apellido);
  }else
  {
    print('el valor es null');
  }

  /*
//podemos agregar una lista de nulos
List<String>? test1 = null;   //este esta ok 
List<String?> test = null;    // este da error
*/
  print("");

  final apellidoControlado = apellido?.split("")  ?? "no hay datos";
  print("variable controlada con ??:  $apellidoControlado");


  // se debe validar así
  final apellidoControlado1 = apellido?.split("")  ?? [];
  print("variable controlada con ??:  $apellidoControlado1");

  ///
  ///
  
  Map<String, Map<String,String>?> mapaEjemplo = {
    "clave1" :{
      "clave1 1": "valor1 1",
      "clave1 2": "valor1 2",
    },
    "clave2": null,

  };

  final valor11 = mapaEjemplo["clave1"]?["clave1 1"];
  print(valor11);

  final valor11seguro = mapaEjemplo["clave1"]!["clave1 1"];
  print(valor11seguro);

  final valor22 = mapaEjemplo["clave2"]!["clave2 2"];
  print(valor22); // error null check operatov use on a null value
}