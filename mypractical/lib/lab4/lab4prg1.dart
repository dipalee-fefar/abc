import 'dart:io';
void main()
{
    print("enter first number to check.");
    int num1= int.parse(stdin.readLineSync()!);

    print("enter second number to check.");
    int num2= int.parse(stdin.readLineSync()!);

    for(int i=num1;i<=num2;i++) {
      if (i % 2 == 0 && i % 3 != 0) {
        print("your number is divisible by 2 and not divisible by 3 $i");
      }
      else{
        print("your number is divisible by any other number.");
      }
    }
}

//output
//enter first number to check
//4
//your number is divisible by 2 and not divisible by 3