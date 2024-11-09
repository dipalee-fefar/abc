import 'dart:io';
void main(){
  print("enter number");
  int a = int.parse(stdin.readLineSync()!);

  List<double> d = List.filled(0,0.0,growable:true);
  for(int i=1;i<a;i++){
    print("enter num");
    double b=double.parse(stdin.readLineSync()!);
    d.add(b);
  }
  d.sort();
  print(d);
}