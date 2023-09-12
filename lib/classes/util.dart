import 'dart:convert';
import 'dart:io';

class Util{

  static String readLineString(String texto){
    print(texto);
    return stdin.readLineSync(encoding: utf8).toString();
  }

  static double readLineDouble(String texto){
    print(texto);
    return double.tryParse(stdin.readLineSync(encoding: utf8).toString()) ?? 0.0;
  }

 static bool readLineBoolean(String texto, String checked){
    print(texto);
    return stdin.readLineSync(encoding: utf8).toString().toUpperCase() == checked.toUpperCase() ? true : false ;
  }


}