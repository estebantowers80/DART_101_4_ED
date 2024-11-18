void main(){
  print("funcion flecha de suma: ${suma2(4,5)}");
}

//funcion suma

double suma(double valor1 , double valor2) {
  return valor1 + valor2;
}

/// FUNCION FLECHA 
/// en una sola linea  ->  funcion LAMBDA
/// Se declara   con   =>
/// 
double suma2(double valor1, double valor2) => valor1 + valor2;