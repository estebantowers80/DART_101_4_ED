void main(){
  double resultado = suma(numero1: 2, 
                          numero2: 2, 
                          numero5: 2, 
                          numero4: 2, 
                          numero3: null,
                          numero6: 2);

  print("suma:  $resultado");
}

/*
double suma2(
  double numero1, 
  double numero2, 
  double? numero3)
{
  if (numero3 != null){
    return numero1 + numero2 + numero3;
  }
  return numero1 + numero2;
}*/

/// PARAMETROS POR NOMBRE
/// (param1, param2, param3)  -> posicionales
/// ({param1, param2, param3}) -> por nombre
/// 


double suma({
  required double numero1, 
  required double numero2, 
  double? numero3,
  required double numero4,
  required double numero5,
  double numero6  = 0   //le ponemos valor por defecto
  })
{
  if (numero3 == null){
    numero3 = 0;
  }
  return numero1 + numero2 + numero3 + numero4 + numero5 + numero6;
}
