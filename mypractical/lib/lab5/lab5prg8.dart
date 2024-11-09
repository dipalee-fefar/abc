import 'dart:io';
void main(){
  print("enter n you want to limit.");
  int n = int.parse(stdin.readLineSync()!);

  List<dynamic> d =List.filled(n," ",growable:true);
}