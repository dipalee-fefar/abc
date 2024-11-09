import 'dart:io';
void main()
{
  int a;
  void firstFun(){
    print("hello dipalee");
  }
  void secondFunc(int a ,Function abc){
    a++;
    print(a);
    abc();
  }
  secondFunc(10, firstFun);
}

// //output
// 11
// hello dipalee