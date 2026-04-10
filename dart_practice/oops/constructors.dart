// contructor 
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

// Named constructor
class Car {
  String make;
  String model;
  Car(this.make, this.model);
  Car.sedan(this.make) : model = 'Sedan';
  void displayInfo() {
    print('Make: $make, Model: $model');
  }
}
// Factory constructor -- concept of fatory constructor is to control the instance creation and return the same instance if it already exists (singleton pattern)
class Logger {
  static final Logger _instance = Logger._internal();
  factory Logger() {
    return _instance;
  }
  Logger._internal();
  void log(String message) {
    print('Log: $message');
  }
}
// Redirecting constructor
class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);
  Rectangle.square(double size) : this(size, size);
  double area() {
    return width * height;
  }
}
// Const constructor
class Point {
  final double x;
  final double y;
  const Point(this.x, this.y);
}
// Main function to demonstrate constructors
void main() {
  // Using default constructor
  Person person1 = Person("Alice", 30);
  person1.displayInfo();
  // Using named constructor
  Car car1 = Car.sedan("Toyota");
  car1.displayInfo();
  // Using factory constructor
  Logger logger1 = Logger();
  Logger logger2 = Logger();
  logger1.log("This is a log message.");
  print(logger1 == logger2); // true, both are the same instance

  // Using redirecting constructor

  Rectangle rect1 = Rectangle(4, 5);
  Rectangle rect2 = Rectangle.square(4);
  print('Area of rect1: ${rect1.area()}');
  print('Area of rect2: ${rect2.area()}');
  // Using const constructor
  const Point point1 = Point(2, 3);
  const Point point2 = Point(2, 3);
  print(point1 == point2); // true, both are the same instance due to const
}

      