void main(){
  //suma
  final suma = 1 + 3;
  print('Suma 1 + 3 :  $suma'); // Suma: 10 + 3 = 13

  //suma con variables
  final variable1 = 10;
  final variable2 = 2.2;
  final suma2 = variable1 + variable2;

  print('suma: $variable1 + $variable2 = $suma2');

  final resta = variable1 - variable2;
  print('resta: $variable1 - $variable2 = $resta');
  // con el $ puedo incluso llamar una función y se concatena en el string  de forma rápida
  //  print('Suma: $a + $b = $suma'); // Suma: 10 + 3 = 13

  final a = 10;
  final b = 2;
  final multiplicacion = a * b;  
  print('multiplicación de : $a + $b = $multiplicacion');

  final division = a / b;  //siempre sera doble la division de vuelve siempre dobles 
  print("division $a / $b =  $division   -  esta variable siempre sera doble");


  final c = 3;
  final division_entero = a~/c;
  print("division parte entera $a ~/ $c =  $division_entero   -  esta variable siempre sera int");
  //la ~  ASCII: ALT + 126

  
  final division_residuo = a % c;
  print("residuo o módulo de la división  $a % $c =  $division_residuo   -  esta variable siempre sera int");


  //----------------------------------
  //incrementos y decrementos 
  print("*****  INCREMENTOS Y DECREMENTOS    *******");

  print("INCREMENTO POS FIJO");
  int valor = 3;
  print(valor++);
  print(valor);

  print("INCREMENTO PREFIJO");
  valor = 3;
  print(++valor);
  print(valor);
  
  print("INCREMENTAR UN VALOR FIJO COMO 3 ");
  valor = 3;
  print(valor +=3);
  print(valor +=3);

  print("DECREMENTO POS FIJO");
  valor = 10;
  print(valor--);
  print(valor);

  print("DECREMENTO PREFIJO");
  valor = 10;
  print(--valor);
  print(valor);
  
  print("DECREMENTAR  UN VALOR FIJO COMO 3 ");
  valor = 10;
  print(valor -=3);
  print(valor -=3);
   print(valor -=3);


}