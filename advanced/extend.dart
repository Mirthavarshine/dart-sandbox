//extend is used to create a new class that inherits properties and behaviors from an existing class. The new class, called the subclass or child class, can add its own properties and methods or override the existing ones from the parent class. This promotes code reusability and allows for a hierarchical relationship between classes, making it easier to manage and organize code in object-oriented programming.
// In Dart, you can use the 'extends' keyword to create a subclass. The subclass
// can access the properties and methods of the parent class using the 'super' keyword. This allows you to build upon the functionality of the parent class while still maintaining a clear and organized structure in your code.
class Animal {
  void eat() {
    print("Animal is eating");
  }
}
class Dog extends
  Animal {
    void bark() {
      print("Dog is barking");
    }
  }
void main() {
  Dog dog = Dog();
  dog.eat(); // Inherited method from Animal class
  dog.bark(); // Method from Dog class
}