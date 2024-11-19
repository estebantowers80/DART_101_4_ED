/*
## Ejercicio para practicar la lógica de programación y funciones
1. Escribir una función que reciba un número entero positivo y devuelva su factorial.
``` 
factorial: n! 
ejemplo: 5! = 5 x 4 x 3 x 2 x 1 = 120
```
*/

import 'dart:io';

void main(){  
  final numero = ingresar_numero(Mensaje: "Ingrese un numero para obtener el factorial:");
  final valor = factorial(numero);
  print("factorial de $numero es $valor");

}

/// funcion que lee un numero entero desde consola
int ingresar_numero( 
                        { required String Mensaje})
{
  int banderaValorOk=0;
  int valorEntero = 0;
  String valor = "";
  do
  {
    print(Mensaje);
    valor = stdin.readLineSync() ?? '-1'; 
    valorEntero = int.tryParse(valor) ?? -1;
    if(valorEntero != -1)  //si es error pedimos ingresar de nuevo 
    {
      banderaValorOk = 1;
    }else{
      print("ERROR; $valor no es un valor doble permitido");
    }       
  }while (banderaValorOk == 0 );

  return valorEntero;
}

//funcion que realiza el factorial de un número
int factorial(int numero){
  List<int> factorial = _obtenerListaEnteros(numero);
  int resultado = 1;
  for (var i = 1 ; i < numero; i++) {
    resultado = resultado * factorial[i];
  }
  return resultado;
}

///funcion que devuelve una lista de una numeración secuencial de un número ingresado 
///
///Tipo privada
List<int> _obtenerListaEnteros(int numero)
{
  List<int> resultado =[];
  for (var i = 1; i <= numero; i++) {
    resultado.add(i);
  }
  return resultado;
}