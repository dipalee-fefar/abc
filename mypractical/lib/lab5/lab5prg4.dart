import 'dart:io';

void main() {
  print("Enter a number to check if it is prime:");
  int num = int.parse(stdin.readLineSync()!);

  int prime() {
    int count = 0;
    for (int i = 1; i <= num; i++) {
      if (num % i == 0) {
        count++;
      }
    }
    if (count == 2) {
      return 1;
    } else {
      return 0;
    }
  }

  int result = prime();
  if (result == 1) {
    print("$num is a prime number.");
  } else {
    print("$num is not a prime number.");
  }
}

//output
// Enter a number to check if it is prime:
// 5
// 5 is a prime number.