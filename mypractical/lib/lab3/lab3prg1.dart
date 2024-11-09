import 'dart:io';
void main()
{
    print("enter any number:");
    int num = int.parse(stdin.readLineSync()!);

    if(num>0){
        print("positive number");
        }
    else if(num==0){
        print("entered number is zero");
        }
    else{
        print("your number is negative");
        }
}

// output
//enter any number
// 9
// positive number