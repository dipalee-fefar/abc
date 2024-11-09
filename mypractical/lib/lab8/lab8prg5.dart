import 'dart:io';
void main() {

  List<String> cities = ["Delhi", "Mumbai", "Bangalore", "Hyderabad", "Ahmedabad"];

  print("Original list: $cities");

  int index = cities.indexOf("Ahmedabad");
  if (index != -1) {
    cities[index] = "Surat";
  }

  print("Modified list: $cities");
}

//output
// Original list: [Delhi, Mumbai, Bangalore, Hyderabad, Ahmedabad]
// Modified list: [Delhi, Mumbai, Bangalore, Hyderabad, Surat]