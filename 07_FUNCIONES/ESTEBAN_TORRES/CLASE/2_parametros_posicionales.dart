void main(){
  final valorSuma1 =  suma(2 , 3.4);
  print("Suma: $valorSuma1");

  final valorSuma2 =  suma2(2 , 3.4, null);
  print("Suma2: $valorSuma1");

}

// ARGUMENTOS DE LA FUNCION
// argumentos por posicion -> deben respetar la posicion
// argumentos por nombre ->todo es referente al nombre

/// como se declaran
/// - tipo de dato 
/// -nombre aa ser el espacio de memeoria que reserva el parametro y guarda  
/// el datos especificado

 

double suma (double numero1, double numero2){
  return numero1 + numero2;
}

double suma2 (double numero1, double numero2, double? numero3){
  if (numero3 != null){
    return numero1 + numero2 + numero3;
  }
  return numero1 + numero2;
}