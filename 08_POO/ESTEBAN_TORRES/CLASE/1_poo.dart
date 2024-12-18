/*
POO
class -> definir o crear clases
 */

void main() {
  final pepito = Usuario(
      apellido: "PEREZ",
      nombre: "PEPITO",
      contrasena: "Clave123.",
      ciudad: "Cuenca");

  final richard =
      Usuario(nombre: 'RICHARD', apellido: 'SANCHEZ', contrasena: 'SN');

  //accedemos al nombre
  print(pepito.nombre);

  //getter
  print(pepito.nombreApellido);

  //podemos iniciar sesión
  pepito.iniciarSesion(email: "pepito@joto-mail.com");
  print(pepito.nombre);

  //setter
  richard.actualizarNombre = "Richi";
  print(richard.nombre);

  //uso del otro constructor
  final userVacio = Usuario.vacio();
  print("uso de constructor vacio:  $userVacio  nombre: ${userVacio.nombre}");


  /// Qué puedo hacer con estos objetos
  /// Esto es nada escalable
  // final Map<String, dynamic> pepito2 = {
  //   "nombre": "Pepito",
  //   "apellido": "Apellido",
  //   "contraseña": "1234",
  // };
  // print(pepito2["nombre"]);
  print ("\nse tiene una forma mas estructurada");
  print (pepito.nombre);
  print (pepito.apellido);
  print (pepito.ciudad);

  //metodo
  pepito.iniciarSesion(email: "correo");

  //seters
  print("setter:  ${pepito.nombreApellido}");
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
  String? ciudad;

  //Constructor -> construye nuestra clase
  Usuario({
    required this.nombre,
    required this.apellido,
    required this.contrasena,
    this.ciudad = "",
  });

  //otro constructor vacio
  Usuario.vacio({
    this.nombre = "",
    this.apellido = "",
    this.contrasena ="",
    this.ciudad = "",
  });
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
    this.nombre = value;
  }
}
