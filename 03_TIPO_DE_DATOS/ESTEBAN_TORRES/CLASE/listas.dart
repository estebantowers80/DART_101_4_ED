void main(){
  ///lista simple
  ///Palabra reservada -> List (clase)
  ///Especificar que datos contiene la lista 
  ///List< String >
  ///List< double >
  ///list< List <String> >
  List< int > lista_enteros = [1,2,3,4,5,6,7];  //lista vacia []
  print('lista de enteros: ' + lista_enteros.toString() );

  // dynamic
  List< dynamic > listaDinamica = [1, 1.2, "Test", false];
  print ('lista dinamica:  ' + listaDinamica.toString() );


  //dynamic value = 10;   -> no es una buena  practica

  //COMO SE UTILIZAN LAS LISTAS 
  lista_enteros.add(9);
  print('agregamos un 9 al final:'+ lista_enteros.toString());
  print('tamaño o largo de la lista con length:  ' + lista_enteros.length.toString() );

  //validamos si esta vacia
  if (lista_enteros.isEmpty)
  {

  }else
  {
    print("lista no esta vacia");
  }
/// las listas empiezan en la posicion 0  asi por ejemplo en la siguiente lista 
/// elemento  a, b, c, r, 6
/// posición  0  1  2  3  4

  lista_enteros[0] = 0;   //cambiar valor en la lista en la primera posicion que es 0
  print(lista_enteros);
  print(lista_enteros.elementAt(4));  
  print(lista_enteros.elementAt(0));

  // se puede tomar solo poniendo con [] también asi 
  print(lista_enteros[1]);
  
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