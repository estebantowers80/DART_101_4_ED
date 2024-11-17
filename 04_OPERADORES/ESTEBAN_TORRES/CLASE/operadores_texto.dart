void main(){

  //suma con variables
  final variable1 = 10;
  final variable2 = 2.2;
  final suma2 = variable1 + variable2;

  print('suma: $variable1 + $variable2 = $suma2');

  //  print('Suma: $a + $b = $suma'); // Suma: 10 + 3 = 13

  final texto1 = "hola";
  final texto2 = "mundo";
  final resultado = "$texto1 $texto2  se unió toda la cadena";
  print("resultado = $resultado");
 // con el $ puedo incluso llamar una función y se concatena en el string  de forma rápida

  final largo = resultado.length;
  print("cuantos caracteres tiene un string con el parametro resultado.length =  $largo");

  //cortar un string 
  String mensaje2 = resultado.substring(1);
  print("ejemplo de substring:  $mensaje2");

  mensaje2 = resultado.substring(2,4);
  print("ejemplo de substring(2,4):  $mensaje2");

  List<String> lista_string = resultado.split("");
  print("split $lista_string ");
  
  //TRIM elimina espacios
  mensaje2 = "  eliminar espacios  ";
  print("     $mensaje2     ".trim());

  print("$mensaje2".trimLeft());

}