import 'dart:io';
void main()
{
  Bank_Account obj =Bank_Account();
  obj.getAccountDetails();
  obj.displayAccountDetails();
}

class Bank_Account{
  int? Account_No;
  String? User_Name;
  String? Email_Account_Type;
  int? Account_Balance;

  void getAccountDetails(){
    Account_No = int.parse(stdin.readLineSync()!);
    User_Name = stdin.readLineSync()!;
    Email_Account_Type = stdin.readLineSync()!;
    Account_Balance = int.parse(stdin.readLineSync()!);
  }
  void displayAccountDetails(){
    print("account number is $Account_No");
    print("user name is $User_Name");
    print("email account type $Email_Account_Type");
    print("account balance is $Account_Balance");
     }
}

//output
// 2
// dfgdf
// dfg
// 200
// account number is 2
// user name is dfgdf
// email account type dfg
// account balance is 200