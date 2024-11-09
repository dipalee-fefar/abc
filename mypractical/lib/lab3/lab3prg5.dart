import 'dart:io';
void main()
{
  print("largest number from given three number using conditional operator");

  print("enter first number");
  int a= int.parse(stdin.readLineSync()!);

  print("enter second number");
  int b= int.parse(stdin.readLineSync()!);

  print("enter third  number");
  int c= int.parse(stdin.readLineSync()!);
  int large = (a>b)?(a>c)?a:c:(b>c)?b:c ;
  print ("large is $large");
}