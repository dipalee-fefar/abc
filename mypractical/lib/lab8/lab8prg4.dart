import 'dart:io';

void main()
{
  List<int> num1 =[];
  List<int> num2 =[];
  List<int> num3 =[];

  print("enter element in first list");
  for(int i = 0; i<5 ; i++)
  {
    int a = int.parse(stdin.readLineSync()!);
    num1.add(a);
  }

  print("enter element in second list");
  for(int i = 0; i<5 ; i++)
  {
    int b = int.parse(stdin.readLineSync()!);
    num2.add(b);
  }
  for(int i=0;i<num1.length;i++){
    for(int j=0;j<num2.length;j++){
      if(num1[i]==num2[j]){
        num3.add(num1[i]);
      }
    }
  }
  print("common element in both list");
  print(num3);
}

//output
// enter element in first list
// 1
// 2
// 3
// 4
// 5
// enter element in second list
// 4
// 5
// 6
// 7
// 8
// common element in both list
// [4, 5]