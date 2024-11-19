import 'dart:ffi';

void main(){
  final perro = Animal(nombre: 'BOBY',edad: 2);
  final gato  = Animal(nombre: 'LUNA', edad: 5);
  print("\nMetodos");
  perro.caminar();
  gato.comer();

}

///CLASES  ANIMALITOS 
class Animal {
  String nombre;
  int edad;

  Animal({
    required this.nombre,
    required this.edad
  });

  //METODOS
  void comer(){
    print("$nombre esta comiendo");
  }
  void caminar(){
    print("$nombre esta caminando");
  }
}