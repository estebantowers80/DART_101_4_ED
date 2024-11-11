//Mapa
//clave : valor

void main(){
  Map<String,String>  miPrimerMap = {};            //mapa con clave string y valor string 
  //
  miPrimerMap = {
    "clave"  : "valor",
    "clave1" : "valor1",
    "clave2" : "valor2",
    "clave3" : "valor3",
    "clave4" : "valor4",
    "clave5" : "valor5"
  };

  print(miPrimerMap);
  // para imprimir solo uno 
  print(miPrimerMap["clave2"]);

  //mapas tienen metodos 
  print(miPrimerMap.length); 
  print(miPrimerMap.keys);

  // Como crear un mapa con valores de diferentes tipos
  // id -> int
  // nombre -> String
  // codigoBarras -> String
  // precio -> double
  // descripción -> String
  // imagen -> String
  // isAvailable -> bool
  // images -> List<String>
  // colors -> Map<String, dynamic>

 Map<String, dynamic> producto = {
    "id": 1,
    "nombre": "Celular",
    "codigo_barras": "1234567890",
    "precio": 1099.99,
    "decripción": "Celular de alta gama",
    "imagen": "https://test.com/img",
    "is_available": true,
    "images": ["img1", "img2", "img3"],
    "colors": {
      "iphone6": "rojo",
      "iphone11": "azul",
    },
  };


  print(producto);



  // imagenes
  // url -> NetworkImage -> tiempo de carga
  // base64 -> MemoryImage -> Se muestra más rápido
  // File -> AssetImage, FileImage -> archivo en tu dispositivo
  // Fechas
  // DateTime -  "2024-12-10"
}