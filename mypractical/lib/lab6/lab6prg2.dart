import 'dart:io';
void main(){

  List<String> d =List.filled(5," ",growable:true);

  d[0]="dipu";
  d[1]="dipu";
  d[2]="dipu";
  d[3]="dipu";
  d[4]="dipu";
  d.add("dipalee");
  print(d);
}

//output
//[dipu, dipu, dipu, dipu, dipu, dipalee]