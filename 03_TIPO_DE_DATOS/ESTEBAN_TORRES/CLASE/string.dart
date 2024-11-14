void main(){

  final miPrimerString = "Esteban Torres";

  print(miPrimerString);
  
  const miSegundoString = 'EELA';
  print(miSegundoString);

  //uso de comillas dobles y/o simples
  // It´s -> It is
  String comillasMultiples = "It's";
  print(comillasMultiples);

  //usar un atajo para saltear estos problemas 'It's' -> esto es error
  String comillasMultiples2 = 'It\'s';
  print(comillasMultiples2);

  //string con multiples lineas   se puede usar simples o dobles
  String texto = 
  '''Markdown es un lenguaje de marcado que 
                    permite dar formato a textos sin formato, como agregar vínculos, 
  imágenes y otros elementos. Se puede utilizar para crear texto enriquecido, 
                    como HTML, con un editor de texto sin formato.''';
  print(texto);
}