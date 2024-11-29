
void main() {
  //clase mascota es una clase  puedo crear objetos
  final mascota1 = Mascotas(nombre: "Mascota", edad: 5);
  Mascotas mascota2 = Mascotas.vacio();   //instancia un objeto vacio 


  //clase hijo perro y puedo crearme objetos
  final paco = Perro(nombre: "PACO", edad: 7, tipoDeComida: "BLANDA");
  print("imprimo datos de clase paco  clase de tipo perro");
  print("nombre: ${paco.nombre}");
  print("edad: ${paco.edad}");
  print("tipo de comidad: ${paco.tipoDeComida}");
  // tiene la funcion maullar 
  paco.maullar();

  print("sorbrecarga");
  paco.comer();     //de la calse padre 
  String mensaje = paco.comer();
  print(mensaje);
  
 
}
/* no es una buena practica 
class Perro {
  //atributos
  String nombre;
  int edad;

  Perro({
    required this.nombre,
    required this.edad,
  });

  void ladrar(){
    print("Guauff");
  }
}

class Gato {
  //atributos
  String nombre;
  int edad;

  Gato({
    required this.nombre,
    required this.edad,
  });

  void maullar(){
    print("miauu");
  }
}*/

///Clase Padre
class Mascotas {
  //atributos
  String nombre;
  int edad;

  Mascotas({
    required this.nombre,
    required this.edad,
  });

  Mascotas.vacio({
    this.nombre = "",
    this.edad = 0,
  });

  void ladrar() {
    print("Guauff");
  }

  void maullar() {
    print("Miauuu");
  }

  void comer(){
    print("${this.nombre} esta comiendo");
  }
}

///herencia -> extends Mascotas
class Perro extends Mascotas {

  //atributos
  String tipoDeComida;

  //constructor
  Perro({
    required super.nombre,     // super se referencia a clase padre 
    required super.edad,
    required this.tipoDeComida,  // this referencia a la clase actual hija
  });

  void ladrar(){
    print("Guau Guau");
  }

  //procedimiento sobre escrito desde el padre para que haga algo especifico
  //override  permite sobrescribir un mentodo 
  @override
  String comer(){
    super.comer();  //llamamos al procedimiento del padre 
    return "el perro ${super.nombre} esta comiendo";

  }
}

class Gato extends Mascotas {

  //atributos
  String numeroBarbas;

  //constructor
  Gato({
    required super.nombre,     // super se referencia a clase padre 
    required super.edad,
    required this.numeroBarbas,  // this referencia a la clase actual hija
  });

  void maullar(){
    print("Miaaauuuu");
  }
}
