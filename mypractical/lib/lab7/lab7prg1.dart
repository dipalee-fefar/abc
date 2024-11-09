import 'dart:io';
void main()
{
  Candidate obj =Candidate();
    obj.getCandidateDetails();
    obj.displayCandidateDetails();
}

class Candidate{
  int? Candidate_Id;
  String? Candidate_Name;
  int? Candidate_Age;
  int? Candidate_Height;
  int? Candidate_Weight;

  void getCandidateDetails(){
    Candidate_Id = int.parse(stdin.readLineSync()!);
    Candidate_Name = stdin.readLineSync()!;
    Candidate_Age = int.parse(stdin.readLineSync()!);
    Candidate_Height = int.parse(stdin.readLineSync()!);
    Candidate_Weight = int.parse(stdin.readLineSync()!);

  }
void displayCandidateDetails(){
  print("candidate id is $Candidate_Id");
  print("candidate name is $Candidate_Name");
  print("candidate age is $Candidate_Age");
  print("candidate height is $Candidate_Height");
  print("candidate weight is $Candidate_Weight");
}
}

//output
// 18
// dipalee
// 20
// 5
// 50
// candidate id is 18
// candidate name is dipalee
// candidate age is 20
// candidate height is 5
// candidate weight is 50