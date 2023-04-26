enum ShapeType { square, rectangle, circle }

abstract class Shape {
  factory Shape(ShapeType shapetype) {
    switch (shapetype) {
      case ShapeType.rectangle:
        return Rectange();
      case ShapeType.square:
        return Square();
      case ShapeType.circle:
        return Square();
    }
  }

  void draw() {}
}

class Rectange implements Shape {
  @override
  void draw() {
    print("this is a reactange");
  }
}

class Square implements Shape {
  @override
  void draw() {
    print("this is a Square");
  }
}

class Circle implements Shape {
  @override
  void draw() {
    print("this is a Circle");
  }
}

void main() {
  Shape(ShapeType.square).draw();
  Shape(ShapeType.rectangle).draw();
  Shape(ShapeType.circle).draw();
}
