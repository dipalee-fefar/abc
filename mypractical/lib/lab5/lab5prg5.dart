import 'dart:io';

void main() {
  // Initialize variables
  int l, b, h, r;

  // Input for length
  print("Enter length:");
  l = int.parse(stdin.readLineSync()!);

  // Input for width
  print("Enter width:");
  b = int.parse(stdin.readLineSync()!);

  // Input for height
  print("Enter height:");
  h = int.parse(stdin.readLineSync()!);

  // Input for radius
  print("Enter radius:");
  r = int.parse(stdin.readLineSync()!);

  // Initialize area and PI
  double area = 0.0;
  const double PI = 3.14;

  // Display options for area calculation
  print("Press 1 to find the area of a circle");
  print("Press 2 to find the area of a rectangle");
  print("Press 3 to find the area of a triangle");

  // Input for choice
  int choice = int.parse(stdin.readLineSync()!);
  // Switch-case to calculate and display the area
    switch (choice) {
      case 1:
        area = PI * r * r;
        print("Area of the circle is: $area");
        break;

      case 2:
        area = 1.0 * l * b;
        print("Area of the rectangle is: $area");
        break;

      case 3:
        area = 0.5 * l * h;
        print("Area of the triangle is: $area");
        break;
      case 4:
        break;
      default:
        print("Invalid input.");
        break;
    }
  }