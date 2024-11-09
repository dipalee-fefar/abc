import 'dart:io';
void main()
{
  print("enter any number to find factorial.");
  int num = int.parse(stdin.readLineSync()!);

  double sum=1;

  for(int i=1; i<=num;i++){
    sum=sum*i;
  }
  print(sum);
}

//output
//enter any number to find factorial
//5
//120.0