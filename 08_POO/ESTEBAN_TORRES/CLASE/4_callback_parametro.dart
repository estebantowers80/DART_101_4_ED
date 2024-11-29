

void main() {
  calcular(3, 5, (resultado) {
    print("El resultado es: $resultado");
  });
}

void calcular(int a, int b, Function(int) callback) {
  int resultado = a + b;
  callback(resultado); // Llama al callback pasando el resultado
}