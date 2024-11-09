import 'dart:io';
void main()
{
  int? r;
  r=int.parse(stdin.readLineSync()!);
  Circle c =Circle(r);
  print(c.area(r));
  print(c.perimeter(r));
}

class Circle{
  int? r;
     Circle(this.r);

     double area (r){
        return 3.14*r*r;
      }
      double perimeter (r){
          return 2*3.14*r;
      }
  }