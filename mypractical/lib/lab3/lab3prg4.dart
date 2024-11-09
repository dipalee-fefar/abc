import 'dart:io';
void main()
{
  print("percentage of five subject.");
  print("enter marks of subect 1: ");
  int mark1= int.parse(stdin.readLineSync()!);
  print("enter marks of subect 2: ");
  int mark2= int.parse(stdin.readLineSync()!);
  print("enter marks of subect 3: ");
  int mark3= int.parse(stdin.readLineSync()!);
  print("enter marks of subect 4: ");
  int mark4= int.parse(stdin.readLineSync()!);
  print("enter marks of subect 5: ");
  int mark5= int.parse(stdin.readLineSync()!);

  print("total marks of all subject.\n");
  int total= (mark1+mark2+mark3+mark4+mark5);

  print ("percentage is\n");
  double per= (total/5);

  if (per < 35 ) {
    print("you are fail.");
  }
  else if (per>35 && per<45){
    print("pass class.");
  }
  else if (per>45 && per<60){
    print("second class.");
  }
  else if (per >60 && per < 70){
    print("first class");
  }
  else{
    print("you are distinct class.");
  }
}

//output
// percentage of five subject.
// enter marks of subect 1:
// 80
// enter marks of subect 2:
// 70
// enter marks of subect 3:
// 60
// enter marks of subect 4:
// 80
// enter marks of subect 5:
// 90
// total marks of all subject.
//
// percentage is
//
// you are distinct class.