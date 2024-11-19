/*
POO
class -> definir o crear clases
 */
import 'dart:async';
import 'dart:convert';

void main() {
  final pepito = Usuario(
      apellido: "PEREZ",
      nombre: "PEPITO",
      contrasena: "Clave123.",
      ciudad: "Cuenca"); 
  
  final richard = Usuario(nombre: 'RICHARD', apellido: 'SANCHEZ', contrasena: 'SN');

  //accedemos al nombre
  print(pepito.nombre);

  //getter
  print(pepito.nombreApellido);

  //podemos iniciar sesión
  pepito.iniciarSesion(email: "pepito@joto-mail.com");
  print(pepito.nombre);

  //setter
  richard.actualizarNombre="Richi";
  print(richard.nombre);
}

/// Clase usuario
///
/// Atributos
///   Nombre
///   Apellido
///   Contraseña
///   Método
///   Iniciar Sesión
///
/// ClassName -> PascalCase
class Usuario {
  //Atributos
  String nombre;
  String apellido;
  String contrasena;

  //Constructor -> construye nuestra clase
  Usuario(
      {required this.nombre, 
      required this.apellido, 
      required this.contrasena,
      String ciudad =""});
 
     

  //Métodos
  void iniciarSesion({required String email}) {
    print("Inicia sesión con el email: $email");
  }

  //Getters - Setters  - Opcional
  //Getters -> acceder a los datos dentro de la clase - get

  String get nombreApellido => "$nombre $apellido";

  //Setters -> editar los valores de la clase   -  set
  //solo actualiza algo dentro de la clase
  set actualizarNombre(String value) {
    nombre = value;
  }
}


