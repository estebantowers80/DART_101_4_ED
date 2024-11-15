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
  print(miPrimerMap.values);

  print(miPrimerMap.containsKey("pepito"));   //para ver si tiene la clave pepito en este caso da error 

 //las claves no se pueden duplicar si pongo otra clave da error 
 // para modificar el vlor de clave5 se hace lo siguiente

 miPrimerMap["clave5"]= "cambio valor";
 print(miPrimerMap["clave5"]);

 //si no existe la clave no hace nada 
 miPrimerMap.remove("clave6");

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
    "images": ["img1", "img2", "img3"],   //tiene como parametro una lista
    "colors": {                           // tiene como parametro un mapa
      "iphone6": "rojo",
      "iphone11": "azul",
    },
  };


  print("imprime mapa producto: " + producto.toString());
  print("por id:" + producto["id"].toString());
  print("por nombre:" + producto["nombre"].toString());


  // para manajear imagenes en flutter podemos usar lo siguiente:
  // url -> NetworkImage -> tiempo de carga
  // base64 -> MemoryImage -> Se muestra más rápido
  // File -> AssetImage, FileImage -> archivo en tu dispositivo
  // Fechas
  // DateTime -  "2024-12-10"
}