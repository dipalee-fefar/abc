import 'dart:io';
void main()
{
  int i, sum=0;
  print("enter any number to check perfect or not.");
  int num = int.parse(stdin.readLineSync()!);

  for(i=1;i<=num/2;i++){
    if(num%i==0) {
      sum = sum + i;
    }
  }
    if(sum==num){
    print("your number is perfect.");
  }
  else{
    print("your number is not perfect.");
  }
}