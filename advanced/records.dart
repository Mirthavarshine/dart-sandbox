// records are a way to create simple data classes in Dart
// they are immutable and provide a concise syntax for defining classes that primarily hold data
// records are useful when you want to create a class that is primarily used to store data and
// you don't need to define any additional behavior or methods for that class
// records are defined using the 'record' keyword followed by the class name and a list of
// fields enclosed in parentheses
// records automatically generate a constructor, equality operator, and hash code based on the fields defined in
// the record
class Person {
  final String name;
  final int age;
  
  Person({required this.name, required this.age});
  
  Person copyWith({String? name, int? age}) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
void main() {
  // Creating an instance of the Person record
  Person person1 = Person(name: "Alice", age: 30);
  
  // Accessing fields
  print("Name: ${person1.name}, Age: ${person1.age}");
  
  // Records are immutable, so you cannot modify the fields after creation
  // person1.name = "Bob"; // This will cause an error
  
  // You can create a new instance with modified values using the copyWith method
  Person person2 = person1.copyWith(name: "Bob");
  
  print("Name: ${person2.name}, Age: ${person2.age}");
}
