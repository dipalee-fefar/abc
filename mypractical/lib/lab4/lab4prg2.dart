import 'dart:io';
void main()
{
  print("enter any number to find factor.");
  int num= int.parse(stdin.readLineSync()!);

  for(int i=1 ; i<=num ; i++){
    if (num%i==0){
      print("factors of this numbers $i");
    }

  }
}