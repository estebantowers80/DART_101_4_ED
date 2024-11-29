import "dart:io";

void main() {
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  //decremento
  for (var i = 10; i > 0; i--) {
    print("valor : $i");
  }

  /// Ejercicio
  /// ingresar un valor por consola e imprimir la tabla de multiplicar de ese número hasta el 10
  /// Ejemplo:
  /// Ingrese un número: 5
  /// 5 * 1 = 5
  /// 5 * 2 = 10
  /// 5 * 3 = 15
  /// 5 * 4 = 20
  /// 5 * 5 = 25 ... etc

  print("INGRESE UN NÚMERO PARA MULTIPLICAR hasta el 10:");
  final datoingresado = stdin.readLineSync() ?? '0';
  final numero = double.tryParse(datoingresado ?? ""); // ?? 0;

  if (numero != null) {
    print("\n tabla de multiplicar\n");
    for (var i = 0; i < 11; i++) {
      double producto = i * numero;
      print(" $numero * $i = $producto");
    }
  } else {
    print("el valor: $datoingresado no es un número");
  }
}
