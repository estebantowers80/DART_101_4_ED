void main(){
  ///lista simple
  ///Palabra reservada -> List (clase)
  ///Especificar que datos contiene la lista 
  ///List< String >
  ///List< double >
  ///list< List <String> >
  List< int > lista_enteros = [1,2,3,4,5,6,7];  //lista vacia []
  print( lista_enteros );

  // dynamic
  List< dynamic > listaDinamica = [1, 1.2, "Test", false];

  //dynamic value = 10;   -> no es una buena  practica

  //COMO SE UTILIZAN LAS LISTAS 
  lista_enteros.add(9);
  print(lista_enteros);
  print(lista_enteros.length );
  if (lista_enteros.isEmpty)
  {

  }else
  {
    print("lista no esta vacia");
  }
  lista_enteros[0] = 0;   //cambiar valor en la lista
  print(lista_enteros);
  print(lista_enteros.elementAt(4));

  //map
  print("map");

  //map es para barrer una lista realizando una acción
  //map es una función  devuelve la lista modificada 
  final lista2 = lista_enteros.map((value){
      return value +1;
    }
  );
  print(lista2);

  //forEach  se va barriendo valor por valor de la lista 
  lista_enteros.forEach((value){
    print(value);
  });
}