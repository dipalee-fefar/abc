import 'dart:io';
void main()
{
  print("enter number to reverse.");
  int num = int.parse(stdin.readLineSync()!);

  int rem=0;
  int rev=0;

  while (num!=0){
   rem=num%10;
   rev=rev*10+rem;
   num=num~/10;
  }
  print(rev);
}