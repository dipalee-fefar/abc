import 'dart:io';
void main(){

  List<int> l =List.filled(5,0,growable:true);
  l[0]=1;
  l[1]=1;
  l[2]=1;
  l[3]=1;
  l[4]=1;
  l.add(5);
  print(l);

}
//output
//[1, 1, 1, 1, 1, 5]