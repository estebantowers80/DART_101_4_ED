//funcion principal
void main(){
  holaMundo();
  final resultado =  suma(34,2.2);
  print("Suma: $resultado");
  print("otra forma de llamar  con \${nombre_fun}  Suma: ${suma(4,3)}");

  //tuplas 
  final valorTupla = funcionTupla();
  print("valor 1: ${valorTupla.$3}" );
  
  //otra forma de llamar a las tuplas
  final (valor1, valor2, valor3) =funcionTupla();
  print('imprimo valor1: $valor1');

}

//  FUNCIONES 
/// para reutilizar código
/// nos permite crear metodos y controlar eventos
/// toda función puede o no retornar un valor 
/// y también puede o no paramtros
/// 
/// ESTRUCTURA DE LA FUNCION 
/// - Tipo de dato de retorno -> void por defecto
/// - nombre -> que hace la función  cumplir con la nomenclatura camelCase
/// - argumentos  entre parentesis ()
/// - cuerpo de la función {}
/// 
void holaMundo(){
  //peraciones 
  print("hola");

  final resultado =  suma(34,2.2);
  print(resultado);
}

//funciones tipo privado 
// anteponer _ antes del nombre 
void _holaMundoPrivado(){
  print("hola privado");

}

// funcion que sume dos valores
double suma (double a, double b){
  return a + b;
}


(double,double,String) funcionTupla(){
  return (1.0 ,2 , 'texto' );

}