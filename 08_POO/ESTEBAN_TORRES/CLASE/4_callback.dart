///clase de callback
void main(){
  /// callback con funciones por nombre 
  diaDeLaSemana(dia: "Martes" , callbackNombre: funcionAuxiliar );

  /// callback con funciones anónimas - aquellas que no tienen un nombre
  /// () {}  ->  función anónima 
  
  diaDeLaSemana(dia: "domingo", 
    callbackNombre: (){
      print("ejecutar cualquier cosa");
    });

//parametrós -> enviar valores

//parametrós -> retornar valores
}

///día de la semana ->"Lunes" -> ejecuta algo -> al momento de llamar el método

void diaDeLaSemana({
  required String dia,
  // callback ->parametro de tipo función
  // onTap -> acciones mediante callbacks
  // onPress -> acciones mediante callbacks
  // callback
  required Function callbackNombre,
  })  {

    print("El dia de la semana es: $dia");
    callbackNombre();  // llamado al callback funcion que se va a ejecutar 

}

void funcionAuxiliar(){
  print("este es un callback");
}

// callback parametros 