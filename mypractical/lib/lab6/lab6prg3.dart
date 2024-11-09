import 'dart:io';
void main(){
  int i;
  double sum=0.0;
  List<double> d= List.filled(5,0.0,growable:true);
  d[0]=0.0;
  d[1]=0.1;
  d[2]=0.2;
  d[3]=0.3;
  d[4]=0.4;
  d.add(0.5);

  for(i=0;i<d.length;i++){
    sum=sum+d[i];
  }

  print(d);
  print(sum.toStringAsFixed(2));
}

//output
//[0.0, 0.1, 0.2, 0.3, 0.4, 0.5]
// 1.50