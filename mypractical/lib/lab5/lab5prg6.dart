import 'dart:io';
void main() {
  print("Enter the number of elements in the array:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];
  print("Enter the elements:");

  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  int evenCount = 0;
  int oddCount = 0;
  for (int number in numbers) {
    if (number % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }
  print("Number of even numbers: $evenCount");
  print("Number of odd numbers: $oddCount");
}
