import 'dart:io';
void main() {
  List<dynamic> d =List.filled(2," ",growable:true);
  d[0]="abc";
  d[1]=20;
  d.add("dipu");
  print(d);
}