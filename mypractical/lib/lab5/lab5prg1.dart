import 'dart:io';
void main(){
  double intrest(int p,int r, int n){
    return (p*r*n/100);
  }
  double n = intrest(20,30,40);
  print(n);
}

//output
//240.0