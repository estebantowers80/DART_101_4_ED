void main(){

  print("TAREA DE OPERADORES ARITMETICOS");
  print("-------------------------------");

  int a = 20;
  int b = 4;
  // Suma
  int suma = a + b;
  print('Suma: $a + $b = $suma'); // Suma: 10 + 3 = 13

  // Resta
  int resta = a - b;
  print('Resta: $a - $b = $resta'); // Resta: 10 - 3 = 7

  // Multiplicación
  int multiplicacion = a * b;
  print('Multiplicación: $a * $b = $multiplicacion'); // Multiplicación: 10 * 3 = 30

  // División
  double division = a / b;
  print('División: $a / $b = $division'); // División: 10 / 3 = 3.3333333333333335

  // División entera
  int divisionEntera = a ~/ b;
  print('División entera: $a ~/ $b = $divisionEntera'); // División entera: 10 ~/ 3 = 3

  // Módulo (resto de la división)
  int modulo = a % b;
  print('Módulo: $a % $b = $modulo'); // Módulo: 10 % 3 = 1

  // Negación (cambiar el signo)
  int negacion = -a;
  print('Negación: -$a = $negacion'); // Negación: -10 = -10

  // Incremento
  int incremento = a;
  incremento++;
  print('Incremento: $a++ = $incremento'); // Incremento: 10++ = 11

  // Decremento
  int decremento = a;
  decremento--;
  print('Decremento: $a-- = $decremento'); // Decremento: 10-- = 9

}