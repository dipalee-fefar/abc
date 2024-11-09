import 'dart:io';
void main()
{
  print("enter num1");
  int num1 = int.parse(stdin.readLineSync()!);
  print("enter num2");
  int num2 = int.parse(stdin.readLineSync()!);
  int sum= num1+num2;
  print("sum of both number is $sum");
}

//output:=-

//enter num1
//2
//enter num2
//3
//sum of both number is 5