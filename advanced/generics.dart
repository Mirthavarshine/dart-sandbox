// Generic class
// A generic class is a class that can work with any data type. It allows you to create a class that can be
//generic is used to create reusable code that can work with different data types without sacrificing type safety. It allows you to define a class or a function that can operate on various types while still maintaining the benefits of strong typing. By using generics, you can write code that is more flexible and adaptable to different scenarios, reducing the need for code duplication and improving maintainability.
// In Dart, you can define a generic class by using angle brackets (<>) to specify a type parameter. This type parameter can then be used within the class to represent the type of data it will work with. For example, you can create a generic class called Box that can hold any type of content:

class Box<T> {
  T content;
  Box(this.content);
}
void main() {
  // Create a Box for integers
  Box<int> intBox = Box(123);
  print(intBox.content); 

  // Create a Box for strings
  Box<String> strBox = Box("Hello");
  print(strBox.content); 

  // Create a Box for lists of doubles
  Box<List<double>> listBox = Box([1.1, 2.2, 3.3]);
  print(listBox.content); 
}