import 'dart:io';
void main()
{
  print("enter any number to check prime or not.");
  int num = int.parse(stdin.readLineSync()!);

  int count=0;

  for(int i=2;i<num;i++){
    if(num%i==0){
      count=count+1;
    }
  }
  if(count==0){
    print("your number is prime.");
  }
  else{
    print("your number is not prime.");
  }
}

//output
//enter any number to check prime or not.
// 9
// your number is not prime