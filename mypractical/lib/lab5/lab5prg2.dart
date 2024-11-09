import 'dart:io';
void main(){
  print("enter a");
  int a = int.parse(stdin.readLineSync()!);
  print ("enter b");
  int b = int.parse(stdin.readLineSync()!);

  int  mx(int a, int b){
    if(a>b){
      return a;
    }
    else{
      return b;
    }
  }
 print("your maximum number is");
 print(mx(a, b));
}

//output
//enter a
//2
//enter b
//6
//your maximum number is
//6