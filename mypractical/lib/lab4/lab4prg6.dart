import 'dart:io';
void main()
{
  int sum1=0;
  int sum2=0;

  while(num!=0) {
    int num = int.parse(stdin.readLineSync()!);

    if (num > 0 && num % 2 == 0) {
      sum1 = sum1 + num;
    }
     if (num < 0 && num % 2 != 0){
      sum2=sum2+num;
    }
     if(num==0){
       break;
     }
  }
  print("even $sum1");
  print("odd $sum2");
}