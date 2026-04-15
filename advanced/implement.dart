// implement is used to create a new class that implements an interface. An interface is a contract that defines a set of methods that a class must implement. When a class implements an interface, it must provide concrete implementations for all the methods defined in the interface. This allows for a clear separation of concerns and promotes code reusability, as different classes can implement the same interface in their own way while still adhering to the same contract.
// In Dart, you can use the 'implements' keyword to create a class that implements an
//interface. The class must then provide implementations for all the methods defined in the interface. This allows you to create flexible and modular code, as you can define interfaces that represent common behaviors and then have multiple classes implement those interfaces in their own unique ways.
// Example of using implements in Dart
abstract class Shape {
  double area();
}
class Circle implements Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() => 3.14 * radius * radius;
}
class Rectangle implements Shape {
  double width, height;
  Rectangle(this.width, this.height);
  @override
  double area() => width * height;
}
void main() {
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);
  print("Circle Area: ${circle.area()}");
  print("Rectangle Area: ${rectangle.area()}");
} 