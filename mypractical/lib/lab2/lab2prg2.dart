import 'dart:io';
void main()
{
  print("enter the temperature in fahrenheint");
  double fahrenheit=double.parse(stdin.readLineSync()!);

  double celsius = (fahrenheit - 32) * 5 / 9;
  print("celsius is $celsius");
}

//output
//enter the temperature in fahrenheint
//98
//celsius is 36.66666666666664