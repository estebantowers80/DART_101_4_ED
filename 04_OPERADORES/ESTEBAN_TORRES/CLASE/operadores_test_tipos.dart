/// Dart es fuetemente tipado , se debe manejar los tipos
/// Teste de tipos -> retornoa un bool en caso de que se cupla la condición de tipo como true
/// 

void main(){
  final a = 10; 
  print('\nPreguntamos si a es un entero a=10');
  print(a is int );

  dynamic variable = 20.2;
  print('\nPreguntamos variable=20.2  es doble o es String');
  print(variable is double);
  print(variable is String);

  print('\nPreguntamos variable=20.2  no es un string con is! string');
  print(variable is! String);

  /// podemos preguntar por el tipo de dato 
  /// con runtimeType 
  /// 
  print('\nPreguntamos el tipo de dato de variable=20.2  con .runtimeType');
  print(variable.runtimeType);

  /// Cast 
  /// 
  final variableX = variable as double;
  if(1==2){
   final variabley = variable as String; //esto va a dar error
  }
  print('');
  print(variableX.toString().runtimeType);

}