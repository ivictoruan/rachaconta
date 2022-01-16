class CheckWidgetController {
 bool check(double totalPrice, int numPeople) {
   
  //  print(">>> $email and $password");
   
   if(numPeople>1 && totalPrice>0 ){
     return true;
   } else{
     return false;
   }
 }
}