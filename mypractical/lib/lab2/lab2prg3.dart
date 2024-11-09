import 'dart:io';
void main()
{
  print("enter the mark of subject 1.");
  int sub1 = int.parse(stdin.readLineSync()!);
  print("enter the mark of subject 2");
  int sub2 = int.parse(stdin.readLineSync()!);
  print("enter the mark of subject 3");
  int sub3 = int.parse(stdin.readLineSync()!);
  print("enter the mark of subject 4");
  int sub4 = int.parse(stdin.readLineSync()!);
  print("enter the mark of subject 5");
  int sub5 = int.parse(stdin.readLineSync()!);

  int total = sub1+sub2+sub3+sub4+sub5;
  print("total of all 5 subject is $total");

  double percentage = total/5;
  print("percentage is $percentage");
}

// output
//enter the mark of subject 1.
//50
//enter the mark of subject 2
//60
//enter the mark of subject 3
//70
//enter the mark of subject 4
//80
//enter the mark of subject 5
//90
//total of all 5 subject is 350
//percentage is 70.0