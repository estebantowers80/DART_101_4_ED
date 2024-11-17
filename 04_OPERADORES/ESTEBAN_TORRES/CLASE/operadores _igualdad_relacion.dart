/*
permitir comparar contenido de una variable con otra para 
ver si un valor es igual o distinto a otro 
el resultado siempre sera un BOOL (TRUE O FALSE)
*/

void main(){

  int a = 10;
  int b = 5;
  int c = 10;
  print("a=$a  b=$b   c=$c");
  //igualdad  con dos ==
  bool resultado = true;
  resultado = a==b;
  print("a == b  resultado $resultado " );

  //mayor 
  resultado = a>b;
  print("a > b  resultado $resultado " );
  //menor
  resultado = a<b;
  print("a < b  resultado $resultado " );

  //mayor 
  resultado = a>b;
  print("a > b  resultado $resultado " );
  //menor
  resultado = a<b;
  print("a < b  resultado $resultado " );

  //desiguldad

resultado = a!=b;
  print("a != b  resultado $resultado " );


}