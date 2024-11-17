/* CONDICIONES LOGICAS 

AND 
OR
NOT

*/
void main(){
  int a = 10;
  int b = 5;

  ///AND (&&)  - BOOL
  ///TRUE && TRUE = TRUE
  ///true && false = false
  ///false && false = false
  ///
  print('\nOperador lógico  AND &&  \na==10 && b==5 ');
  print(a==10 && b==5);

  ///OR || 
  ///ALT + 124  ->|
  ///debe cumplir una de las dos para ser verdadero
  
  print('\nOperador lógico  OR ||  \na==10 || b==6 ');
  print(a==10 || b==6);

  /// NOT (!)
  /// !VAR
  /// !TRUE = FALSE
  /// !FALSE = TRUE
  print('\nOperador lógico  NOT !  \ !true ');
  print(!true);
  
  
}