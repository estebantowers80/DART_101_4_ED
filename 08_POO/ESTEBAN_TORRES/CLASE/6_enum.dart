/// ENUMERACION
/// Estructura de datos mediante tipos -> pra que sea más fácil usar 

void main() {
  //dias de la semana 
  final lunes = "lunes";
  final martes = "martes";

  /// si quier el valor de lunes
  print(DiaDeLaSemana.Lunes);
  print(DiaDeLaSemanaCompuesto.miercoles);
  print(DiaDeLaSemanaCompuesto.miercoles.dia);
  print(DiaDeLaSemanaCompuestoNumero.viernes.dia);

  ///
  ///con callback
  
  final lista =[
    DiaDeLaSemanaCompuesto.lunes,
    DiaDeLaSemanaCompuesto.martes,
    DiaDeLaSemanaCompuesto.miercoles,
    DiaDeLaSemanaCompuesto.jueves,
    DiaDeLaSemanaCompuesto.viernes
    ];
  
  final dia = lista.firstWhere((element){
    return element.dia =="lunes";
  }, 
  orElse: () => DiaDeLaSemanaCompuesto.lunes,
  
  );
  print(dia.dia);

}

//tipo de datos
// usamos PascalCase para nombrar 
enum DiaDeLaSemana{
  Lunes,
  Martes,
  Miercoles,
  Jueves,
  Viernes,
  Sabado,
  Domingo
}

// Enum Compuesto
enum DiaDeLaSemanaCompuesto{
  // camelCase nomenclatura
  lunes("Lunes"),
  martes("martes"),
  miercoles("Miércoles"),
  jueves("Jueves"),
  viernes("Viernes");

  final String dia;
  const DiaDeLaSemanaCompuesto(this.dia);
}

enum DiaDeLaSemanaCompuestoNumero{
  // camelCase nomenclatura
  lunes(1),
  martes(2),
  miercoles(3),
  jueves(4),
  viernes(5);

  final int dia;
  const DiaDeLaSemanaCompuestoNumero(this.dia);
}