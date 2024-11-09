import 'dart:io';
void main()
{
  print ("simple calculator");

  print("enter first number");
  int num1= int.parse(stdin.readLineSync()!);

  print("enter second number");
  int num2= int.parse(stdin.readLineSync()!);

  print("enter operator.");
  String c = stdin.readLineSync()!;

  if (c=="+"){
    print(num1+num2);
  }
  else if (c=="-"){
    print(num1-num2);
  }
  else if (c=="*"){
    print(num1*num2);
  }
  else if (c=="/"){
    print(num1/num2);
  }
  else{
    print("enter valid number");
  }
}

//output
// simple calculator
// enter first number
// 2
// enter second number
// 2
// enter operator.
// +
// 4