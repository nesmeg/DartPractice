import 'dart:math';

//FACTORY METHOD 1
/* Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
} */

//FACTORY MEHTOD 2
abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

/* SHAPE CLASS FOR NO FACTORIES AND FACTORY 1 
  abstract class Shape {
  num get area;
} */

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class CircleMock implements Circle {
  //The area instance variable of CircleMock implements the area getter of Circle.
  num area = 0;
  //radius must be initaiated as it cant be null and no constructor is defined
  num radius = 0;
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

main() {
  try {
    print(Shape('circle').area);
    print(Shape('square').area);
    print(Shape('triangle').area);
  } catch (err) {
    print(err);
  }
}

/* MAIN FACTORY 1
main() {
  try {
    final circle = shapeFactory('circle');
    print(circle.area);
    final square = shapeFactory('square');
    print(square.area);
    final triangle = shapeFactory('triangle');
    print(triangle.area);
  } catch (err) {
    print(err);
  }
}
*/
/* MAIN NO FACTORIES
main() {
  final circle = Circle(2);
  final square = Square(2);
  print(circle.area);
  print(square.area);
}
*/