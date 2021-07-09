import 'dart:math';

class Rectangle {
  int width;
  int height;
  Point origin;

  // instead of overloading a function/constructor like in java
  // we use optional (dont have required keyword) named parameters (using {})
  // and we add default values (using = after the parameter) since values cant be null
  Rectangle({this.origin = const Point(0, 0), this.width = 0, this.height = 0});

  @override
  String toString() =>
      'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
}

main() {
  print(Rectangle(origin: const Point(10, 20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10, 10)));
  print(Rectangle(width: 200));
  print(Rectangle());
}
