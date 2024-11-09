import 'dart:io';
void main()
{
  print ("simple calculator");

  print("enter first number");
  int num1= int.parse(stdin.readLineSync()!);

  print("enter second number");
  int num2= int.parse(stdin.readLineSync()!);

  print("enter operator.");
  print("choose 1 for addition \n 2 for subtraction \n 3 for division \n 4 for multiplication \n");
  int choise = int.parse(stdin.readLineSync()!);

  switch(choise)
  {
    case 1 : print(num1+num2);
             break;

    case 2 : print(num1-num2);
              break;

    case 3 : print(num1*num2);
             break;

    case 4 : print(num1/num2);
             break;
    default : print("enter valid input.");
    break;
  }
}

// simple calculator
// enter first number
// 4
// enter second number
// 5
// enter operator.
// choose 1 for addition
// 2 for subtraction
// 3 for division
// 4 for multiplication
//
// 1
// 9