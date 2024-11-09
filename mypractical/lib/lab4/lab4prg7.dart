import 'dart:io';
void main(){
  int r, sum=0, temp;
  print("enter any number to check palindrom or not.");
  int n = int.parse(stdin.readLineSync()!);
  temp=n;

  while(n>0) {
    r=n%10;
    sum=(sum*10)+r;
    n=n~/10;
  }
  if(temp==sum){
    print("palindrom");
  }
  else{
    print("not palindrom");
  }
}