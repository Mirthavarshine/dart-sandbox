// Patterns are resuable code templates that can be used to solve common problems in software design. They provide a way to structure code and make it more maintainable, scalable, and flexible.
// Design patterns are categorized into three main types: Creational, Structural, and Behavioral patterns. Each type addresses different aspects of software design and provides solutions to specific problems.
// 1. Creational Patterns: These patterns deal with object creation mechanisms, trying to create objects in a manner suitable to the situation. Examples include Singleton, Factory Method, Abstract Factory, Builder
// 2. Structural Patterns: These patterns deal with object composition, creating relationships between objects to form larger structures. Examples include Adapter, Composite, Decorator, Facade, Flyweight, Proxy
// 3. Behavioral Patterns: These patterns deal with object interaction and responsibility. They define how objects communicate with each other. Examples include Observer, Strategy, Command, Iterator, Mediator, Memento, State, Template Method, Visitor

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}
Person person1 = Person("Alice", 30);
void main() {
  person1.displayInfo();
}
  