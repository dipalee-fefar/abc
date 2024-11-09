import 'dart:io';
void main()
{
    print("enter n");
    int n = int.parse(stdin.readLineSync()!);
    print("fibbonacci series is");
    int a = 0;
    int b = 1;
    print("$a\n$b");

void fibbo() {
  int sum=0;


  for (int i=0;i<=n-2;i++){
    sum=a+b;
    print(sum);

    a = b;
    b = sum;
  }
}

fibbo();
}

//output
// enter n
// 5
// fibbonacci series is
// 0
// 1
// 1
// 2
// 3
// 5