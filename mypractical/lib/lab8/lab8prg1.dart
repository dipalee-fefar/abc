import 'dart:io';
void main()
{
  Shape s =Shape();
  s.colorShape();
  Circle c = Circle();
  c.colorShape();
}
class Shape{
  void colorShape()
  {
    print("hello dipu");
  }
}
class Circle extends Shape{
  void colorShape(){
    print("you are brave");
  }
}

// //output
// hello dipu
// you are brave