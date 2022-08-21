import 'dart:math';
 class Convers{
   var result;

   celsiustofahrenheit(double num){
     result = (num*9/5)+32;
     //print("$num Celsius = $result Fahrenheit");

     return result;
   }
   celsiustokelvin(double num){
     result = num+ 273.15;
     return result;
   }
    fahrenheittocelsius(double num){
     result = (num-32)*5/9;
     return result;
   }
   fahrenheittokelvin(double num){
     result = (num - 32)*5/9+273.15;
     return result;
   }
   kelvintocelsius(double num){
     result = num - 273.15 ;
     return result;
   }
   kelvintofahrenheit(double num){
     result = (num - 273.15) * 9/5 + 32 ;
     return result;
   }

 }