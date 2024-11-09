import 'dart:io';
void main()
{
  print("enter string to reverse.");
  String str =stdin.readLineSync()!;

  String temp="";
  for(int i=str.length-1;i>=0;i--){
    temp=temp+str[i];
  }
  print("reverse of given string is $temp");
}

//output
// enter sting to reverse
//147
// reverse of given string is 741