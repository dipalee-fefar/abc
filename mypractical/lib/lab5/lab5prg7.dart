import 'dart:io';
void main(){

  int sum=0;

  print("Enter the number of elements in the array:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  print("Enter the elements:");

  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);

    if(number%3==0 || number%5==0){
      sum=sum+number;
    }
  }
  print("sum is $sum");
}