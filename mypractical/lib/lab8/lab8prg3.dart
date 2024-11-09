import 'dart:io';

void main()
{
  List<int> num =[];

  for(int i = 0; i<5 ; i++)
  {
    print("enter element in list");
    int el = int.parse(stdin.readLineSync()!);
    num.add(el);
  }
  print("Normal list \n $num");
  num.sort();

  print("sorted list \n $num");

}

// //output
// enter element in list
// 2
// enter element in list
// 3
// enter element in list
// 6
// enter element in list
// 4
// enter element in list
// 5
// Normal list
// [2, 3, 6, 4, 5]
// sorted list
// [2, 3, 4, 5, 6]