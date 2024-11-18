void main(){
 //break y continue 
 ///trabajan en bucles  en los siguientes
 /// for 
 /// while
 /// do-while
 /// 
 
 //continue
 for (var i = 0; i < 10; i++) {
   
   if( i == 5) {
    continue;     // esto va a evitar que se imprima el 5
   }
   print("el valor es $i");
 }

 //brak
 for (var i = 0; i < 10; i++) {
   
   if( i == 5) {
    break;     // esto va a evitar que se imprima el 5
   }
   print("el valor es $i");
 }

}