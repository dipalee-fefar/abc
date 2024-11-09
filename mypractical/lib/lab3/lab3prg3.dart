import 'dart:io';
void main()
{
  print("largest number from given three number.");

  print("enter first number");
  int a= int.parse(stdin.readLineSync()!);

  print("enter second number");
  int b= int.parse(stdin.readLineSync()!);

  print("enter third  number");
  int c= int.parse(stdin.readLineSync()!);

  if (a>b){
    if(a>c){
      print("$a is greater.");
    }
    else{
      print("$b is greater.");
    }
  }
  else{
    if(b>c){
      print("$b is greater.");
    }
    else{
      print("$c is greater.");
    }
  }
}

//output
// largest number from given three number.
// enter first number
// 10
// enter second number
// 9
// enter third  number
// 8
// 10 is greater.
